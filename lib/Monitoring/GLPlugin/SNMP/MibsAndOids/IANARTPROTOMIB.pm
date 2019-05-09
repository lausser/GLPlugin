package Monitoring::GLPlugin::SNMP::MibsAndOids::IANARTPROTOMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'IANA-RTPROTO-MIB'} = {
  url => '',
  name => 'IANA-RTPROTO-MIB',
};

#$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'IANA-RTPROTO-MIB'} =

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'IANA-RTPROTO-MIB'} = {
  ianaRtProtoMIB => '0.84',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'IANA-RTPROTO-MIB'} = {
  IANAipRouteProtocol => {
    '1' => 'other',
    '2' => 'local',
    '3' => 'netmgmt',
    '4' => 'icmp',
    '5' => 'egp',
    '6' => 'ggp',
    '7' => 'hello',
    '8' => 'rip',
    '9' => 'isIs',
    '10' => 'esIs',
    '11' => 'ciscoIgrp',
    '12' => 'bbnSpfIgp',
    '13' => 'ospf',
    '14' => 'bgp',
    '15' => 'idpr',
    '16' => 'ciscoEigrp',
    '17' => 'dvmrp',
    '18' => 'rpl',
    '19' => 'dhcp',
    '20' => 'ttdp',
  },
  IANAipMRouteProtocol => {
    '1' => 'other',
    '2' => 'local',
    '3' => 'netmgmt',
    '4' => 'dvmrp',
    '5' => 'mospf',
    '6' => 'pimSparseDense',
    '7' => 'cbt',
    '8' => 'pimSparseMode',
    '9' => 'pimDenseMode',
    '10' => 'igmpOnly',
    '11' => 'bgmp',
    '12' => 'msdp',
  },
};
