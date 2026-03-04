package Monitoring::GLPlugin::SNMP::MibsAndOids::EATONPXGMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'EATON-PXG-MIB'} = {
  url => '',
  name => 'EATON-PXG-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'EATON-PXG-MIB'} =
  '1.3.6.1.4.1.534.8.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'EATON-PXG-MIB'} = {
  'pxgMIB' => '1.3.6.1.4.1.534.8.1',
  'pxgNotifications' => '1.3.6.1.4.1.534.8.1.0',
  'pxgMIBObjects' => '1.3.6.1.4.1.534.8.1.1',
  'eventInfo' => '1.3.6.1.4.1.534.8.1.1.1',
  'eventID' => '1.3.6.1.4.1.534.8.1.1.1.1',
  'eventSequenceIndex' => '1.3.6.1.4.1.534.8.1.1.1.2',
  'eventDescription' => '1.3.6.1.4.1.534.8.1.1.1.3',
  #'eventDescriptionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'eventValue' => '1.3.6.1.4.1.534.8.1.1.1.4',
  #'eventValueDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'alarms' => '1.3.6.1.4.1.534.8.1.1.2',
  'numAlarmsPresent' => '1.3.6.1.4.1.534.8.1.1.2.1',
  #'numAlarmsPresentDefinition' => 'SNMPv2-SMI::Gauge32',
  'activeAlarmsTable' => '1.3.6.1.4.1.534.8.1.1.2.2',
  'activeAlarmsEntry' => '1.3.6.1.4.1.534.8.1.1.2.2.1',
  'alarmID' => '1.3.6.1.4.1.534.8.1.1.2.2.1.1',
  'alarmSequenceIndex' => '1.3.6.1.4.1.534.8.1.1.2.2.1.2',
  'alarmDescription' => '1.3.6.1.4.1.534.8.1.1.2.2.1.3',
  #'alarmDescriptionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'alarmValue' => '1.3.6.1.4.1.534.8.1.1.2.2.1.4',
  #'alarmValueDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'alarmLevel' => '1.3.6.1.4.1.534.8.1.1.2.2.1.5',
  'alarmLevelDefinition' => 'EATON-PXG-MIB::alarmLevel',
  'alarmTime' => '1.3.6.1.4.1.534.8.1.1.2.2.1.6',
  #'alarmTimeDefinition' => 'SNMPv2-TC::TimeStamp',
  'pxgConformance' => '1.3.6.1.4.1.534.8.1.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'EATON-PXG-MIB'} = {
  'alarmLevel' => {
    '1' => 'critical',
    '2' => 'cautionary',
    '3' => 'acknowledged',
    '4' => 'active',
    '5' => 'cleared',
    '6' => 'closed',
    '7' => 'unknown',
  },
};
