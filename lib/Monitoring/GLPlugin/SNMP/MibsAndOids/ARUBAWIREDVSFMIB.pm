package Monitoring::GLPlugin::SNMP::MibsAndOids::ARUBAWIREDVSFMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'ARUBAWIRED-VSF-MIB'} = {
  url => '',
  name => 'ARUBAWIRED-VSF-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'ARUBAWIRED-VSF-MIB'} =
  '1.3.6.1.4.1.47196.4.1.1.3.10';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'ARUBAWIRED-VSF-MIB'} = {
  'arubaWiredVsfMIB' => '1.3.6.1.4.1.47196.4.1.1.3.10',
  'arubaWiredVsfObjects' => '1.3.6.1.4.1.47196.4.1.1.3.10.0',
  'arubaWiredVsfConfig' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.1',
  'arubaWiredVsfTrapEnable' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.1.1',
  'arubaWiredVsfOobmMADEnable' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.1.2',
  'arubaWiredVsfOobmMADEnableDefinition' => 'ARUBAWIRED-VSF-MIB::arubaWiredVsfOobmMADEnable',
  'arubaWiredVsfStatus' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.2',
  'arubaWiredVsfOperStatus' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.2.1',
  'arubaWiredVsfTopology' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.2.2',
  'arubaWiredVsfMemberTable' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3',
  'arubaWiredVsfMemberEntry' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1',
  'arubaWiredVsfMemberIndex' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.1',
  'arubaWiredVsfMemberRole' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.2',
  'arubaWiredVsfMemberStatus' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.3',
  'arubaWiredVsfMemberPartNumber' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.4',
  'arubaWiredVsfMemberMacAddr' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.5',
  'arubaWiredVsfMemberProductName' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.6',
  'arubaWiredVsfMemberSerialNum' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.7',
  'arubaWiredVsfMemberBootImage' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.8',
  'arubaWiredVsfMemberCpuUtil' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.9',
  'arubaWiredVsfMemberMemoryUtil' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.10',
  'arubaWiredVsfMemberBootTime' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.11',
  'arubaWiredVsfMemberBootRomVersion' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.12',
  'arubaWiredVsfMemberTotalMemory' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.13',
  'arubaWiredVsfMemberCurrentUsage' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.3.1.14',
  'arubaWiredVsfLinkTable' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.4',
  'arubaWiredVsfLinkEntry' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.4.1',
  'arubaWiredVsfLinkMemberId' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.4.1.1',
  'arubaWiredVsfLinkId' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.4.1.2',
  'arubaWiredVsfLinkOperStatus' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.4.1.3',
  'arubaWiredVsfLinkPeerMemberId' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.4.1.4',
  'arubaWiredVsfLinkPeerLinkId' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.4.1.5',
  'arubaWiredVsfLinkPortList' => '1.3.6.1.4.1.47196.4.1.1.3.10.0.4.1.6',
  'arubaWiredVsfNotifications' => '1.3.6.1.4.1.47196.4.1.1.3.10.1',
  'arubaWiredVsfConformance' => '1.3.6.1.4.1.47196.4.1.1.3.10.2',
  'arubaWiredVsfCompliances' => '1.3.6.1.4.1.47196.4.1.1.3.10.2.1',
  'arubaWiredVsfGroups' => '1.3.6.1.4.1.47196.4.1.1.3.10.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'ARUBAWIRED-VSF-MIB'} = {
  'arubaWiredVsfOobmMADEnable' => {
    '1' => 'none',
    '2' => 'mgmt',
  },
};
