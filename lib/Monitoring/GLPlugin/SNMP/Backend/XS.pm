package Monitoring::GLPlugin::SNMP::Backend::XS;

use strict;
use warnings;

# SNMP module is loaded by the calling code (establish_snmp_session) before
# this backend is loaded. No need to require/use it here.
# See GLPlugin/SNMP.pm line 1431: if (eval "require SNMP") { ... }

our $VERSION = '1.0.0';

=head1 NAME

Monitoring::GLPlugin::SNMP::Backend::XS - Net::SNMP compatibility adapter for SNMP module

=head1 DESCRIPTION

Thin compatibility layer that allows GLPlugin code to use Net::SNMP API while
internally using SNMP module (Net-SNMP XS bindings) for modern SNMPv3 cipher support.

This adapter provides a session object that behaves like a Net::SNMP session,
allowing drop-in replacement with minimal code changes.

=head1 SUPPORTED FEATURES

=over 4

=item * SNMPv1, SNMPv2c, SNMPv3

=item * Modern ciphers: SHA-224/256/384/512, AES-128/192/256

=item * ePN (Embedded Perl Nagios) safe - per-instance initialization

=item * SNMPv1-aware table operations (uses GETNEXT instead of GETBULK)

=back

=head1 ePN SAFETY

In ePN environments, the same script may be loaded once and executed multiple times
within a single process. This adapter uses per-instance initialization to prevent
state pollution between instances.

=cut

# ============================================================================
# SESSION MANAGEMENT
# ============================================================================

=head2 session(%args)

Create and return SNMP session with Net::SNMP-compatible interface.

Translates Net::SNMP parameter names to SNMP module names:
  -hostname     -> DestHost
  -community    -> Community
  -version      -> Version (1, 2, 3)
  -username     -> SecName
  -authpassword -> AuthPass
  -authprotocol -> AuthProto
  -privpassword -> PrivPass
  -privprotocol -> PrivProto
  -port         -> RemotePort
  -timeout      -> Timeout (converted: seconds * 1_000_000 = microseconds)
  -retries      -> Retries

Returns: ($session, $error) where $session is a wrapper object or undef on failure

Example:
  my ($session, $error) = Monitoring::GLPlugin::SNMP::Backend::XS->session(
      -hostname      => '192.168.1.1',
      -version       => 3,
      -username      => 'monitor',
      -authpassword  => 'authpass123',
      -authprotocol  => 'SHA256',
      -privpassword  => 'privpass456',
      -privprotocol  => 'AES256',
  );

=cut

sub session {
    my ($class, %args) = @_;

    # Initialize SNMP module per-instance for ePN safety
    # This is called each time a session is created, not at module load time
    eval {
        SNMP::init_snmp('GLPlugin');
    };
    # SNMP::init_snmp() may already be initialized; this is not fatal

    # Translate Net::SNMP parameters to SNMP module parameters
    my %snmp_params = _translate_session_params(%args);

    if ($ENV{SNMP_XS_DEBUG}) {
        warn "Backend::XS::session creating SNMP::Session with:\n";
        foreach my $k (sort keys %snmp_params) {
            warn "  $k => " . (defined $snmp_params{$k} ? $snmp_params{$k} : "undef") . "\n";
        }
    }

    # Create session with eval to catch errors
    my $snmp_session;
    eval {
        $snmp_session = SNMP::Session->new(%snmp_params);
    };

    if ($ENV{SNMP_XS_DEBUG} && $snmp_session) {
        warn "Backend::XS::session created\n";
        # Show SNMPv3 context parameters if present
        if (defined $snmp_session->{Context}) {
            warn "  Context (contextName): " . $snmp_session->{Context} . "\n";
        }
        if (defined $snmp_session->{ContextEngineID}) {
            warn "  ContextEngineID: " . $snmp_session->{ContextEngineID} . "\n";
        }
    }

    if ($@) {
        return (undef, "SNMP session creation failed: $@");
    }

    unless (defined $snmp_session) {
        return (undef, "SNMP session is undefined");
    }

    # CRITICAL FIX: SNMP module defaults Context to empty string for SNMPv3
    # Empty context causes "Missing contextName b''" errors on many servers
    # Explicitly set to undef if empty to prevent sending empty context
    if (defined $snmp_session->{Context} && $snmp_session->{Context} eq '') {
        $snmp_session->{Context} = undef;
        if ($ENV{SNMP_XS_DEBUG}) {
            warn "Backend::XS::session: Cleared empty Context to prevent server errors\n";
        }
    }

    # Check for session errors
    if ($snmp_session->{ErrorNum}) {
        return (undef, $snmp_session->{ErrorStr} || "Unknown SNMP error");
    }

    # Create wrapper object that behaves like Net::SNMP session
    my $wrapper = Monitoring::GLPlugin::SNMP::Backend::XS::Session->new(
        snmp_session => $snmp_session,
        version => $args{-version} || 2,
        timeout_seconds => $args{-timeout} || 1,
    );

    return ($wrapper, undef);
}

=head2 _translate_session_params(%args)

Internal: translate Net::SNMP parameter names to SNMP module names.

=cut

sub _translate_session_params {
    my (%args) = @_;

    if ($ENV{SNMP_XS_DEBUG}) {
        warn "_translate_session_params received args:\n";
        foreach my $k (sort keys %args) {
            warn "  $k => " . (defined $args{$k} ? $args{$k} : "undef") . "\n";
        }
    }

    my %snmp_params;

    # Mandatory parameters
    $snmp_params{DestHost} = $args{-hostname} if exists $args{-hostname};

    # Version translation: Net::SNMP uses strings, SNMP uses integers
    if (exists $args{-version}) {
        my $v = $args{-version};
        if ($v eq '1' || $v eq 'snmpv1') {
            $snmp_params{Version} = 1;
        } elsif ($v eq '2' || $v eq '2c' || $v eq 'snmpv2c') {
            $snmp_params{Version} = 2;
        } elsif ($v eq '3' || $v eq 'snmpv3') {
            $snmp_params{Version} = 3;
        } else {
            $snmp_params{Version} = $v;
        }
    }

    # SNMPv2c parameters
    $snmp_params{Community} = $args{-community} if exists $args{-community};

    # SNMPv3 parameters
    if (exists $args{-username}) {
        $snmp_params{SecName} = $args{-username};
        $snmp_params{SecLevel} = 'noAuthNoPriv';  # Will be upgraded below
    }

    # Authentication (both -authkey and -authpassword are used)
    if (exists $args{-authpassword} || exists $args{-authkey}) {
        my $authpass = $args{-authpassword} || $args{-authkey};
        $snmp_params{AuthPass} = $authpass;
        $snmp_params{SecLevel} = 'authNoPriv';
    }

    # Auth protocol: normalize to SNMP module names
    if (exists $args{-authprotocol}) {
        $snmp_params{AuthProto} = _normalize_auth_protocol($args{-authprotocol});
    }

    # Privacy (both -privkey and -privpassword are used)
    if (exists $args{-privpassword} || exists $args{-privkey}) {
        my $privpass = $args{-privpassword} || $args{-privkey};
        $snmp_params{PrivPass} = $privpass;
        $snmp_params{SecLevel} = 'authPriv';  # Full security
    }

    # Privacy protocol: normalize to SNMP module names
    if (exists $args{-privprotocol}) {
        $snmp_params{PrivProto} = _normalize_priv_protocol($args{-privprotocol});
    }

    # Port
    $snmp_params{RemotePort} = $args{-port} if exists $args{-port};

    # Timeout: CRITICAL - Net::SNMP uses seconds, SNMP module uses MICROSECONDS
    # Convert seconds to microseconds (* 1_000_000)
    if (exists $args{-timeout}) {
        $snmp_params{Timeout} = int($args{-timeout} * 1_000_000);
    } else {
        $snmp_params{Timeout} = 1_000_000;  # 1 second default
    }

    # Retries
    $snmp_params{Retries} = $args{-retries} if exists $args{-retries};

    # SNMPv3 Context parameters
    # contextName: The VRF/namespace identifier
    # Only set if defined AND non-empty - empty context causes server errors
    $snmp_params{Context} = $args{-contextname}
        if exists $args{-contextname} && defined $args{-contextname} && $args{-contextname} ne '';

    # contextEngineID: Identifies which SNMP engine owns the context
    # Usually auto-discovered, but can be explicitly set
    $snmp_params{ContextEngineID} = $args{-contextengineid}
        if exists $args{-contextengineid} && defined $args{-contextengineid} && $args{-contextengineid} ne '';

    # Domain (transport)
    if (exists $args{-domain}) {
        # Map Net::SNMP domain names to SNMP module
        my $domain = $args{-domain};
        if ($domain =~ /udp6/i) {
            $snmp_params{DestHost} = 'udp6:' . $snmp_params{DestHost} if $snmp_params{DestHost};
        }
    }

    # Use numeric OIDs for consistent output format
    $snmp_params{UseNumeric} = 1;

    return %snmp_params;
}

=head2 _normalize_auth_protocol($proto)

Normalize authentication protocol name to SNMP module format.
SNMP module uses CamelCase without hyphens: SHA256 not SHA-256

=cut

sub _normalize_auth_protocol {
    my ($proto) = @_;

    return 'MD5' if $proto =~ /^md5$/i;
    return 'SHA' if $proto =~ /^sha1?$/i && $proto !~ /\d{3}/;
    return 'SHA224' if $proto =~ /sha.?224/i;
    return 'SHA256' if $proto =~ /sha.?256/i;
    return 'SHA384' if $proto =~ /sha.?384/i;
    return 'SHA512' if $proto =~ /sha.?512/i;

    # Pass through unknown protocols
    return uc($proto);
}

=head2 _normalize_priv_protocol($proto)

Normalize privacy protocol name to SNMP module format.
SNMP module uses CamelCase without hyphens: AES256 not AES-256

Handles both Blumenthal (AES192/AES256) and Cisco (AES192C/AES256C) variants.
The Cisco variants use a different key localization algorithm and are required
when talking to Cisco devices. Users specify them as aes-192-c or aes-256-c.

=cut

sub _normalize_priv_protocol {
    my ($proto) = @_;

    return 'DES' if $proto =~ /^des$/i;
    return '3DES' if $proto =~ /^3des$/i || $proto =~ /triple/i;
    return 'AES' if $proto =~ /^aes(?:[- ]?128)?$/i && $proto !~ /192|256/;
    # Cisco variants must be checked before the generic ones
    return 'AES192C' if $proto =~ /aes.?192.?c/i;
    return 'AES256C' if $proto =~ /aes.?256.?c/i;
    return 'AES192' if $proto =~ /aes.?192/i;
    return 'AES256' if $proto =~ /aes.?256/i;

    # Pass through unknown protocols
    return uc($proto);
}

# ============================================================================
# SESSION WRAPPER CLASS
# ============================================================================

package Monitoring::GLPlugin::SNMP::Backend::XS::Session;

use strict;
use warnings;

=head1 NAME

Monitoring::GLPlugin::SNMP::Backend::XS::Session - Wrapper that behaves like Net::SNMP session

=head1 DESCRIPTION

This class wraps an SNMP::Session and provides methods compatible with Net::SNMP.
It is returned by Backend::XS->session() and should be used like a Net::SNMP session.

=cut

sub new {
    my ($class, %args) = @_;
    my $self = bless {
        _snmp_session => $args{snmp_session},
        _version => $args{version} || 2,
        _timeout => $args{timeout_seconds} || 1,
        _error => '',
        _max_msg_size => 1472,  # Baseline - not modified by setter (C library handles adaptive sizing)
        _translate_mode => 0,   # OID translation mode (for compatibility)
    }, $class;
    return $self;
}

=head2 version()

Returns the SNMP version (0=v1, 1=v2c, 3=v3) for compatibility with Net::SNMP

=cut

sub version {
    my ($self) = @_;
    my $v = $self->{_version};
    # Return SNMP version: 0=SNMPv1, 1=SNMPv2c, 3=SNMPv3
    return 0 if $v eq '1';
    return 1 if $v eq '2' || $v eq '2c';
    return 3 if $v eq '3';
    # Handle numeric versions
    return 0 if $v == 1;
    return 1 if $v == 2;
    return 3 if $v == 3;
    return $v;
}

=head2 timeout([$seconds])

Get or set session timeout in seconds (Net::SNMP compatible)

NOTE: Unlike max_msg_size, timeout changes ARE applied to the underlying
SNMP::Session because timeout is a legitimate operation parameter that
the C library respects.

=cut

sub timeout {
    my ($self, $timeout) = @_;
    my $old_timeout = $self->{_timeout};

    if (defined $timeout && $timeout != $old_timeout) {
        $self->{_timeout} = $timeout;
        # Also update the underlying session
        if ($self->{_snmp_session}) {
            $self->{_snmp_session}->{Timeout} = int($timeout * 1_000_000);
        }

        warn sprintf "[Backend::XS] timeout: Changed from %d to %d seconds (applied)\n",
            $old_timeout, $timeout if $ENV{SNMP_XS_DEBUG};
    }
    return $old_timeout;
}

=head2 max_msg_size([$size])

Get or set maximum message size (Net::SNMP compatible)

NOTE: With Backend::XS, this is a logging no-op. The Net-SNMP C library
handles adaptive message sizing automatically, so manual tuning is unnecessary
and potentially counterproductive. This method logs what would have changed
for diagnostic purposes but does not apply the change.

=cut

sub max_msg_size {
    my ($self, $size) = @_;
    # No-op setter: C library handles adaptive sizing automatically
    return $self->{_max_msg_size};
}

=head2 error()

Returns the last error message (Net::SNMP compatible)

=cut

sub error {
    my ($self) = @_;
    if ($self->{_snmp_session} && $self->{_snmp_session}->{ErrorStr}) {
        return $self->{_snmp_session}->{ErrorStr};
    }
    return $self->{_error} || '';
}

=head2 var_bind_names()

Returns the OID names from the last operation (Net::SNMP compatible)

=cut

sub var_bind_names {
    my ($self) = @_;
    return @{$self->{_last_oids} || []};
}

=head2 close()

Close the SNMP session

=cut

sub close {
    my ($self) = @_;

    if ($ENV{VERBOSE} || $ENV{SNMP_XS_DEBUG}) {
        warn "[Backend::XS] Session closed\n";
    }

    undef $self->{_snmp_session};
    return 1;
}

=head2 translate([$mode])

Set OID translation mode (Net::SNMP compatible)

NOTE: With Backend::XS, OID format is controlled through VarList processing,
not through a global translation mode. This method logs the mode for
compatibility but doesn't apply it in the traditional Net::SNMP sense.

=cut

sub translate {
    my ($self, $mode) = @_;
    my $old_mode = $self->{_translate_mode} || 0;

    if (defined $mode) {
        $self->{_translate_mode} = $mode;

        if ($ENV{VERBOSE} || $ENV{SNMP_XS_DEBUG}) {
            warn sprintf "[Backend::XS] translate: Mode set to %d (OID format controlled through VarList processing)\n",
                $mode;
        }
    }

    return $old_mode;
}

# ============================================================================
# VARBIND NORMALIZATION
# ============================================================================

=head2 _normalize_varbind($vb)

Internal: Extract and normalize OID key and value from an SNMP::Varbind.

Handles three normalization concerns:
  1. OID key format: Remove leading dot (Net::SNMP returns "1.3.6..." not ".1.3.6...")
  2. Error values: SNMP module returns UPPERCASE (NOSUCHINSTANCE), Net::SNMP uses camelCase
  3. OBJECTID values: SNMP module adds leading dot to OID-type values, Net::SNMP doesn't

Returns: ($oid, $val) - normalized OID string and value

=cut

my %_ERROR_MAP = (
    NOSUCHINSTANCE => 'noSuchInstance',
    NOSUCHOBJECT   => 'noSuchObject',
    ENDOFMIBVIEW   => 'endOfMibView',
);

sub _normalize_varbind {
    my ($self, $vb) = @_;
    my $tag = $vb->[0];
    my $iid = $vb->[1];
    my $val = $vb->[2];
    my $type = $vb->[3];

    # Build OID: tag + iid, strip leading dot via substr (avoids regex engine)
    my $oid;
    if (defined $iid && $iid ne '') {
        $oid = (substr($tag, 0, 1) eq '.') ?
            substr($tag, 1) . '.' . $iid :
            $tag . '.' . $iid;
    } else {
        $oid = (substr($tag, 0, 1) eq '.') ?
            substr($tag, 1) : $tag;
    }

    # Hash lookup instead of 3 sequential string comparisons
    if (defined $val && exists $_ERROR_MAP{$val}) {
        $val = $_ERROR_MAP{$val};
    }

    # Strip leading dot from OBJECTID values via substr (avoids regex engine)
    if (defined $type && $type eq 'OBJECTID' && defined $val
        && substr($val, 0, 1) eq '.') {
        $val = substr($val, 1);
    }

    return ($oid, $val);
}

# ============================================================================
# GET OPERATIONS
# ============================================================================

=head2 get_request(%args)

Perform SNMP GET operation. Returns hashref of OID => value.

Parameters:
  -varbindlist => \@oids    List of OIDs to retrieve

=cut

sub get_request {
    my ($self, %args) = @_;

    # Debug logging
    warn "Backend::XS::Session::get_request called\n" if $ENV{SNMP_XS_DEBUG};

    return undef unless $self->{_snmp_session};

    my @oids = @{ $args{-varbindlist} || [] };
    warn "Backend::XS::Session::get_request OIDs: " . join(", ", @oids) . "\n" if $ENV{SNMP_XS_DEBUG} && @oids;
    return undef unless @oids;

    $self->{_error} = '';
    $self->{_last_oids} = [];

    # Handle per-request context (SNMPv3)
    # NOTE: For SNMPv3, context should be set during session creation, not per-request
    # Modifying context on an established session can cause hangs
    # The plugin passes -contextname to every get_request, but we ignore it
    # since the session was created with the correct context
    if (exists $args{-contextname} && $ENV{SNMP_XS_DEBUG}) {
        warn "Backend::XS: Ignoring per-request context (using session context): $args{-contextname}\n";
    }

    # Create VarList from OID array
    my $vbl = SNMP::VarList->new(map { [$_] } @oids);

    if ($ENV{SNMP_XS_DEBUG}) {
        warn "Backend::XS: Session ref: " . ref($self->{_snmp_session}) . "\n";
        warn "Backend::XS: Session version: " . ($self->{_snmp_session}->{Version} || 'undef') . "\n";
        # Context parameters are SNMPv3-specific - only show for v3 sessions
        if ($self->{_snmp_session}->{Version} && $self->{_snmp_session}->{Version} == 3) {
            if (defined $self->{_snmp_session}->{Context}) {
                warn "Backend::XS:   contextName: " . $self->{_snmp_session}->{Context} . "\n";
            }
            if (defined $self->{_snmp_session}->{ContextEngineID}) {
                warn "Backend::XS:   contextEngineID: " . $self->{_snmp_session}->{ContextEngineID} . "\n";
            }
        }
        warn "Backend::XS: About to call \$session->get() on " . scalar(@$vbl) . " OIDs\n";
    }

    # Perform GET operation (modifies VarList in-place)
    my $result = $self->{_snmp_session}->get($vbl);

    warn "Backend::XS: get() returned, result=" . (defined $result ? "defined" : "undef") . "\n" if $ENV{SNMP_XS_DEBUG};

    if ($self->{_snmp_session}->{ErrorNum}) {
        $self->{_error} = $self->{_snmp_session}->{ErrorStr};
        return undef;
    }

    # Check if VarList is valid
    return undef unless defined $vbl && scalar(@$vbl) > 0;

    # Transform VarList to Net::SNMP-style hash
    my %result;
    my @returned_oids;

    for (my $i = 0; $i < scalar(@$vbl); $i++) {
        my $vb = $vbl->[$i];
        my ($oid, $val) = $self->_normalize_varbind($vb);

        $result{$oid} = $val;
        push @returned_oids, $oid;
    }

    $self->{_last_oids} = \@returned_oids;

    # Debug: show what we're returning
    if ($ENV{SNMP_XS_DEBUG}) {
        require Data::Dumper;
        warn "Backend::XS::Session::get_request returning " . scalar(keys %result) . " entries\n";
        foreach my $k (keys %result) {
            warn "  $k => " . (defined $result{$k} ? $result{$k} : "undef") . "\n";
        }
    }

    return \%result;
}

=head2 get_next_request(%args)

Perform SNMP GETNEXT operation. Returns hashref of OID => value.

=cut

sub get_next_request {
    my ($self, %args) = @_;

    return undef unless $self->{_snmp_session};

    my @oids = @{ $args{-varbindlist} || [] };
    return undef unless @oids;

    $self->{_error} = '';
    $self->{_last_oids} = [];

    my $vbl = SNMP::VarList->new(map { [$_] } @oids);

    my @values = $self->{_snmp_session}->getnext($vbl);

    if ($self->{_snmp_session}->{ErrorNum}) {
        $self->{_error} = $self->{_snmp_session}->{ErrorStr};
        return undef;
    }

    my %result;
    my @returned_oids;

    for (my $i = 0; $i < scalar(@$vbl); $i++) {
        my $vb = $vbl->[$i];
        my ($oid, $val) = $self->_normalize_varbind($vb);

        $result{$oid} = $val;
        push @returned_oids, $oid;
    }

    $self->{_last_oids} = \@returned_oids;
    return \%result;
}

=head2 get_bulk_request(%args)

Perform SNMP GETBULK operation. Returns hashref of OID => value.

NOTE: GETBULK is only supported in SNMPv2c/v3. For SNMPv1, this method
will fall back to repeated GETNEXT operations.

Parameters:
  -nonrepeaters   => $n         OIDs to fetch once (default: 0)
  -maxrepetitions => $n         Repetitions for remaining OIDs (default: 10)
  -varbindlist    => \@oids     List of OIDs

=cut

sub get_bulk_request {
    my ($self, %args) = @_;

    return undef unless $self->{_snmp_session};

    my $nonrepeaters = $args{-nonrepeaters} || 0;
    my $maxrepetitions = $args{-maxrepetitions} || 10;
    my @oids = @{ $args{-varbindlist} || [] };

    return undef unless @oids;

    # Log if maxrepetitions was explicitly set (likely from wrapper tuning method)
    if (($ENV{VERBOSE} || $ENV{SNMP_XS_DEBUG}) && defined $args{-maxrepetitions}) {
        warn sprintf "[Backend::XS] get_bulk_request: Received maxrepetitions=%d (C library may use different adaptive value)\n",
            $args{-maxrepetitions};
    }

    $self->{_error} = '';
    $self->{_last_oids} = [];

    # SNMPv1 doesn't support GETBULK - fall back to GETNEXT
    if ($self->version() == 0) {
        return $self->_bulk_via_getnext(\@oids, $maxrepetitions);
    }

    my $vbl = SNMP::VarList->new(map { [$_] } @oids);

    # Use getbulk method
    my @values = $self->{_snmp_session}->getbulk($nonrepeaters, $maxrepetitions, $vbl);

    if ($self->{_snmp_session}->{ErrorNum}) {
        $self->{_error} = $self->{_snmp_session}->{ErrorStr};
        return undef;
    }

    my %result;
    my @returned_oids;

    for (my $i = 0; $i < scalar(@$vbl); $i++) {
        my $vb = $vbl->[$i];
        my ($oid, $val) = $self->_normalize_varbind($vb);

        $result{$oid} = $val;
        push @returned_oids, $oid;
    }

    $self->{_last_oids} = \@returned_oids;
    return \%result;
}

=head2 _bulk_via_getnext(\@oids, $maxrepetitions)

Internal: Emulate GETBULK using GETNEXT for SNMPv1 devices

=cut

sub _bulk_via_getnext {
    my ($self, $oids, $maxrepetitions) = @_;

    my %result;
    my @returned_oids;

    foreach my $base_oid (@$oids) {
        my $current_oid = $base_oid;
        my $count = 0;
        (my $normalized_base = $base_oid) =~ s/^\.//;

        while ($count < $maxrepetitions) {
            my $vbl = SNMP::VarList->new([$current_oid]);
            $self->{_snmp_session}->getnext($vbl);

            if ($self->{_snmp_session}->{ErrorNum}) {
                last;
            }

            my ($oid, $val) = $self->_normalize_varbind($vbl->[0]);

            # Stop if we've left the subtree
            last unless index($oid, $normalized_base . '.') == 0 || $oid eq $normalized_base;

            # Stop on endOfMibView
            last if defined $val && $val eq 'endOfMibView';

            $result{$oid} = $val;
            push @returned_oids, $oid;
            $current_oid = $oid;
            $count++;
        }
    }

    $self->{_last_oids} = \@returned_oids;
    return %result ? \%result : undef;
}

# ============================================================================
# GETNEXT WALKING HELPER
# ============================================================================

=head2 _walk_columns_getnext(\@columns, \%result, %opts)

Internal: Walk one or more columns using GETNEXT operations.

Shared implementation for SNMPv1 table walking and v2c/v3 GETNEXT fallback.
Walks each column independently, accumulating results into the provided hashref.

Options:
  startindex  => $idx    Skip entries before this index
  endindex    => $idx    Stop after this index
  skip_errors => 1       Filter out noSuchInstance/noSuchObject values
  set_error   => 1       Set $self->{_error} on SNMP errors

=cut

sub _walk_columns_getnext {
    my ($self, $columns, $result, %opts) = @_;
    my $startindex  = $opts{startindex};
    my $endindex    = $opts{endindex};
    my $skip_errors = $opts{skip_errors};
    my $set_error   = $opts{set_error};

    foreach my $col_oid (@$columns) {
        (my $normalized_col = $col_oid) =~ s/^\.//;
        my $current_oid = $col_oid;

        while (1) {
            my $vbl = SNMP::VarList->new([$current_oid]);
            $self->{_snmp_session}->getnext($vbl);

            if ($self->{_snmp_session}->{ErrorNum}) {
                $self->{_error} = $self->{_snmp_session}->{ErrorStr} if $set_error;
                last;
            }

            my ($oid, $val) = $self->_normalize_varbind($vbl->[0]);

            # Stop if we've left this column's subtree
            last unless index($oid, $normalized_col . '.') == 0 || $oid eq $normalized_col;

            # Stop on endOfMibView
            last if defined $val && $val eq 'endOfMibView';

            # Check index range if specified
            if (defined $startindex || defined $endindex) {
                my $index = substr($oid, length($normalized_col) + 1);
                if (defined $startindex && $index lt $startindex) {
                    $current_oid = $oid;
                    next;
                }
                if (defined $endindex && $index gt $endindex) {
                    last;
                }
            }

            # Skip error marker values if requested
            if ($skip_errors && defined $val
                && ($val eq 'noSuchInstance' || $val eq 'noSuchObject')) {
                $current_oid = $oid;
                next;
            }

            $result->{$oid} = $val;
            $current_oid = $oid;
        }
    }
}

# ============================================================================
# TABLE OPERATIONS
# ============================================================================

=head2 get_table(%args)

Fetch all OIDs under a base OID (table walk).

NOTE: SNMPv1 uses GETNEXT walking. SNMPv2c/v3 uses GETBULK for efficiency.

Parameters:
  -baseoid        => $oid        Root OID of table
  -maxrepetitions => $n          Repetitions for GETBULK (default: 25)

=cut

sub get_table {
    my ($self, %args) = @_;

    return undef unless $self->{_snmp_session};

    my $baseoid = $args{-baseoid};
    return undef unless defined $baseoid;

    my $maxrepetitions = $args{-maxrepetitions} || 25;

    $self->{_error} = '';

    my %result;

    if ($self->version() == 0) {
        # SNMPv1: Use GETNEXT walking
        $self->_walk_columns_getnext([$baseoid], \%result, set_error => 1);
    } else {
        # SNMPv2c/v3: Use bulkwalk() for efficiency.
        # bulkwalk() handles the GETBULK loop in C, automatically stopping
        # when leaving the subtree.
        my $vbl = SNMP::VarList->new([$baseoid]);
        my @walk_results = $self->{_snmp_session}->bulkwalk(0, $maxrepetitions, $vbl);

        if ($self->{_snmp_session}->{ErrorNum}) {
            $self->{_error} = $self->{_snmp_session}->{ErrorStr};
        } else {
            # bulkwalk returns one SNMP::VarList per requested OID (we have one)
            my $varbinds = $walk_results[0];
            if (ref $varbinds) {
                for my $vb (@$varbinds) {
                    my ($oid, $val) = $self->_normalize_varbind($vb);

                    next if defined $val && $val eq 'endOfMibView';

                    $result{$oid} = $val;
                }
            }
        }
    }

    return %result ? \%result : undef;
}

=head2 get_entries(%args)

Fetch specific columns from a table with optional index range.

This is Net::SNMP's method for fetching specific columns rather than entire tables.

Parameters:
  -columns    => \@oids         Column OIDs to retrieve
  -startindex => $index         Starting index (optional)
  -endindex   => $index         Ending index (optional)

NOTE: SNMPv1 uses GETNEXT walking. SNMPv2c/v3 uses GETBULK for efficiency.

=cut

sub get_entries {
    my ($self, %args) = @_;

    return undef unless $self->{_snmp_session};

    my @columns = @{ $args{-columns} || [] };
    return undef unless @columns;

    my $startindex = $args{-startindex};
    my $endindex = $args{-endindex};

    $self->{_error} = '';

    my %result;

    # If specific index range requested, fetch just those
    if (defined $startindex && defined $endindex && $startindex eq $endindex) {
        # Single index - use GET
        my @oids_to_get = map { "$_.$startindex" } @columns;
        my $vbl = SNMP::VarList->new(map { [$_] } @oids_to_get);

        $self->{_snmp_session}->get($vbl);

        if ($self->{_snmp_session}->{ErrorNum}) {
            $self->{_error} = $self->{_snmp_session}->{ErrorStr};
            return undef;
        }

        for (my $i = 0; $i < scalar(@$vbl); $i++) {
            my ($oid, $val) = $self->_normalize_varbind($vbl->[$i]);

            # Skip noSuchInstance/noSuchObject
            next if defined $val && ($val eq 'noSuchInstance' || $val eq 'noSuchObject');

            $result{$oid} = $val;
        }
    } elsif ($self->version() == 0) {
        # SNMPv1: GETNEXT walking (no GETBULK available)
        $self->_walk_columns_getnext(\@columns, \%result,
            startindex => $startindex, endindex => $endindex);
    } else {
        # SNMPv2c/v3: Determine maxrepetitions strategy
        my $maxreps;
        if (defined $args{-maxrepetitions} && $args{-maxrepetitions} > 0) {
            $maxreps = $args{-maxrepetitions};
        } elsif (defined $args{-maxrepetitions} && $args{-maxrepetitions} == 0) {
            # Caller requested GETNEXT-style walking (fallback path).
            # Use column-by-column GETNEXT, same as the v1 code path.
            $maxreps = 0;
        } else {
            # Adaptive default matching Net::SNMP's formula:
            # int(maxMsgSize * 0.017 / num_columns) + 1
            # With default UDP maxMsgSize=1472, base is ~25
            my $num_cols = scalar(@columns) || 1;
            $maxreps = int(25 / $num_cols) + 1;
        }

        warn "Backend::XS get_entries: maxreps=$maxreps, columns=" . scalar(@columns) . "\n" if $ENV{SNMP_XS_DEBUG};
        if ($maxreps == 0) {
            # GETNEXT walking for v2c/v3 (fallback when bulkwalk fails)
            $self->_walk_columns_getnext(\@columns, \%result,
                startindex => $startindex, endindex => $endindex,
                skip_errors => 1);
        } else {
            # Use bulkwalk() for multi-column efficiency.
            # bulkwalk() is a C-level XS method that packs all columns into
            # each GETBULK PDU and auto-loops until all subtrees are complete,
            # dramatically reducing network round-trips vs walking one column
            # at a time.
            my @start_oids = map { [$_] } @columns;
            my $vbl = SNMP::VarList->new(@start_oids);
            my @walk_results = $self->{_snmp_session}->bulkwalk(0, $maxreps, $vbl);

            if ($self->{_snmp_session}->{ErrorNum}) {
                $self->{_error} = $self->{_snmp_session}->{ErrorStr};
                return undef;
            }

            # bulkwalk() returns one SNMP::VarList per column, each containing
            # SNMP::Varbind objects [tag, iid, val, type]
            for my $col_idx (0 .. $#walk_results) {
                my $col_varbinds = $walk_results[$col_idx];
                next unless ref $col_varbinds;
                (my $normalized_col = $columns[$col_idx]) =~ s/^\.//;
                for my $vb (@$col_varbinds) {
                    my ($oid, $val) = $self->_normalize_varbind($vb);

                    # Apply index filtering
                    if (defined $startindex || defined $endindex) {
                        my $index = substr($oid, length($normalized_col) + 1);
                        next if defined $startindex && $index lt $startindex;
                        last if defined $endindex && $index gt $endindex;
                    }

                    next if defined $val && ($val eq 'noSuchInstance'
                                          || $val eq 'noSuchObject'
                                          || $val eq 'endOfMibView');
                    $result{$oid} = $val;
                }
            }
        }
    }

    return %result ? \%result : undef;
}

# ============================================================================
# UTILITY METHODS
# ============================================================================

=head2 debug_info()

Return information about SNMP module version and capabilities.

=cut

sub debug_info {
    my ($self) = @_;

    my $info = "SNMP Module Backend Information:\n";
    $info .= "  SNMP Module Version: " . ($SNMP::VERSION || 'unknown') . "\n";
    $info .= "  Session Version: " . $self->version() . "\n";
    $info .= "  Backend: SNMP (Net-SNMP XS bindings)\n";
    $info .= "  Modern Ciphers: Available\n";

    return $info;
}

1;

__END__

=head1 INTEGRATION WITH GLPlugin

To integrate this adapter into Monitoring::GLPlugin::SNMP:

  # In establish_snmp_session():

  # Try SNMP module first (modern cipher support)
  if (eval "require SNMP") {
      require Monitoring::GLPlugin::SNMP::Backend::XS;
      my ($session, $error) = Monitoring::GLPlugin::SNMP::Backend::XS->session(%params);
      if (defined $session) {
          $Monitoring::GLPlugin::SNMP::session = $session;
          return;
      }
  }

  # Fall back to Net::SNMP
  if (eval "require Net::SNMP") {
      # ... existing Net::SNMP code ...
  }

=head1 SEE ALSO

=over 4

=item * Net::SNMP - Pure Perl SNMP library (fallback)

=item * SNMP - Net-SNMP XS bindings (this adapter wraps)

=item * Monitoring::GLPlugin::SNMP - Main GLPlugin SNMP module

=back

=head1 AUTHOR

Auto-generated adapter for check_nwc_health SNMP migration

=cut
