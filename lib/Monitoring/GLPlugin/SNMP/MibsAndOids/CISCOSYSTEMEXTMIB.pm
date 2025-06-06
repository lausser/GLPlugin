package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOSYSTEMEXTMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-SYSTEM-EXT-MIB'} = {
  url => '',
  name => 'CISCO-SYSTEM-EXT-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-SYSTEM-EXT-MIB'} =
  '1.3.6.1.4.1.9.9.305';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-SYSTEM-EXT-MIB'} = {
  'ciscoSystemExtMIB' => '1.3.6.1.4.1.9.9.305',
  'ciscoSystemExtMIBNotifsPrefix' => '1.3.6.1.4.1.9.9.305.0',
  'ciscoSystemExtMIBObjects' => '1.3.6.1.4.1.9.9.305.1',
  'ciscoSysInfoGroup' => '1.3.6.1.4.1.9.9.305.1.1',
  'cseSysCPUUtilization' => '1.3.6.1.4.1.9.9.305.1.1.1',
  'cseSysMemoryUtilization' => '1.3.6.1.4.1.9.9.305.1.1.2',
  'cseSysConfLastChange' => '1.3.6.1.4.1.9.9.305.1.1.3',
  #'cseSysConfLastChangeDefinition' => 'SNMPv2-TC::DateAndTime',
  'cseSysAutoSync' => '1.3.6.1.4.1.9.9.305.1.1.4',
  'cseSysAutoSyncDefinition' => 'CISCO-SYSTEM-EXT-MIB::cseSysAutoSync',
  'cseSysAutoSyncState' => '1.3.6.1.4.1.9.9.305.1.1.5',
  'cseSysAutoSyncStateDefinition' => 'CISCO-SYSTEM-EXT-MIB::cseSysAutoSyncState',
  'cseWriteErase' => '1.3.6.1.4.1.9.9.305.1.1.6',
  'cseWriteEraseDefinition' => 'CISCO-SYSTEM-EXT-MIB::cseWriteErase',
  'cseSysConsolePortStatus' => '1.3.6.1.4.1.9.9.305.1.1.7',
  'cseSysConsolePortStatusDefinition' => 'CISCO-SYSTEM-EXT-MIB::cseSysConsolePortStatus',
  'cseSysTelnetServiceActivation' => '1.3.6.1.4.1.9.9.305.1.1.8',
  'cseSysTelnetServiceActivationDefinition' => 'SNMPv2-TC::TruthValue',
  'cseSysFIPSModeActivation' => '1.3.6.1.4.1.9.9.305.1.1.9',
  'cseSysFIPSModeActivationDefinition' => 'SNMPv2-TC::TruthValue',
  'cseSysUpTime' => '1.3.6.1.4.1.9.9.305.1.1.10',
  #'cseSysUpTimeDefinition' => 'CISCO-TC::TimeIntervalSec',
  'ciscoSysErrorGroup' => '1.3.6.1.4.1.9.9.305.1.2',
  'cseSnmpErrorTable' => '1.3.6.1.4.1.9.9.305.1.2.1',
  'cseSnmpErrorEntry' => '1.3.6.1.4.1.9.9.305.1.2.1.1',
  'cseSnmpErrorAddressType' => '1.3.6.1.4.1.9.9.305.1.2.1.1.1',
  'cseSnmpErrorAddressTypeDefinition' => 'INET-ADDRESS-MIB::InetAddressType',
  'cseSnmpErrorAddress' => '1.3.6.1.4.1.9.9.305.1.2.1.1.2',
  #'cseSnmpErrorAddressDefinition' => 'INET-ADDRESS-MIB::InetAddress',
  'cseSnmpErrorRequestId' => '1.3.6.1.4.1.9.9.305.1.2.1.1.3',
  'cseSnmpErrorCode' => '1.3.6.1.4.1.9.9.305.1.2.1.1.4',
  'cseSnmpErrorDescription' => '1.3.6.1.4.1.9.9.305.1.2.1.1.5',
  #'cseSnmpErrorDescriptionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'ciscoHaGroup' => '1.3.6.1.4.1.9.9.305.1.3',
  'cseHaRestartReason' => '1.3.6.1.4.1.9.9.305.1.3.2',
  'cseHaRestartReasonDefinition' => 'CISCO-SYSTEM-EXT-MIB::CseHaRestartReason',
  'cseHaRestartStateless' => '1.3.6.1.4.1.9.9.305.1.3.3',
  'cseHaRestartStatelessDefinition' => 'SNMPv2-TC::TruthValue',
  'cseHaRestartService' => '1.3.6.1.4.1.9.9.305.1.3.4',
  'cseHaNotification' => '1.3.6.1.4.1.9.9.305.1.3.5',
  'cseHaNotificationPrefix' => '1.3.6.1.4.1.9.9.305.1.3.5.0',
  'cseHaShutDownReason' => '1.3.6.1.4.1.9.9.305.1.3.6',
  'ciscoSwFailureGroup' => '1.3.6.1.4.1.9.9.305.1.4',
  'cseSwCorePath' => '1.3.6.1.4.1.9.9.305.1.4.1',
  'cseSwCoresTable' => '1.3.6.1.4.1.9.9.305.1.4.2',
  'cseSwCoresEntry' => '1.3.6.1.4.1.9.9.305.1.4.2.1',
  'cseSwCoresModule' => '1.3.6.1.4.1.9.9.305.1.4.2.1.1',
  #'cseSwCoresModuleDefinition' => 'CISCO-TC::EntPhysicalIndexOrZero',
  'cseSwCoresProcName' => '1.3.6.1.4.1.9.9.305.1.4.2.1.2',
  'cseSwCoresInstance' => '1.3.6.1.4.1.9.9.305.1.4.2.1.3',
  'cseSwCoresPID' => '1.3.6.1.4.1.9.9.305.1.4.2.1.4',
  'cseSwCoresTimeCreated' => '1.3.6.1.4.1.9.9.305.1.4.2.1.5',
  #'cseSwCoresTimeCreatedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cseSwCoresSlotNum' => '1.3.6.1.4.1.9.9.305.1.4.2.1.6',
  'cseSwCoresFileName' => '1.3.6.1.4.1.9.9.305.1.4.2.1.7',
  #'cseSwCoresFileNameDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cseFailNotification' => '1.3.6.1.4.1.9.9.305.1.4.3',
  'cseFailNotificationPrefix' => '1.3.6.1.4.1.9.9.305.1.4.3.0',
  'ciscoSwFailureNotifControl' => '1.3.6.1.4.1.9.9.305.1.5',
  'ciscoSwFailureNotifEnable' => '1.3.6.1.4.1.9.9.305.1.5.1',
  'ciscoSwFailureNotifEnableDefinition' => 'SNMPv2-TC::TruthValue',
  'ciscoSystemExtMIBConformance' => '1.3.6.1.4.1.9.9.305.2',
  'ciscoSystemExtMIBCompliances' => '1.3.6.1.4.1.9.9.305.2.1',
  'ciscoSystemExtMIBGroups' => '1.3.6.1.4.1.9.9.305.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-SYSTEM-EXT-MIB'} = {
  'cseSysAutoSync' => {
    '1' => 'sync',
    '2' => 'noSync',
  },
  'cseSysConsolePortStatus' => {
    '1' => 'connected',
    '2' => 'notConnected',
  },
  'cseWriteErase' => {
    '1' => 'noOp',
    '2' => 'eraseAll',
  },
  'cseSysAutoSyncState' => {
    '1' => 'inProgress',
    '2' => 'succeeded',
    '3' => 'failed',
    '4' => 'notStarted',
  },
  'CseHaRestartReason' => {
    '1' => 'unknown',
    '2' => 'ungracefulExit',
    '3' => 'otherSignal',
    '4' => 'sigterm',
    '5' => 'softwareUpgrade',
    '6' => 'configUpdate',
    '7' => 'configRemove',
    '8' => 'shutdown',
    '9' => 'aborted',
    '10' => 'heartbeatFailure',
    '11' => 'userTerminate',
    '12' => 'gracefulExit',
    '13' => 'noCallHomeFailure',
    '14' => 'serviceTimeout',
  },
  'CseHaRestartReason' => {
    '1' => 'unknown',
    '2' => 'ungracefulExit',
    '3' => 'otherSignal',
    '4' => 'sigterm',
    '5' => 'softwareUpgrade',
    '6' => 'configUpdate',
    '7' => 'configRemove',
    '8' => 'shutdown',
    '9' => 'aborted',
    '10' => 'heartbeatFailure',
    '11' => 'userTerminate',
    '12' => 'gracefulExit',
    '13' => 'noCallHomeFailure',
    '14' => 'serviceTimeout',
  },
};
