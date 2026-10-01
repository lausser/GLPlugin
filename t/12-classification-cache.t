#!perl
use 5.006;
use strict;
use warnings;
use Test::More;
use File::Temp qw(tempdir);
use JSON;

# Tests for the classification cache of Monitoring::GLPlugin:
# rebless_from_classification_cache / save_classification_cache and the
# host_wide_cache mode of save_state / load_state.

if ( ! grep /BEGIN/, keys %Monitoring::GLPlugin::) {
  eval {
    require Monitoring::GLPlugin;
  };
}

# a vendor class as it would be found by a plugin's classify()
package Test::Vendor;
our @ISA = qw(Monitoring::GLPlugin);
sub init { }

package Test::Other::Generic;
our @ISA = qw(Monitoring::GLPlugin);
sub init { }

package main;

my $statedir = tempdir(CLEANUP => 1);
delete $ENV{IGNORE_CLASSIFICATION_CACHE};
# the cache is opt-in, all tests below (except the opt-in test) want it enabled
$ENV{USE_CLASSIFICATION_CACHE} = 1;

# creates a fresh plugin object, as if started with the given arguments
sub make_plugin {
  my (@extra_argv) = @_;
  @ARGV = ('--mode', 'health', '--statefilesdir', $statedir, @extra_argv);
  my $plugin = Monitoring::GLPlugin->new(
      shortname => '',
      usage => 'Usage: %s',
      version => '1.0',
      blurb => 'test',
      url => 'http://example.com',
      timeout => 60,
      plugin => 'check_test_health',
  );
  $plugin->add_mode(
      internal => 'device::health',
      spec => 'health',
      alias => undef,
      help => 'Check health',
  );
  $plugin->add_mode(
      internal => 'my-ext',
      spec => 'my-ext',
      alias => undef,
      help => 'extension',
  );
  foreach my $arg (qw(hostname=s port=i community=s snmpwalk=s servertype=s)) {
    $plugin->add_arg(spec => $arg, help => $arg, required => 0);
  }
  $plugin->add_default_args();
  $plugin->getopts();
  $plugin->override_opt("mode", "health");
  # like in a real plugin run, classify() (and so the cache) comes before
  # validate_args(), therefore validate_args() is not called here.
  return $plugin;
}

sub entry_files {
  opendir(my $dh, $statedir);
  my @f = grep { ! /^\./ } readdir($dh);
  closedir($dh);
  return sort @f;
}

sub count_entries {
  my @f = entry_files();
  return scalar(@f);
}

sub clear_entries {
  unlink map { "$statedir/$_" } entry_files();
}

# simulates what a plugin's classify() does: hook, "probing", hook
sub classify_like_plugin {
  my ($plugin, $class, %flags) = @_;
  my $hit = $plugin->rebless_from_classification_cache();
  if (! $hit) {
    $plugin->rebless($class) if $class;
    $plugin->{classification_uncacheable} = 1 if $flags{uncacheable};
  }
  $plugin->save_classification_cache();
  return $hit;
}

sub write_entry {
  my ($plugin, %entry) = @_;
  my $identity = $plugin->classification_cache_identity();
  $plugin->save_state(name => $identity, host_wide_cache => 1, save => \%entry);
  return $identity;
}

#### miss, store, hit
my $plugin = make_plugin('--hostname', 'host1', '--port', 161, '--community', 'secret1');
is(classify_like_plugin($plugin, 'Test::Vendor'), 0, 'first run is a miss');
is(count_entries(), 1, 'one entry was written');
my ($file) = entry_files();
unlike($file, qr/secret1/, 'community is not part of the entry name');
like($file, qr/^classification_cache_check_test_health_host1_161_[0-9a-f]{64}$/,
    'entry name has plugin, host, port and credential hash');
{
  my $content = do { local (@ARGV, $/) = ("$statedir/$file"); <> };
  unlike($content, qr/secret1/, 'community is not part of the entry content');
  my $entry = decode_json($content);
  is($entry->{class}, 'Test::Vendor', 'entry holds the class');
  ok($entry->{timestamp} =~ /^\d+$/, 'entry holds a timestamp');
  is(join(",", sort grep { $_ ne 'localtime' } keys %$entry), 'class,timestamp',
      'entry holds nothing else');
}
my $mtime = (stat("$statedir/$file"))[9];
my $before = do { local (@ARGV, $/) = ("$statedir/$file"); <> };

$plugin = make_plugin('--hostname', 'host1', '--port', 161, '--community', 'secret1');
is(classify_like_plugin($plugin, 'Test::Other::Generic'), 1, 'second run is a hit');
is(ref($plugin), 'Test::Vendor', 'a hit reblesses into the cached class');
my $after = do { local (@ARGV, $/) = ("$statedir/$file"); <> };
is($after, $before, 'a hit does not rewrite the entry');
is((stat("$statedir/$file"))[9], $mtime, 'a hit does not touch the entry');

#### expiry
write_entry($plugin, class => 'Test::Vendor', timestamp => time - 299);
$plugin = make_plugin('--hostname', 'host1', '--port', 161, '--community', 'secret1');
is($plugin->rebless_from_classification_cache(), 1, '299s old entry is valid');
write_entry($plugin, class => 'Test::Vendor', timestamp => time - 300);
$plugin = make_plugin('--hostname', 'host1', '--port', 161, '--community', 'secret1');
is($plugin->rebless_from_classification_cache(), 0, '300s old entry is expired');
write_entry($plugin, class => 'Test::Vendor', timestamp => time + 600);
$plugin = make_plugin('--hostname', 'host1', '--port', 161, '--community', 'secret1');
is($plugin->rebless_from_classification_cache(), 0, 'entry from the future is a miss');

#### unusable entries
foreach my $bad (
    [ 'unknown class' => { class => 'No::Such::Class', timestamp => time } ],
    [ 'class with bad characters' => { class => 'Test::Vendor; system("x")', timestamp => time } ],
    [ 'class not a plugin class' => { class => 'File::Temp', timestamp => time } ],
    [ 'missing class' => { timestamp => time } ],
    [ 'missing timestamp' => { class => 'Test::Vendor' } ],
    [ 'bad timestamp' => { class => 'Test::Vendor', timestamp => 'yesterday' } ],
) {
  $plugin = make_plugin('--hostname', 'host1', '--port', 161, '--community', 'secret1');
  write_entry($plugin, %{$bad->[1]});
  $plugin = make_plugin('--hostname', 'host1', '--port', 161, '--community', 'secret1');
  is($plugin->rebless_from_classification_cache(), 0, $bad->[0].' is a miss');
  is(ref($plugin), 'Monitoring::GLPlugin', $bad->[0].' leaves the object alone');
}
foreach my $junk ("", "not json", "[1,2,3]", "{") {
  $plugin = make_plugin('--hostname', 'host1', '--port', 161, '--community', 'secret1');
  my $identity = $plugin->classification_cache_identity();
  open(my $fh, ">", "$statedir/$identity");
  print $fh $junk;
  close $fh;
  my $out = "";
  {
    local *STDOUT;
    open(STDOUT, ">", \$out);
    is($plugin->rebless_from_classification_cache(), 0, "corrupt entry '$junk' is a miss");
  }
  is($out, "", 'corrupt entry produces no output');
  is(scalar($plugin->check_messages()), 0, 'corrupt entry adds no message');
}

#### nothing is stored
clear_entries();
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
classify_like_plugin($plugin, undef);
is(count_entries(), 0, 'nothing is stored if no rebless happened');
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
classify_like_plugin($plugin, 'Test::Other::Generic');
is(count_entries(), 0, 'a ::Generic class is not stored');
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
$plugin->{generic_class} = 'Test::Vendor';
classify_like_plugin($plugin, 'Test::Vendor');
is(count_entries(), 0, 'the declared generic class is not stored');
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
$plugin->add_unknown('device not reachable');
classify_like_plugin($plugin, 'Test::Vendor');
is(count_entries(), 0, 'a failed classification is not stored');
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
classify_like_plugin($plugin, 'Test::Vendor', uncacheable => 1);
is(count_entries(), 0, 'a result marked uncacheable is not stored');

#### bypass
clear_entries();
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
classify_like_plugin($plugin, 'Test::Vendor');
is(count_entries(), 1, 'entry exists for the bypass tests');
{
  local $ENV{IGNORE_CLASSIFICATION_CACHE} = 1;
  $plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
  is($plugin->rebless_from_classification_cache(), 0, 'env var: no read');
  clear_entries();
  classify_like_plugin($plugin, 'Test::Vendor');
  is(count_entries(), 0, 'env var: no write');
}
{
  local $ENV{USE_CLASSIFICATION_CACHE};
  delete $ENV{USE_CLASSIFICATION_CACHE};
  $plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
  is($plugin->rebless_from_classification_cache(), 0, 'USE_ not set: no read');
  clear_entries();
  classify_like_plugin($plugin, 'Test::Vendor');
  is(count_entries(), 0, 'USE_ not set: no write');
  local $ENV{USE_CLASSIFICATION_CACHE} = "";
  is($plugin->classification_cache_bypassed(), 1, 'empty USE_ does not enable the cache');
}
{
  # IGNORE_ wins over USE_
  local $ENV{USE_CLASSIFICATION_CACHE} = 1;
  local $ENV{IGNORE_CLASSIFICATION_CACHE} = 1;
  $plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
  is($plugin->classification_cache_bypassed(), 1, 'IGNORE_ wins over USE_');
}
{
  local $ENV{IGNORE_CLASSIFICATION_CACHE} = "";
  $plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
  is($plugin->classification_cache_bypassed(), 0, 'empty env var does not bypass');
}
clear_entries();
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
classify_like_plugin($plugin, 'Test::Vendor');
foreach my $args (
    [ '--snmpwalk', '/nonexistent/walk' ],
    [ '--servertype', 'linuxlocal' ],
) {
  $plugin = make_plugin('--hostname', 'host1', '--community', 'secret1', @$args);
  is($plugin->rebless_from_classification_cache(), 0, "$args->[0]: no read");
}
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1');
$plugin->override_opt("mode", "my-ext");
is($plugin->rebless_from_classification_cache(), 0, 'my- mode: no read');
$plugin = make_plugin('--hostname', 'host1', '--community', 'secret1', '--snmpwalk', '/nonexistent/walk');
clear_entries();
classify_like_plugin($plugin, 'Test::Vendor');
is(count_entries(), 0, 'snmpwalk: no write');
$plugin = make_plugin('--community', 'secret1');
is($plugin->rebless_from_classification_cache(), 0, 'no hostname: no read');

#### statefilesdir is honoured
{
  my $otherdir = tempdir(CLEANUP => 1);
  @ARGV = ();
  $plugin = make_plugin('--hostname', 'host1', '--community', 'secret1', '--statefilesdir', $otherdir);
  classify_like_plugin($plugin, 'Test::Vendor');
  opendir(my $dh, $otherdir);
  my @f = grep { ! /^\./ } readdir($dh);
  closedir($dh);
  is(scalar(@f), 1, 'entry is written into the configured statefilesdir');
}

#### one entry per host, port, credentials and mode-independent
clear_entries();
my %names;
foreach my $args (
    [ '--hostname', 'hostA', '--port', 161, '--community', 'c1' ],
    [ '--hostname', 'hostB', '--port', 161, '--community', 'c1' ],
    [ '--hostname', 'hostA', '--port', 162, '--community', 'c1' ],
    [ '--hostname', 'hostA', '--port', 161, '--community', 'c2' ],
) {
  my $p = make_plugin(@$args);
  $names{$p->classification_cache_identity()}++;
  classify_like_plugin($p, 'Test::Vendor');
}
is(scalar(keys %names), 4, 'host, port and community give distinct identities');
is(count_entries(), 4, 'each identity has its own file');
my $p1 = make_plugin('--hostname', 'hostA', '--port', 161, '--community', 'c1');
my $id1 = $p1->classification_cache_identity();
my $p2 = make_plugin('--hostname', 'hostA', '--port', 161, '--community', 'c1');
$p2->override_opt("mode", "my-ext");
is($p2->classification_cache_identity(), $id1, 'identity does not depend on the mode');
my $strange = make_plugin('--hostname', 'ho/st $1;`x`', '--community', 'c1');
like($strange->classification_cache_identity(), qr/^[\w.\-]+$/, 'unusual host characters give a safe name');
foreach my $f (entry_files()) {
  my $content = do { local (@ARGV, $/) = ("$statedir/$f"); <> };
  unlike($f.$content, qr/\bc1\b|\bc2\b/, "credentials not visible in $f");
}

#### old callers of save_state / load_state are unaffected
{
  my $p = make_plugin('--hostname', 'hostZ', '--community', 'c1');
  $p->validate_args();
  $p->save_state(name => 'legacy', save => { a => 1 });
  ok(-f "$statedir/device::health_legacy", 'without host_wide_cache the mode is part of the name');
  is_deeply($p->load_state(name => 'legacy'), { a => 1 }, 'legacy load_state still works');
}

#### concurrent writers
clear_entries();
{
  my $p = make_plugin('--hostname', 'hostC', '--community', 'c1');
  my $identity = $p->classification_cache_identity();
  my @pids;
  foreach my $n (1..20) {
    my $pid = fork();
    if (! defined $pid) {
      die "fork failed";
    } elsif ($pid == 0) {
      for my $i (1..25) {
        $p->save_state(name => $identity, host_wide_cache => 1,
            save => { class => 'Test::Vendor', timestamp => time });
      }
      exit 0;
    }
    push(@pids, $pid);
  }
  # a reader running while the writers work must never see a partial entry
  my $partial = 0;
  for my $i (1..200) {
    my $e = $p->load_state(name => $identity, host_wide_cache => 1);
    $partial++ if defined $e && (ref($e) ne 'HASH' || ! $e->{class});
  }
  waitpid($_, 0) foreach @pids;
  is($partial, 0, 'readers never see a partial entry');
  my $e = $p->load_state(name => $identity, host_wide_cache => 1);
  is($e->{class}, 'Test::Vendor', 'entry is valid after 20 concurrent writers');
  is(count_entries(), 1, 'no stray temporary files remain');
}

#### unwritable state directory: silent
SKIP: {
  skip "running as root, cannot make a directory unwritable", 3 if $> == 0;
  my $ro = tempdir(CLEANUP => 1);
  chmod 0555, $ro;
  my $p = make_plugin('--hostname', 'hostD', '--community', 'c1', '--statefilesdir', $ro);
  my $out = "";
  {
    local *STDOUT;
    open(STDOUT, ">", \$out);
    classify_like_plugin($p, 'Test::Vendor');
  }
  is($out, "", 'unwritable dir: no output');
  is(scalar($p->check_messages()), 0, 'unwritable dir: no message');
  is(ref($p), 'Test::Vendor', 'unwritable dir: classification result unchanged');
  chmod 0755, $ro;
}

#### a statefilesdir that does not exist yet is created silently
{
  my $new = "$statedir/sub/dir";
  my $p = make_plugin('--hostname', 'hostE', '--community', 'c1', '--statefilesdir', $new);
  classify_like_plugin($p, 'Test::Vendor');
  ok(-d $new, 'missing statefilesdir is created');
}

done_testing();
