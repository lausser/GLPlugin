package Monitoring::GLPlugin::SNMP::MibsAndOids::ENPRDUMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'ENP-RDU-MIB'} = {
  url => '',
  name => 'ENP-RDU-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'ENP-RDU-MIB'} =
  '1.3.6.1.4.1.13400.1.100.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'ENP-RDU-MIB'} = {
  'enp' => '1.3.6.1.4.1.13400',
  'products' => '1.3.6.1.4.1.13400.1',
  'enpRdu' => '1.3.6.1.4.1.13400.1.100',
  'ident' => '1.3.6.1.4.1.13400.1.100.1',
  'identManufacturer' => '1.3.6.1.4.1.13400.1.100.1.1',
  'identModel' => '1.3.6.1.4.1.13400.1.100.1.2',
  'identIndex' => '1.3.6.1.4.1.13400.1.100.1.3',
  'system' => '1.3.6.1.4.1.13400.1.100.2',
  'group2' => '1.3.6.1.4.1.13400.1.100.2.2',
  'systemstatus' => '1.3.6.1.4.1.13400.1.100.2.2.1',
  'systemstatusDefinition' => 'ENP-RDU-MIB::systemstatus',
  'runningconfigtype' => '1.3.6.1.4.1.13400.1.100.2.2.3',
  'runningconfigtypeDefinition' => 'ENP-RDU-MIB::runningconfigtype',
  'group3' => '1.3.6.1.4.1.13400.1.100.2.3',
  'automanstate' => '1.3.6.1.4.1.13400.1.100.2.3.4',
  'automanstateDefinition' => 'ENP-RDU-MIB::automanstate',
  'outgoingalarmblocked' => '1.3.6.1.4.1.13400.1.100.2.3.5',
  'outgoingalarmblockedDefinition' => 'ENP-RDU-MIB::outgoingalarmblocked',
  'datastatstartoclock' => '1.3.6.1.4.1.13400.1.100.2.3.6',
  'datastatperiod' => '1.3.6.1.4.1.13400.1.100.2.3.7',
  'alarmTrapTable' => '1.3.6.1.4.1.13400.1.100.3',
  'alarmTrapEntry' => '1.3.6.1.4.1.13400.1.100.3.1',
  'alarmIndex' => '1.3.6.1.4.1.13400.1.100.3.1.1',
  'alarmTime' => '1.3.6.1.4.1.13400.1.100.3.1.2',
  'alarmStatusChange' => '1.3.6.1.4.1.13400.1.100.3.1.3',
  'alarmSeverity' => '1.3.6.1.4.1.13400.1.100.3.1.4',
  'alarmDescription' => '1.3.6.1.4.1.13400.1.100.3.1.5',
  'alarmId' => '1.3.6.1.4.1.13400.1.100.3.1.6',
  'systemAlarmTrap' => '1.3.6.1.4.1.13400.1.100.4',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'ENP-RDU-MIB'} = {
  'automanstate' => {
    '0' => 'auto',
    '1' => 'manual',
  },
  'runningconfigtype' => {
    '0' => 'normalconfig',
    '1' => 'backupconfig',
    '2' => 'defaultconfig',
  },
  'outgoingalarmblocked' => {
    '0' => 'normal',
    '1' => 'blocked',
  },
  'systemstatus' => {
    '0' => 'normal',
    '1' => 'alarm',
  },
};
