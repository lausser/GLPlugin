package Monitoring::GLPlugin::SNMP::MibsAndOids::EATONEMPMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'EATON-EMP-MIB'} = {
  url => '',
  name => 'EATON-EMP-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'EATON-EMP-MIB'} =
  '1.3.6.1.4.1.534.1.6.0';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'EATON-EMP-MIB'} = {
  'eatonEMPMIB' => '1.3.6.1.4.1.534.1.6.0',
  'eatonEMPConformance' => '1.3.6.1.4.1.534.1.6.0.2',
  'xupsEnvRemoteTemp' => '1.3.6.1.4.1.534.1.6.5',
  'xupsEnvRemoteHumidity' => '1.3.6.1.4.1.534.1.6.6',
  'xupsEnvNumContacts' => '1.3.6.1.4.1.534.1.6.7',
  'xupsContactSenseTable' => '1.3.6.1.4.1.534.1.6.8',
  'xupsContactsTableEntry' => '1.3.6.1.4.1.534.1.6.8.1',
  'xupsContactIndex' => '1.3.6.1.4.1.534.1.6.8.1.1',
  'xupsContactType' => '1.3.6.1.4.1.534.1.6.8.1.2',
  'xupsContactTypeDefinition' => 'EATON-EMP-MIB::xupsContactType',
  'xupsContactState' => '1.3.6.1.4.1.534.1.6.8.1.3',
  'xupsContactStateDefinition' => 'EATON-EMP-MIB::xupsContactState',
  'xupsContactDescr' => '1.3.6.1.4.1.534.1.6.8.1.4',
  'xupsEnvRemoteTempLowerLimit' => '1.3.6.1.4.1.534.1.6.9',
  'xupsEnvRemoteTempUpperLimit' => '1.3.6.1.4.1.534.1.6.10',
  'xupsEnvRemoteHumidityLowerLimit' => '1.3.6.1.4.1.534.1.6.11',
  'xupsEnvRemoteHumidityUpperLimit' => '1.3.6.1.4.1.534.1.6.12',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'EATON-EMP-MIB'} = {
  'xupsContactState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'openWithNotice',
    '4' => 'closedWithNotice',
  },
  'xupsContactType' => {
    '1' => 'normallyOpen',
    '2' => 'normallyClosed',
    '3' => 'anyChange',
    '4' => 'notUsed',
  },
};
