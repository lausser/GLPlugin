package Monitoring::GLPlugin::SNMP::MibsAndOids::BCNDNSMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'BCN-DNS-MIB'} = {
  url => '',
  name => 'BCN-DNS-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'BCN-DNS-MIB'} =
    '1.3.6.1.4.1.13315.3.1.2.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'BCN-DNS-MIB'} = {
  'bcnDns' => '1.3.6.1.4.1.13315.3.1.2',
  'bcnDnsMIB' => '1.3.6.1.4.1.13315.3.1.2.1',
  'bcnDnsObjects' => '1.3.6.1.4.1.13315.3.1.2.2',
  'bcnDnsServiceStatus' => '1.3.6.1.4.1.13315.3.1.2.2.1',
  'bcnDnsSerOperState' => '1.3.6.1.4.1.13315.3.1.2.2.1.1',
  'bcnDnsSerOperStateDefinition' => 'BCN-DNS-MIB::bcnDnsSerOperState',
  'bcnDnsSerNumberOfZones' => '1.3.6.1.4.1.13315.3.1.2.2.1.2',
  'bcnDnsSerTransfersRunning' => '1.3.6.1.4.1.13315.3.1.2.2.1.3',
  'bcnDnsSerTransfersDeferred' => '1.3.6.1.4.1.13315.3.1.2.2.1.4',
  'bcnDnsSerSOAQueriesInProgress' => '1.3.6.1.4.1.13315.3.1.2.2.1.5',
  'bcnDnsSerQueryLogging' => '1.3.6.1.4.1.13315.3.1.2.2.1.6',
  'bcnDnsSerQueryLoggingDefinition' => 'BCN-DNS-MIB::bcnDnsSerQueryLogging',
  'bcnDnsSerDebugLevel' => '1.3.6.1.4.1.13315.3.1.2.2.1.7',
  'bcnDnsServiceStatistics' => '1.3.6.1.4.1.13315.3.1.2.2.2',
  'bcnDnsStatServer' => '1.3.6.1.4.1.13315.3.1.2.2.2.1',
  'bcnDnsStatSrvQrySuccess' => '1.3.6.1.4.1.13315.3.1.2.2.2.1.1',
  'bcnDnsStatSrvQryReferral' => '1.3.6.1.4.1.13315.3.1.2.2.2.1.2',
  'bcnDnsStatSrvQryNXRRSet' => '1.3.6.1.4.1.13315.3.1.2.2.2.1.3',
  'bcnDnsStatSrvQryNXDomain' => '1.3.6.1.4.1.13315.3.1.2.2.2.1.4',
  'bcnDnsStatSrvQryRecursion' => '1.3.6.1.4.1.13315.3.1.2.2.2.1.5',
  'bcnDnsStatSrvQryFailure' => '1.3.6.1.4.1.13315.3.1.2.2.2.1.6',
  'bcnDnsNotification' => '1.3.6.1.4.1.13315.3.1.2.3',
  'bcnDnsNotificationEvents' => '1.3.6.1.4.1.13315.3.1.2.3.0',
  'bcnDnsNotificationData' => '1.3.6.1.4.1.13315.3.1.2.3.1',
  'bcnDnsAlarmSeverity' => '1.3.6.1.4.1.13315.3.1.2.3.1.1',
  'bcnDnsAlarmInfo' => '1.3.6.1.4.1.13315.3.1.2.3.1.2',
  'bcnDnsConformance' => '1.3.6.1.4.1.13315.3.1.2.4',
  'bcnDnsServiceCompliances' => '1.3.6.1.4.1.13315.3.1.2.4.1',
  'bcnDnsServiceGroups' => '1.3.6.1.4.1.13315.3.1.2.4.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'BCN-DNS-MIB'} = {
  'bcnDnsSerOperState' => {
    '1' => 'running',
    '2' => 'notRunning',
    '3' => 'starting',
    '4' => 'stopping',
    '5' => 'fault',
  },
  'bcnDnsSerQueryLogging' => {
    '1' => 'on',
    '2' => 'off',
  },
};
