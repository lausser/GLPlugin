package Monitoring::GLPlugin::SNMP::MibsAndOids::BCNSYSTEMMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'BCN-SYSTEM-MIB'} = {
  url => '',
  name => 'BCN-SYSTEM-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'BCN-SYSTEM-MIB'} =
    '1.3.6.1.4.1.13315.3.2.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'BCN-SYSTEM-MIB'} = {
  'bcnSystem' => '1.3.6.1.4.1.13315.3.2',
  'bcnSystemMIB' => '1.3.6.1.4.1.13315.3.2.1',
  'bcnSystemObjects' => '1.3.6.1.4.1.13315.3.2.2',
  'bcnSysIdentification' => '1.3.6.1.4.1.13315.3.2.2.1',
  'bcnSysIdProduct' => '1.3.6.1.4.1.13315.3.2.2.1.1',
  'bcnSysIdOSRelease' => '1.3.6.1.4.1.13315.3.2.2.1.2',
  'bcnSysIdSerial' => '1.3.6.1.4.1.13315.3.2.2.1.3',
  'bcnSysIdServiceTag' => '1.3.6.1.4.1.13315.3.2.2.1.4',
  'bcnSysIdPlatform' => '1.3.6.1.4.1.13315.3.2.2.1.5',
  'bcnSysIdVendorPlatform' => '1.3.6.1.4.1.13315.3.2.2.1.6',
  'bcnSysIdServicesTable' => '1.3.6.1.4.1.13315.3.2.2.1.7',
  'bcnSysIdServicesEntry' => '1.3.6.1.4.1.13315.3.2.2.1.7.1',
  'bcnSysIdServicesIndex' => '1.3.6.1.4.1.13315.3.2.2.1.7.1.1',
  'bcnSysIdServicesOID' => '1.3.6.1.4.1.13315.3.2.2.1.7.1.2',
  'bcnSysIdServicesStateTS' => '1.3.6.1.4.1.13315.3.2.2.1.7.1.3',
  'bcnSysServices' => '1.3.6.1.4.1.13315.3.2.2.2',
  'bcnSysServDNSService' => '1.3.6.1.4.1.13315.3.2.2.2.1',
  'bcnSysServDHCPService' => '1.3.6.1.4.1.13315.3.2.2.2.2',
  'bcnSysServTFTPService' => '1.3.6.1.4.1.13315.3.2.2.2.3',
  'bcnSysServLicensing' => '1.3.6.1.4.1.13315.3.2.2.2.4',
  'bcnSysServTFTP' => '1.3.6.1.4.1.13315.3.2.2.2.5',
  'bcnSysServNTP' => '1.3.6.1.4.1.13315.3.2.2.2.6',
  'bcnSysServPowerSupply' => '1.3.6.1.4.1.13315.3.2.2.2.7',
  'bcnSysServNetworkInterface' => '1.3.6.1.4.1.13315.3.2.2.2.8',
  'bcnSysServHighAvailability' => '1.3.6.1.4.1.13315.3.2.2.2.9',
  'bcnSysServReplication' => '1.3.6.1.4.1.13315.3.2.2.2.10',
  'bcnSysServSystem' => '1.3.6.1.4.1.13315.3.2.2.2.11',
  'bcnSystemNotification' => '1.3.6.1.4.1.13315.3.2.3',
  'bcnSysNotificationEvents' => '1.3.6.1.4.1.13315.3.2.3.0',
  'bcnSysNotificationData' => '1.3.6.1.4.1.13315.3.2.3.1',
  'bcnSysSerOperState' => '1.3.6.1.4.1.13315.3.2.3.1.1',
  'bcnSysSerOperStateDefinition' => 'BCN-SYSTEM-MIB::bcnSysSerOperState',
  'bcnSysAlarmSeverity' => '1.3.6.1.4.1.13315.3.2.3.1.2',
  'bcnSysAlarmInfo' => '1.3.6.1.4.1.13315.3.2.3.1.3',
  'bcnSystemConformance' => '1.3.6.1.4.1.13315.3.2.4',
  'bcnSysServliances' => '1.3.6.1.4.1.13315.3.2.4.1',
  'bcnSysGroups' => '1.3.6.1.4.1.13315.3.2.4.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'BCN-SYSTEM-MIB'} = {
  'bcnSysSerOperState' => {
    '1' => 'start',
    '2' => 'reboot',
    '3' => 'shutdown',
  },
};
