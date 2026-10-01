package Monitoring::GLPlugin::Item;
our @ISA = qw(Monitoring::GLPlugin);

use strict;

sub new {
  my ($class, %params) = @_;
  my $self = {
    blacklisted => 0,
    info => undef,
    extendedinfo => undef,
  };
  bless $self, $class;
  $self->init(%params);
  return $self;
}

sub check {
  my ($self, $lists) = @_;
  my @lists = $lists ? @{$lists} : grep { ref($self->{$_}) eq "ARRAY" } keys %{$self};
  foreach my $list (@lists) {
    $self->add_info('checking '.$list);
    foreach my $element (@{$self->{$list}}) {
      $element->blacklist() if $self->is_blacklisted();
      $element->check();
    }
  }
}

sub init_subsystems {
  my ($self, $subsysref) = @_;
  if ($self->opts->subsystem) {
    my @known = map { $_->[0] } @{$subsysref};
    my @requested = map {
        s/^\s+|\s+$//g;
        $_;
    } split /,/, $self->opts->subsystem;
    my @unknown = grep {
        my $requested = $_;
        ! grep { $_ eq $requested } @known;
    } @requested;
    if (scalar(@unknown)) {
      $self->nagios_exit("UNKNOWN", sprintf
          "unknown subsystem%s %s, implemented subsystems are: %s",
          scalar(@unknown) == 1 ? "" : "s",
          join(", ", @unknown),
          join(", ", map {
              my ($subsys, $class, $description) = @{$_};
              $description ? sprintf("%s (%s)", $subsys, $description) : $subsys;
          } @{$subsysref}));
    }
  }
  foreach (@{$subsysref}) {
    my ($subsys, $class) = @{$_};
    $self->{$subsys} = $class->new()
        if (! $self->opts->subsystem || grep {
            $_ eq $subsys;
        } map {
            s/^\s+|\s+$//g;
            $_;
        } split /,/, $self->opts->subsystem);
  }
  $self->{subsystems_order} = [ map { $_->[0] } @{$subsysref} ];
}

sub subsystems_in_order {
  my ($self) = @_;
  # subsystems are stored in a hash, so keys() would yield a
  # (randomized) hash order; use the order declared in init_subsystems
  my @names = defined $self->{subsystems_order}
      ? @{$self->{subsystems_order}}
      : keys %{$self};
  return grep { $_ =~ /.*_subsystem$/ && exists $self->{$_} } @names;
}

sub check_subsystems {
  my ($self) = @_;
  my @subsystems = subsystems_in_order($self);
  foreach (@subsystems) {
    $self->{$_}->check();
  }
  $self->reduce_messages_short(join(", ",
      map {
          sprintf "%s working fine", $_;
      } map {
          s/^\s+|\s+$//g;
          $_;
      } split /,/, $self->opts->subsystem
  )) if $self->opts->subsystem;
}

sub summarize_subsystems {
  my ($self) = @_;
  my @subsystems = subsystems_in_order($self);
  my @subsystem_summary = ();
  foreach (@subsystems) {
    if ($self->{$_}->{subsystem_summary}) {
      push(@subsystem_summary, $self->{$_}->{subsystem_summary});
    }
  }
  return join(", ", @subsystem_summary);
}

sub dump_subsystems {
  my ($self) = @_;
  my @subsystems = subsystems_in_order($self);
  foreach (@subsystems) {
    $self->{$_}->dump();
  }
}

sub subsystem_summary {
  my ($self, $summary) = @_;
  $self->{subsystem_summary} = $summary;
}

1;

__END__
