package Monitoring::GLPlugin::SNMP::Backend::Netsnmp;

use strict;
use warnings;

our $VERSION = '1.0.0';

=head1 NAME

Monitoring::GLPlugin::SNMP::Backend::Netsnmp - Net::SNMP backend wrapper

=head1 DESCRIPTION

Encapsulates the Net::SNMP-specific session setup and provides a thin
wrapper that exposes the same session-level interface as
L<Monitoring::GLPlugin::SNMP::Backend::XS>. Together with the XS backend,
this gives C<Monitoring::GLPlugin::SNMP> a symmetrical pair of pluggable
backends; the dispatcher in C<establish_snmp_session> picks one and the
rest of GLPlugin operates against the wrapper without caring which is
in use.

The Net::SNMP API already matches what GLPlugin's higher-level code
expects, so the wrapper class is pure delegation. The factory class is
where all Net::SNMP-specific quirks live: parameter fixup, STDERR
capture during SNMPv3 discovery, and the APC UPS firmware monkey-patch.

=cut

# ============================================================================
# SESSION FACTORY
# ============================================================================

=head2 session(%params)

Create a Net::SNMP session and return a wrapper.

Returns C<($session, $error)>. On success C<$session> is a
C<Monitoring::GLPlugin::SNMP::Backend::Netsnmp::Session> wrapping a
Net::SNMP session; on failure C<$session> is undef and C<$error>
contains the message from Net::SNMP (or a load error).

=cut

sub session {
  my ($class, %params) = @_;

  eval "require Net::SNMP";
  if ($@) {
    return (undef, "Net::SNMP module not available: $@");
  }

  # Net::SNMP uses per-request context for SNMPv3, not session-level
  delete $params{'-contextengineid'};
  delete $params{'-contextname'};

  # Normalise auth/priv protocol spellings to what Net::SNMP expects.
  # Crucially, AES-256-C / AES-192-C (Reeder/Cisco) collapse to AES256 /
  # AES192 here: Net::SNMP only ships the Reeder variant, so its bare
  # "AES256"/"AES192" keywords already mean Reeder/Cisco.
  if (defined $params{'-authprotocol'}) {
    $params{'-authprotocol'} = _normalize_auth_protocol($params{'-authprotocol'});
  }
  if (defined $params{'-privprotocol'}) {
    $params{'-privprotocol'} = _normalize_priv_protocol($params{'-privprotocol'});
  }

  # Net::SNMP-specific: translate NULL-ish values seen on Socomec devices
  $params{'-translate'} = [
      -all            => 0x0,
      -nosuchobject   => 1,
      -nosuchinstance => 1,
      -endofmibview   => 1,
      -unsigned       => 1,
  ];

  # Capture STDERR around session creation: Net::SNMP prints SNMPv3
  # discovery warnings directly to STDERR, which would otherwise pollute
  # plugin output.
  my $stderrvar = "";
  local *SAVEERR = *STDERR;
  open my $err_fh, '>', \$stderrvar;
  *STDERR = $err_fh;
  my ($snmp_session, $error) = Net::SNMP->session(%params);
  *STDERR = *SAVEERR;

  # Workaround for buggy APC UPS firmware: when the time synchronization
  # in SNMPv3 discovery fails (and we have no chance to update the device
  # firmware), monkey-patch Net::SNMP's discovery callback to ignore the
  # mismatch and retry session creation once.
  if (($stderrvar && $error && $error =~ /Time synchronization failed/) ||
      ($error && $error =~ /Received usmStatsUnknownEngineIDs.0 Report-PDU with value \d+ during synchronization/)) {
    no strict 'refs';
    no warnings 'redefine';
    *{'Net::SNMP::_discovery_synchronization_cb'} = sub {
      my ($this) = @_;
      if ($this->{_security}->discovered()) {
        $this->_error_clear();
        return $this->_discovery_complete();
      }
      return $this->_discovery_failed();
    };
    ($snmp_session, $error) = Net::SNMP->session(%params);
  }

  if (!defined $snmp_session) {
    return (undef, $error);
  }

  my $wrapper = Monitoring::GLPlugin::SNMP::Backend::Netsnmp::Session->new(
      snmp_session => $snmp_session,
  );
  return ($wrapper, undef);
}

=head2 _normalize_auth_protocol($proto)

Normalise an authentication-protocol string to the lowercase keyword that
Net::SNMP accepts. Tolerates dashes, underscores, and case variations
(e.g. C<SHA-256>, C<sha_256>, C<HMAC-SHA-256> all become C<sha256>).

=cut

sub _normalize_auth_protocol {
    my ($proto) = @_;

    return 'md5'    if $proto =~ /^(?:hmac[-_]?)?md5(?:[-_]?96)?$/i;
    return 'sha224' if $proto =~ /sha[-_ ]?224/i;
    return 'sha256' if $proto =~ /sha[-_ ]?256/i;
    return 'sha384' if $proto =~ /sha[-_ ]?384/i;
    return 'sha512' if $proto =~ /sha[-_ ]?512/i;
    return 'sha'    if $proto =~ /^(?:hmac[-_]?)?sha1?(?:[-_]?96)?$/i;

    # Pass through unknown protocols (lowercased)
    return lc($proto);
}

=head2 _normalize_priv_protocol($proto)

Normalise a privacy-protocol string to the lowercase keyword that
Net::SNMP accepts.

The C<aes-256-c> / C<AES256C> family (Reeder/Cisco) collapses to plain
C<aes256>, because Net::SNMP only implements the Reeder variant and
exposes it under that bare keyword. Same for C<aes-192-c> -> C<aes192>.
C<aes-128> has only one implementation and is unambiguous.

=cut

sub _normalize_priv_protocol {
    my ($proto) = @_;

    return 'des'      if $proto =~ /^(?:cbc[-_]?)?des$/i;
    return '3desede'  if $proto =~ /^3des(?:ede)?$/i || $proto =~ /triple/i;

    # Cisco (Reeder) variants must collapse to Net::SNMP's bare aesNNN
    return 'aes192'   if $proto =~ /aes[-_ ]?192[-_ ]?c/i;
    return 'aes256'   if $proto =~ /aes[-_ ]?256[-_ ]?c/i;

    return 'aes192'   if $proto =~ /aes[-_ ]?192/i;
    return 'aes256'   if $proto =~ /aes[-_ ]?256/i;
    return 'aes'      if $proto =~ /^aes(?:[-_ ]?128)?$/i
                             || $proto =~ /^aescfb128$/i;

    # Pass through unknown protocols (lowercased)
    return lc($proto);
}

# ============================================================================
# SESSION WRAPPER
# ============================================================================

package Monitoring::GLPlugin::SNMP::Backend::Netsnmp::Session;

use strict;
use warnings;

=head1 NAME

Monitoring::GLPlugin::SNMP::Backend::Netsnmp::Session - delegating wrapper

=head1 DESCRIPTION

Thin facade over a C<Net::SNMP> session. Mirrors the public surface of
C<Monitoring::GLPlugin::SNMP::Backend::XS::Session> so callers can use
either backend interchangeably.

=cut

sub new {
  my ($class, %args) = @_;
  return bless { _snmp_session => $args{snmp_session} }, $class;
}

sub version          { my $s = shift; $s->{_snmp_session}->version(@_) }
sub timeout          { my $s = shift; $s->{_snmp_session}->timeout(@_) }
sub max_msg_size     { my $s = shift; $s->{_snmp_session}->max_msg_size(@_) }
sub error            { my $s = shift; $s->{_snmp_session}->error(@_) }
sub close            { my $s = shift; $s->{_snmp_session}->close(@_) }
sub translate        { my $s = shift; $s->{_snmp_session}->translate(@_) }
sub var_bind_names   { my $s = shift; $s->{_snmp_session}->var_bind_names(@_) }
sub get_request      { my $s = shift; $s->{_snmp_session}->get_request(@_) }
sub get_next_request { my $s = shift; $s->{_snmp_session}->get_next_request(@_) }
sub get_bulk_request { my $s = shift; $s->{_snmp_session}->get_bulk_request(@_) }
sub get_table        { my $s = shift; $s->{_snmp_session}->get_table(@_) }
sub get_entries      { my $s = shift; $s->{_snmp_session}->get_entries(@_) }

sub debug_info {
  my ($self) = @_;
  my $version = Net::SNMP->VERSION();
  return "Net::SNMP $version";
}

1;
