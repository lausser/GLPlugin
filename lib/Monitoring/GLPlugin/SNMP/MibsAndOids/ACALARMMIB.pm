package Monitoring::GLPlugin::SNMP::MibsAndOids::ACALARM;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'AcAlarm'} = {
  url => '',
  name => 'AcAlarm',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'AcAlarm'} =
  '1.3.6.1.4.1.5003.11.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'AcAlarm'} = {
  'audioCodes' => '1.3.6.1.4.1.5003',
  'acFault' => '1.3.6.1.4.1.5003.11',
  'acAlarm' => '1.3.6.1.4.1.5003.11.1',
  'acActiveAlarm' => '1.3.6.1.4.1.5003.11.1.1',
  'acActiveAlarmTable' => '1.3.6.1.4.1.5003.11.1.1.1',
  'acActiveAlarmEntry' => '1.3.6.1.4.1.5003.11.1.1.1.1',
  'acActiveAlarmSequenceNumber' => '1.3.6.1.4.1.5003.11.1.1.1.1.1',
  'acActiveAlarmSysuptime' => '1.3.6.1.4.1.5003.11.1.1.1.1.2',
  #'acActiveAlarmSysuptimeDefinition' => 'SNMPv2-TC::TimeStamp',
  'acActiveAlarmTrapOID' => '1.3.6.1.4.1.5003.11.1.1.1.1.3',
  'acActiveAlarmDateAndTime' => '1.3.6.1.4.1.5003.11.1.1.1.1.4',
  #'acActiveAlarmDateAndTimeDefinition' => 'SNMPv2-TC::DateAndTime',
  'acActiveAlarmName' => '1.3.6.1.4.1.5003.11.1.1.1.1.5',
  'acActiveAlarmTextualDescription' => '1.3.6.1.4.1.5003.11.1.1.1.1.6',
  #'acActiveAlarmTextualDescriptionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acActiveAlarmSource' => '1.3.6.1.4.1.5003.11.1.1.1.1.7',
  #'acActiveAlarmSourceDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acActiveAlarmSeverity' => '1.3.6.1.4.1.5003.11.1.1.1.1.8',
  'acActiveAlarmSeverityDefinition' => 'AC-FAULT-TC::AcAlarmSeverity',
  'acActiveAlarmEventType' => '1.3.6.1.4.1.5003.11.1.1.1.1.9',
  'acActiveAlarmEventTypeDefinition' => 'AC-FAULT-TC::AcAlarmEventType',
  'acActiveAlarmProbableCause' => '1.3.6.1.4.1.5003.11.1.1.1.1.10',
  'acActiveAlarmProbableCauseDefinition' => 'AC-FAULT-TC::AcAlarmProbableCause',
  'acActiveAlarmAdditionalInfo1' => '1.3.6.1.4.1.5003.11.1.1.1.1.11',
  #'acActiveAlarmAdditionalInfo1Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acActiveAlarmAdditionalInfo2' => '1.3.6.1.4.1.5003.11.1.1.1.1.12',
  #'acActiveAlarmAdditionalInfo2Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acActiveAlarmAdditionalInfo3' => '1.3.6.1.4.1.5003.11.1.1.1.1.13',
  #'acActiveAlarmAdditionalInfo3Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmHistory' => '1.3.6.1.4.1.5003.11.1.2',
  'acAlarmHistoryTable' => '1.3.6.1.4.1.5003.11.1.2.1',
  'acAlarmHistoryEntry' => '1.3.6.1.4.1.5003.11.1.2.1.1',
  'acAlarmHistorySequenceNumber' => '1.3.6.1.4.1.5003.11.1.2.1.1.1',
  'acAlarmHistorySysuptime' => '1.3.6.1.4.1.5003.11.1.2.1.1.2',
  #'acAlarmHistorySysuptimeDefinition' => 'SNMPv2-TC::TimeStamp',
  'acAlarmHistoryTrapOID' => '1.3.6.1.4.1.5003.11.1.2.1.1.3',
  'acAlarmHistoryDateAndTime' => '1.3.6.1.4.1.5003.11.1.2.1.1.4',
  #'acAlarmHistoryDateAndTimeDefinition' => 'SNMPv2-TC::DateAndTime',
  'acAlarmHistoryName' => '1.3.6.1.4.1.5003.11.1.2.1.1.5',
  'acAlarmHistoryTextualDescription' => '1.3.6.1.4.1.5003.11.1.2.1.1.6',
  #'acAlarmHistoryTextualDescriptionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmHistorySource' => '1.3.6.1.4.1.5003.11.1.2.1.1.7',
  #'acAlarmHistorySourceDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmHistorySeverity' => '1.3.6.1.4.1.5003.11.1.2.1.1.8',
  'acAlarmHistorySeverityDefinition' => 'AC-FAULT-TC::AcAlarmSeverity',
  'acAlarmHistoryEventType' => '1.3.6.1.4.1.5003.11.1.2.1.1.9',
  'acAlarmHistoryEventTypeDefinition' => 'AC-FAULT-TC::AcAlarmEventType',
  'acAlarmHistoryProbableCause' => '1.3.6.1.4.1.5003.11.1.2.1.1.10',
  'acAlarmHistoryProbableCauseDefinition' => 'AC-FAULT-TC::AcAlarmProbableCause',
  'acAlarmHistoryAdditionalInfo1' => '1.3.6.1.4.1.5003.11.1.2.1.1.11',
  #'acAlarmHistoryAdditionalInfo1Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmHistoryAdditionalInfo2' => '1.3.6.1.4.1.5003.11.1.2.1.1.12',
  #'acAlarmHistoryAdditionalInfo2Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmHistoryAdditionalInfo3' => '1.3.6.1.4.1.5003.11.1.2.1.1.13',
  #'acAlarmHistoryAdditionalInfo3Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmVarbinds' => '1.3.6.1.4.1.5003.11.1.3',
  'acAlarmVarbindsSequenceNumber' => '1.3.6.1.4.1.5003.11.1.3.1',
  'acAlarmVarbindsDateAndTime' => '1.3.6.1.4.1.5003.11.1.3.2',
  #'acAlarmVarbindsDateAndTimeDefinition' => 'SNMPv2-TC::DateAndTime',
  'acAlarmVarbindsAlarmName' => '1.3.6.1.4.1.5003.11.1.3.3',
  'acAlarmVarbindsTextualDescription' => '1.3.6.1.4.1.5003.11.1.3.4',
  #'acAlarmVarbindsTextualDescriptionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmVarbindsSource' => '1.3.6.1.4.1.5003.11.1.3.5',
  #'acAlarmVarbindsSourceDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmVarbindsSeverity' => '1.3.6.1.4.1.5003.11.1.3.6',
  'acAlarmVarbindsSeverityDefinition' => 'AC-FAULT-TC::AcAlarmSeverity',
  'acAlarmVarbindsEventType' => '1.3.6.1.4.1.5003.11.1.3.7',
  'acAlarmVarbindsEventTypeDefinition' => 'AC-FAULT-TC::AcAlarmEventType',
  'acAlarmVarbindsProbableCause' => '1.3.6.1.4.1.5003.11.1.3.8',
  'acAlarmVarbindsProbableCauseDefinition' => 'AC-FAULT-TC::AcAlarmProbableCause',
  'acAlarmVarbindsAdditionalInfo1' => '1.3.6.1.4.1.5003.11.1.3.9',
  #'acAlarmVarbindsAdditionalInfo1Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmVarbindsAdditionalInfo2' => '1.3.6.1.4.1.5003.11.1.3.10',
  #'acAlarmVarbindsAdditionalInfo2Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'acAlarmVarbindsAdditionalInfo3' => '1.3.6.1.4.1.5003.11.1.3.11',
  #'acAlarmVarbindsAdditionalInfo3Definition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'AcAlarm'} = {
};


$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'AC-ALARM-MIB'} =
    $Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'AcAlarm'};
$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'AC-ALARM-MIB'} =
    $Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'AcAlarm'};
$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_and_oids->{'AC-ALARM-MIB'} =
    $Monitoring::GLPlugin::SNMP::MibsAndOids::mib_and_oids->{'AcAlarm'};
$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'AC-ALARM-MIB'} =
    $Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'AcAlarm'};


