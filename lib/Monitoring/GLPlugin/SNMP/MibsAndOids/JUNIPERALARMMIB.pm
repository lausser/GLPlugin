package Monitoring::GLPlugin::SNMP::MibsAndOids::JUNIPERALARMMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'JUNIPER-ALARM-MIB'} = {
  url => '',
  name => 'JUNIPER-ALARM-MIB',
};

#$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'JUNIPER-ALARM-MIB'} =

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'JUNIPER-ALARM-MIB'} = {
  jnxAlarms => '1.3.6.1.4.1.2636.3.4',
  jnxCraftAlarms => '1.3.6.1.4.1.2636.3.4.2',
  jnxAlarmRelayMode => '1.3.6.1.4.1.2636.3.4.2.1',
  jnxAlarmRelayModeDefinition => 'JUNIPER-ALARM-MIB::jnxAlarmRelayMode',
  jnxYellowAlarms => '1.3.6.1.4.1.2636.3.4.2.2',
  jnxYellowAlarmState => '1.3.6.1.4.1.2636.3.4.2.2.1',
  jnxYellowAlarmStateDefinition => 'JUNIPER-ALARM-MIB::jnxYellowAlarmState',
  jnxYellowAlarmCount => '1.3.6.1.4.1.2636.3.4.2.2.2',
  jnxYellowAlarmLastChange => '1.3.6.1.4.1.2636.3.4.2.2.3',
  jnxRedAlarms => '1.3.6.1.4.1.2636.3.4.2.3',
  jnxRedAlarmState => '1.3.6.1.4.1.2636.3.4.2.3.1',
  jnxRedAlarmStateDefinition => 'JUNIPER-ALARM-MIB::jnxRedAlarmState',
  jnxRedAlarmCount => '1.3.6.1.4.1.2636.3.4.2.3.2',
  jnxRedAlarmLastChange => '1.3.6.1.4.1.2636.3.4.2.3.3',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'JUNIPER-ALARM-MIB'} = {
  jnxRedAlarmState => {
    '1' => 'other',
    '2' => 'off',
    '3' => 'on',
  },
  jnxYellowAlarmState => {
    '1' => 'other',
    '2' => 'off',
    '3' => 'on',
  },
  jnxAlarmRelayMode => {
    '1' => 'other',
    '2' => 'passOn',
    '3' => 'cutOff',
  },
};
