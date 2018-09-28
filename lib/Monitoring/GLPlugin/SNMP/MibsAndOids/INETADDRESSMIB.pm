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
    my (@objects) = @_;
    use Data::Dumper;
printf "------------------------------------------------\n";
printf "%s\n", Data::Dumper::Dumper(\@objects);
printf "..------------------------------------------------\n";
return "xxx";
  }
};
