package Monitoring::GLPlugin::SNMP::MibsAndOids::SYNOLOGYDISKMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'SYNOLOGY-DISK-MIB'} = {
  url => '',
  name => 'SYNOLOGY-DISK-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'SYNOLOGY-DISK-MIB'} =
  '1.3.6.1.4.1.6574.2';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'SYNOLOGY-DISK-MIB'} = {
  'synology' => '1.3.6.1.4.1.6574',
  'synoDisk' => '1.3.6.1.4.1.6574.2',
  'diskTable' => '1.3.6.1.4.1.6574.2.1',
  'diskEntry' => '1.3.6.1.4.1.6574.2.1.1',
  'diskIndex' => '1.3.6.1.4.1.6574.2.1.1.1',
  'diskID' => '1.3.6.1.4.1.6574.2.1.1.2',
  'diskModel' => '1.3.6.1.4.1.6574.2.1.1.3',
  'diskType' => '1.3.6.1.4.1.6574.2.1.1.4',
  'diskStatus' => '1.3.6.1.4.1.6574.2.1.1.5',
  'diskStatusDefinition' => 'SYNOLOGY-DISK-MIB::diskStatus',
  'diskTemperature' => '1.3.6.1.4.1.6574.2.1.1.6',
  'diskConformance' => '1.3.6.1.4.1.6574.2.2',
  'diskCompliances' => '1.3.6.1.4.1.6574.2.2.1',
  'diskGroups' => '1.3.6.1.4.1.6574.2.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'SYNOLOGY-DISK-MIB'} = {
  'diskStatus' => {
    1 => 'Normal',
    2 => 'Initialized',
    3 => 'NotInitialized',
    4 => 'SystemPartitionFailed',
    5 => 'Crashed',
  },
};
