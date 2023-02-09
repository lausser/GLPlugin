package Monitoring::GLPlugin::SNMP::MibsAndOids::SYNOLOGYSMARTMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'SYNOLOGY-SMART-MIB'} = {
  url => '',
  name => 'SYNOLOGY-SMART-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'SYNOLOGY-SMART-MIB'} =
  '1.3.6.1.4.1.6574.5';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'SYNOLOGY-SMART-MIB'} = {
  'synology' => '1.3.6.1.4.1.6574',
  'synologyDiskSMART' => '1.3.6.1.4.1.6574.5',
  'synologyDiskSMARTTable' => '1.3.6.1.4.1.6574.5.1',
  'diskSMARTEntry' => '1.3.6.1.4.1.6574.5.1.1',
  'diskSMARTInfoIndex' => '1.3.6.1.4.1.6574.5.1.1.1',
  'diskSMARTInfoDevName' => '1.3.6.1.4.1.6574.5.1.1.2',
  'diskSMARTAttrName' => '1.3.6.1.4.1.6574.5.1.1.3',
  'diskSMARTAttrId' => '1.3.6.1.4.1.6574.5.1.1.4',
  'diskSMARTAttrCurrent' => '1.3.6.1.4.1.6574.5.1.1.5',
  'diskSMARTAttrWorst' => '1.3.6.1.4.1.6574.5.1.1.6',
  'diskSMARTAttrThreshold' => '1.3.6.1.4.1.6574.5.1.1.7',
  'diskSMARTAttrRaw' => '1.3.6.1.4.1.6574.5.1.1.8',
  'diskSMARTAttrStatus' => '1.3.6.1.4.1.6574.5.1.1.9',
  'synologyDiskSMARTConformance' => '1.3.6.1.4.1.6574.5.2',
  'synologyDiskSMARTCompliances' => '1.3.6.1.4.1.6574.5.2.1',
  'synologyDiskSMARTGroups' => '1.3.6.1.4.1.6574.5.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'SYNOLOGY-SMART-MIB'} = {
};
