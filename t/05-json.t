#!perl
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 7;

push(@INC,
    '/home/lausser/git/GLPlugin/blib/lib',
    '/home/lausser/git/GLPlugin/blib/arch'
);
require Monitoring::GLPlugin;

sub old_perl_save_state {
  my ($self, %params) = @_;
  $self->create_statefilesdir();
  my $statefile = $self->create_statefile(%params);
  my $tmpfile = $statefile.$$.rand();
  if ((ref($params{save}) eq "HASH") && exists $params{save}->{timestamp}) {
    $params{save}->{localtime} = scalar localtime $params{save}->{timestamp};
  }
  my $seekfh = IO::File->new();
  if ($seekfh->open($tmpfile, "w")) {
    $seekfh->printf("%s", Data::Dumper::Dumper($params{save}));
    $seekfh->flush();
    $seekfh->close();
    $self->debug(sprintf "saved %s to %s",
        Data::Dumper::Dumper($params{save}), $statefile);
  }
  if (! rename $tmpfile, $statefile) {
    $self->add_message(3,
        sprintf "cannot write status file %s! check your filesystem (permissions/usage/integrity) and disk devices", $statefile);
  }
}
eval {
  no strict 'refs';
  *{'Monitoring::GLPlugin::old_perl_save_state'} = \&old_perl_save_state;
};

@ARGV = (
  '--mode', 'uptime',
  '--statefilesdir', '/tmp',
  '--timeout', '1000',
  #'-vvvvvvvvvvvvvvvvvvvvvvvv',
);

my $plugin = Monitoring::GLPlugin->new(
    shortname => '',
    usage => 'Usage: %s [ -v|--verbose ] [ -t <timeout> ] '.
        '  ...]',
    version => '$Revision: #PACKAGE_VERSION# $',
    blurb => 'This plugin checks nothing ',
    url => 'http://labs.consol.de/nagios/',
    timeout => 60,
);
$plugin->add_mode(
    internal => 'device::uptime',
    spec => 'uptime',
    alias => undef,
    help => 'Check the uptime of the device',
);

$plugin->add_default_args();
$plugin->getopts();
$plugin->override_opt("mode", "uptime");
$plugin->validate_args();

diag("statefile is ".$plugin->create_statefile(name => 'test'));
diag("write a statefile in the old data::dumper format");
unlink $plugin->create_statefile(name => 'test')
    if -f $plugin->create_statefile(name => 'test');

$plugin->{metric} = 5;
$plugin->{list} = ["ELEM1", "ELEM2", "ELEM3", "ELEM4", "ELEM5"];
$plugin->old_perl_save_state( name => "test", save => {
    metric => $plugin->{metric},
    list => $plugin->{list},
});
my $perlvals = $plugin->load_state( name => "test" );
ok($perlvals->{metric} == $plugin->{metric});
ok(scalar(@{$perlvals->{list}}) == scalar(@{$plugin->{list}}));
my $content = do {
    local (@ARGV, $/) = $plugin->create_statefile(name => 'test');
    my $x = <>;
    close ARGV;
    $x
};
ok($content =~ /VAR1/);
my $VAR1;
$VAR1 = eval "$content";
ok($VAR1->{metric} == $plugin->{metric});
ok(scalar(@{$VAR1->{list}}) == scalar(@{$plugin->{list}}));

$plugin->{metric} = $perlvals->{metric};
$plugin->{list} = $perlvals->{list};
$plugin->save_state( name => "test", save => {
    metric => $plugin->{metric},
    list => $plugin->{list},
});
my $jsonvals = $plugin->load_state( name => "test" );
ok($jsonvals->{metric} == $plugin->{metric});
ok(scalar(@{$jsonvals->{list}}) == scalar(@{$plugin->{list}}));
