package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOSYSTEMMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-SYSTEM-MIB'} = {
  url => '',
  name => 'CISCO-SYSTEM-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-SYSTEM-MIB'} =
  '1.3.6.1.4.1.9.9.131';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-SYSTEM-MIB'} = {
  'ciscoSystemMIB' => '1.3.6.1.4.1.9.9.131',
  'ciscoSystemMIBObjects' => '1.3.6.1.4.1.9.9.131.1',
  'csyClock' => '1.3.6.1.4.1.9.9.131.1.1',
  'csyClockDateAndTime' => '1.3.6.1.4.1.9.9.131.1.1.1',
  #'csyClockDateAndTimeDefinition' => 'SNMPv2-TC::DateAndTime',
  'csyClockLostOnReboot' => '1.3.6.1.4.1.9.9.131.1.1.2',
  'csyClockLostOnRebootDefinition' => 'SNMPv2-TC::TruthValue',
  'csyLocation' => '1.3.6.1.4.1.9.9.131.1.2',
  'csyLocationCountry' => '1.3.6.1.4.1.9.9.131.1.2.1',
  #'csyLocationCountryDefinition' => 'CISCO-TC::CountryCode',
  'csySummerTime' => '1.3.6.1.4.1.9.9.131.1.3',
  'csySummerTimeStatus' => '1.3.6.1.4.1.9.9.131.1.3.1',
  'csySummerTimeStatusDefinition' => 'SNMPv2-TC::TruthValue',
  'csySummerTimeOffset' => '1.3.6.1.4.1.9.9.131.1.3.2',
  'csySummerTimeRecurringStart' => '1.3.6.1.4.1.9.9.131.1.3.3',
  'csySummerTimeRecurringEnd' => '1.3.6.1.4.1.9.9.131.1.3.4',
  'csyStandardTmZnGMTOffset' => '1.3.6.1.4.1.9.9.131.1.3.5',
  'csySummerTmZnGMTOffset' => '1.3.6.1.4.1.9.9.131.1.3.6',
  'csyScheduledReset' => '1.3.6.1.4.1.9.9.131.1.4',
  'csyScheduledResetTime' => '1.3.6.1.4.1.9.9.131.1.4.1',
  #'csyScheduledResetTimeDefinition' => 'SNMPv2-TC::DateAndTime',
  'csyScheduledResetAction' => '1.3.6.1.4.1.9.9.131.1.4.2',
  'csyScheduledResetActionDefinition' => 'CISCO-SYSTEM-MIB::csyScheduledResetAction',
  'csyScheduledResetReason' => '1.3.6.1.4.1.9.9.131.1.4.3',
  #'csyScheduledResetReasonDefinition' => 'SNMPv2-TC::DisplayString',
  'csySnmpAuthentication' => '1.3.6.1.4.1.9.9.131.1.5',
  'csySnmpAuthFail' => '1.3.6.1.4.1.9.9.131.1.5.1',
  #'csySnmpAuthFailDefinition' => 'SNMPv2-SMI::Counter32',
  'csySnmpAuthFailAddressType' => '1.3.6.1.4.1.9.9.131.1.5.2',
  'csySnmpAuthFailAddressTypeDefinition' => 'INET-ADDRESS-MIB::InetAddressType',
  'csySnmpAuthFailAddress' => '1.3.6.1.4.1.9.9.131.1.5.3',
  #'csySnmpAuthFailAddressDefinition' => 'INET-ADDRESS-MIB::InetAddress',
  'csyGeneral' => '1.3.6.1.4.1.9.9.131.1.6',
  'csyNotificationsEnable' => '1.3.6.1.4.1.9.9.131.1.6.1',
  'csyNotificationsEnableDefinition' => 'SNMPv2-TC::TruthValue',
  'ciscoSystemMIBNotificationPrefix' => '1.3.6.1.4.1.9.9.131.2',
  'ciscoSystemMIBNotifications' => '1.3.6.1.4.1.9.9.131.2.0',
  'ciscoSystemMIBConformance' => '1.3.6.1.4.1.9.9.131.3',
  'ciscoSystemMIBCompliances' => '1.3.6.1.4.1.9.9.131.3.1',
  'ciscoSystemMIBGroups' => '1.3.6.1.4.1.9.9.131.3.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-SYSTEM-MIB'} = {
  'csyScheduledResetAction' => {
    '1' => 'reset',
    '2' => 'resetMinDown',
  },
};
