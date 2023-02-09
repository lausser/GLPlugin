package Monitoring::GLPlugin::SNMP::MibsAndOids::SYNOLOGYSYSTEMMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'SYNOLOGY-SYSTEM-MIB'} = {
  url => '',
  name => 'SYNOLOGY-SYSTEM-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'SYNOLOGY-SYSTEM-MIB'} =
  '1.3.6.1.4.1.6574.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'SYNOLOGY-SYSTEM-MIB'} = {
  'synology' => '1.3.6.1.4.1.6574',
  'synoSystem' => '1.3.6.1.4.1.6574.1',
  'systemStatus' => '1.3.6.1.4.1.6574.1.1',
  'systemStatusDefinition' => 'SYNOLOGY-SYSTEM-MIB::synoStatus',
  'temperature' => '1.3.6.1.4.1.6574.1.2',
  'powerStatus' => '1.3.6.1.4.1.6574.1.3',
  'powerStatusDefinition' => 'SYNOLOGY-SYSTEM-MIB::synoStatus',
  'fan' => '1.3.6.1.4.1.6574.1.4',
  'systemFanStatus' => '1.3.6.1.4.1.6574.1.4.1',
  'systemFanStatusDefinition' => 'SYNOLOGY-SYSTEM-MIB::synoStatus',
  'cpuFanStatus' => '1.3.6.1.4.1.6574.1.4.2',
  'cpuFanStatusDefinition' => 'SYNOLOGY-SYSTEM-MIB::synoStatus',
  'dsmInfo' => '1.3.6.1.4.1.6574.1.5',
  'modelName' => '1.3.6.1.4.1.6574.1.5.1',
  'serialNumber' => '1.3.6.1.4.1.6574.1.5.2',
  'version' => '1.3.6.1.4.1.6574.1.5.3',
  'upgradeAvailable' => '1.3.6.1.4.1.6574.1.5.4',
  'upgradeAvailableDefinition' => 'SYNOLOGY-SYSTEM-MIB::synoUpgrade',
  'systemConformance' => '1.3.6.1.4.1.6574.1.6',
  'systemCompliances' => '1.3.6.1.4.1.6574.1.6.1',
  'systemGroups' => '1.3.6.1.4.1.6574.1.6.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'SYNOLOGY-SYSTEM-MIB'} = {
  'synoStatus' => {
    1 => 'Normal',
    2 => 'Failed',
  },
  'synoUpgrade' => {
    1 => 'Available',
    2 => 'Unavailable',
    3 => 'Connecting',
    4 => 'Disconnected',
    5 => 'Others',
  },
};
