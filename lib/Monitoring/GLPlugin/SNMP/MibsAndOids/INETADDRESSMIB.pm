package Monitoring::GLPlugin::SNMP::MibsAndOids::INETADDRESSMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'INET-ADDRESS-MIB'} = {
  url => '',
  name => 'INET-ADDRESS-MIB',
};

#$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'INET-ADDRESS-MIB'} =

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'INET-ADDRESS-MIB'} = {
  inetAddressMIB => '1.3.6.1.2.1.76',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'INET-ADDRESS-MIB'} = {
  InetAddressType => {
    0 => 'unknown',
    1 => 'ipv4',
    2 => 'ipv6',
    3 => 'ipv4z',
    4 => 'ipv6z',
    16 => 'dns',
  },
  InetAddress => sub {
    my ($addr, $addrtype) = @_;
    if ($addrtype  && $addrtype eq "ipv6") {
      return Monitoring::GLPlugin::SNMP::TableItem->new()->unhex_ipv6($addr);
    } elsif ($addrtype  && $addrtype eq "ipv4") {
      return Monitoring::GLPlugin::SNMP::TableItem->new()->unhex_ip($addr);
    } else {
      #use Data::Dumper;
#printf STDERR "------------------------------------------------\n";
#printf STDERR "%s\n", Data::Dumper::Dumper([$addr, $addrtype]);
#printf STDERR "..------------------------------------------------\n";
      return "xxx";
    }
  }
};
