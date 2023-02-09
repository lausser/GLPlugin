package Monitoring::GLPlugin::SNMP::MibsAndOids::SYNOLOGYRAIDMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'SYNOLOGY-RAID-MIB'} = {
  url => '',
  name => 'SYNOLOGY-RAID-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'SYNOLOGY-RAID-MIB'} =
  '1.3.6.1.4.1.6574.3';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'SYNOLOGY-RAID-MIB'} = {
  'synology' => '1.3.6.1.4.1.6574',
  'synoRaid' => '1.3.6.1.4.1.6574.3',
  'raidTable' => '1.3.6.1.4.1.6574.3.1',
  'raidEntry' => '1.3.6.1.4.1.6574.3.1.1',
  'raidIndex' => '1.3.6.1.4.1.6574.3.1.1.1',
  'raidName' => '1.3.6.1.4.1.6574.3.1.1.2',
  'raidStatus' => '1.3.6.1.4.1.6574.3.1.1.3',
  'raidStatusDefinition' => 'SYNOLOGY-RAID-MIB::raidStatus',
  'raidConformance' => '1.3.6.1.4.1.6574.3.2',
  'raidCompliances' => '1.3.6.1.4.1.6574.3.2.1',
  'raidGroups' => '1.3.6.1.4.1.6574.3.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'SYNOLOGY-RAID-MIB'} = {
  'raidStatus' => {
    1 => 'Normal',
    2 => 'Repairing',
    3 => 'Migrating',
    4 => 'Expanding',
    5 => 'Deleting',
    6 => 'Creating',
    7 => 'RaidSyncing',
    8 => 'RaidParityChecking',
    9 => 'RaidAssembling',
    10 => 'Canceling',
    11 => 'Degrade',
    12 => 'Crashed',
  },
};
