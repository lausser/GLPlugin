#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 8;

if ( ! grep /BEGIN/, keys %Monitoring::GLPlugin::) {
  eval {
    require Monitoring::GLPlugin;
    require Monitoring::GLPlugin::Item;
  };
}

package Test::Subsystem;
our @ISA = qw(Monitoring::GLPlugin::Item);
sub init { }
sub check { }

package Test::Component;
our @ISA = qw(Monitoring::GLPlugin::Item);
sub init { }

package main;

sub make_plugin {
  my (@extra_argv) = @_;
  @ARGV = ('--mode', 'health', @extra_argv);
  my $plugin = Monitoring::GLPlugin->new(
      shortname => '',
      usage => 'Usage: %s',
      version => '1.0',
      blurb => 'test',
      url => 'http://example.com',
      timeout => 60,
  );
  $plugin->add_mode(
      internal => 'device::health',
      spec => 'health',
      alias => undef,
      help => 'Check health',
  );
  $plugin->add_arg(
      spec => 'subsystem=s',
      help => '--subsystem',
      required => 0,
  );
  $plugin->add_default_args();
  $plugin->getopts();
  $plugin->override_opt("mode", "health");
  $plugin->validate_args();
  return $plugin;
}

# case 1: unknown subsystem requested -> plugin exits UNKNOWN and lists
# the implemented subsystems (with description, if any)
make_plugin('--subsystem', 'bogus_subsystem');
my $component = Test::Component->new();
my ($exit_code, $output);
{
  no warnings 'redefine';
  local *Monitoring::GLPlugin::Commandline::nagios_exit = sub {
    my ($self, $code, $message) = @_;
    $exit_code = $code;
    $output = $message;
    die "TRAPPED_EXIT\n";
  };
  eval {
    $component->init_subsystems([
        ["cpu_subsystem", "Test::Subsystem", "cpu health"],
        ["fan_subsystem", "Test::Subsystem"],
    ]);
  };
}
is($exit_code, "UNKNOWN", 'unknown subsystem name triggers an UNKNOWN exit');
like($output, qr/bogus_subsystem/, 'error message names the unknown subsystem');
like($output, qr/cpu_subsystem \(cpu health\)/, 'error message lists a described subsystem with its description');
like($output, qr/fan_subsystem/, 'error message lists a subsystem without a description');
ok(! exists $component->{cpu_subsystem}, 'no subsystem gets instantiated when validation fails');

# case 2: valid subsystem selection still works as before
make_plugin('--subsystem', 'cpu_subsystem');
$component = Test::Component->new();
$exit_code = undef;
{
  no warnings 'redefine';
  local *Monitoring::GLPlugin::Commandline::nagios_exit = sub {
    $exit_code = $_[1];
    die "TRAPPED_EXIT\n";
  };
  eval {
    $component->init_subsystems([
        ["cpu_subsystem", "Test::Subsystem", "cpu health"],
        ["fan_subsystem", "Test::Subsystem"],
    ]);
  };
}
is($exit_code, undef, 'a known subsystem name does not trigger an exit');
ok(exists $component->{cpu_subsystem}, 'the requested subsystem is instantiated');
ok(! exists $component->{fan_subsystem}, 'subsystems not requested are skipped');
