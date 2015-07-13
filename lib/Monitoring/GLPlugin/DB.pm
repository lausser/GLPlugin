package Monitoring::GLPlugin::DB;
our @ISA = qw(Monitoring::GLPlugin);
use strict;

{
  our $session = undef;
}

sub get_db_tables {
#  $self->get_db_tables([
#    ['databases', 'select * from', 'Classes::POSTGRES::Component::DatabaseSubsystem::Database']
#  ]);
  my $self = shift;
  my $infos = shift;
  foreach my $info (@{$infos}) {
    my $arrayname = $info->[0];
    my $sql = $info->[1];
    my $class = $info->[2];
    my $filter = $info->[3];
    my $mapping = $info->[4];
    $self->{$arrayname} = [] if ! exists $self->{$arrayname};
    my $max_idx = scalar(@{$mapping});;
    foreach my $row ($self->fetchall_array($sql)) {
      my $col_idx = -1;
      my $params = {};
      while ($col_idx < $max_idx) {
        $params->{$mapping->[$col_idx]} = $row->[$col_idx];
        $col_idx++;
      }
      my $new_object = $class->new(%{$params});
      next if (defined $filter && ! &$filter($new_object));
      push(@{$self->{$arrayname}}, $new_object);
    }
  }
}

sub create_statefile {
  my $self = shift;
  my %params = @_;
  my $extension = "";
  $extension .= $params{name} ? '_'.$params{name} : '';
  if ($self->opts->can('hostname') && $self->opts->hostname) {
    $extension .= '_'.$self->opts->hostname;
    $extension .= '_'.$self->opts->port;
  }
  if ($self->opts->can('server') && $self->opts->server) {
    $extension .= '_'.$self->opts->server;
  }
  if ($self->opts->can('connection') && $self->opts->connection) {
    $extension .= '_'.$self->opts->connection;
  }
  if ($self->opts->mode eq 'sql' && $self->opts->username) {
    $extension .= '_'.$self->opts->username;
  }
  $extension =~ s/\//_/g;
  $extension =~ s/\(/_/g;
  $extension =~ s/\)/_/g;
  $extension =~ s/\*/_/g;
  $extension =~ s/\s/_/g;
  return sprintf "%s/%s%s", $self->statefilesdir(),
      $self->opts->mode, lc $extension;
}

sub validate_args {
  my $self = shift;
  $self->SUPER::validate_args();
  if ($self->opts->name && $self->opts->name =~ /select%20/i) {
    my $name = $self->opts->name;
    $name =~ s/\%([A-Fa-f0-9]{2})/pack('C', hex($1))/seg;
    $self->override_opt('name', $name);
  }
}


package Monitoring::GLPlugin::DB::Item;
our @ISA = qw(Monitoring::GLPlugin::Item Monitoring::GLPlugin::DB);
use strict;


package Monitoring::GLPlugin::DB::TableItem;
our @ISA = qw(Monitoring::GLPlugin::TableItem Monitoring::GLPlugin::DB);
use strict;

sub globalize_errors {
  my $self = shift;
  #delete *{'add_message'};
  {
    no strict 'refs';
    *{'add_message'} = *{'Monitoring::GLPlugin::add_message'};
  }
}

sub localize_errors {
  my $self = shift;
  $self->{messages} = { 
      ok=> [],
      warning => [],
      critical => [],
      unknown => []
  } if ! exists $self->{messages};
  # save global errors
  {
    no strict 'refs';
    *{'add_message'} = *{'Monitoring::GLPlugin::Commandline::add_message'};
  }
}

