package Monitoring::GLPlugin::SNMP::TableItem;
our @ISA = qw(Monitoring::GLPlugin::SNMP::CSF Monitoring::GLPlugin::TableItem Monitoring::GLPlugin::SNMP);
use strict;

sub ensure_index {
  my $self = shift;
  my $key = shift;
  $self->{$key} ||= $self->{flat_indices};
}

sub unhex_ip {
  my $self = shift;
  my $value = shift;
  if ($value && $value =~ /^0x(\w{8})/) {
    $value = join(".", unpack "C*", pack "H*", $1);
  } elsif ($value && $value =~ /^0x(\w{2} \w{2} \w{2} \w{2})/) {
    $value = $1;
    $value =~ s/ //g;
    $value = join(".", unpack "C*", pack "H*", $value);
  } elsif ($value && $value =~ /^([A-Z0-9]{2} [A-Z0-9]{2} [A-Z0-9]{2} [A-Z0-9]{2})/i) {
    $value = $1;
    $value =~ s/ //g;
    $value = join(".", unpack "C*", pack "H*", $value);
  } elsif ($value && unpack("H8", $value) =~ /(\w{2})(\w{2})(\w{2})(\w{2})/) {
    $value = join(".", map { hex($_) } ($1, $2, $3, $4));
  }
  return $value;
}

sub unhex_mac {
  my $self = shift;
  my $value = shift;
  if ($value && $value =~ /^0x(\w{12})/) {
    $value = join(".", unpack "C*", pack "H*", $1);
  } elsif ($value && $value =~ /^0x(\w{2}\s*\w{2}\s*\w{2}\s*\w{2}\s*\w{2}\s*\w{2})/) {
    $value = $1;
    $value =~ s/ //g;
    $value = join(":", unpack "C*", pack "H*", $value);
  } elsif ($value && unpack("H12", $value) =~ /(\w{2})(\w{2})(\w{2})(\w{2})(\w{2})(\w{2})/) {
    $value = join(":", map { hex($_) } ($1, $2, $3, $4, $5, $6));
  }
  return $value;
}

1;

__END__
