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
  InetAddressMaker => sub {
    # wenn die Adresse in den Indizes steckt, dann ruft man das hier
    # mit den Einzelteilen als Array auf
    my ($addrtype, $addrlen, @addroctets) = @_;
    if ($addrtype  && $addrtype eq "ipv6") {
      my $maxidx = $addrlen / 2 - 1;
      return join(":",
	  map {
	      my $idx = 2*$_;
	      sprintf("%02x", $addroctets[$idx]).
	      sprintf("%02x", $addroctets[$idx+1])
          } (0..$maxidx)
      );
      return join(":", map { sprintf "%02x", $_ } @addroctets[0..$addrlen-1]);
    } elsif ($addrtype  && $addrtype eq "ipv4") {
      return join(".", @addroctets[0..$addrlen-1]);
    } else {
      #use Data::Dumper;
#printf STDERR "------------------------------------------------\n";
#printf STDERR "%s\n", Data::Dumper::Dumper([$addr, $addrtype]);
#printf STDERR "..------------------------------------------------\n";
      return sprintf "type=%s, len=%s", $addrtype, $addrlen;
    }
  },
  InetAddress => sub {
    my ($addr, $addrtype) = @_;
    if ($addrtype  && $addrtype eq "ipv6") {
      return Monitoring::GLPlugin::SNMP::TableItem->new()->unhex_ipv6($addr);
    } elsif ($addrtype  && $addrtype eq "ipv4") {
      return Monitoring::GLPlugin::SNMP::TableItem->new()->unhex_ip($addr);
    } else {
      return "unsupported_address_format: ".$addrtype;
    }
  }
};
