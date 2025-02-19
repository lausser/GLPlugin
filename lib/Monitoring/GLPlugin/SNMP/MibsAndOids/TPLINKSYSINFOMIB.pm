package Monitoring::GLPlugin::SNMP::MibsAndOids::TPLINKSYSINFOMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'TPLINK-SYSINFO-MIB'} = {
  url => '',
  name => 'TPLINK-SYSINFO-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'TPLINK-SYSINFO-MIB'} =
  '1.3.6.1.4.1.11863.6.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'TPLINK-SYSINFO-MIB'} = {
  'tplinkSysInfoMIB' => '1.3.6.1.4.1.11863.6.1',
  'tplinkSysInfoMIBObjects' => '1.3.6.1.4.1.11863.6.1.1',
  'tpSysInfoDescription' => '1.3.6.1.4.1.11863.6.1.1.1',
  'tpSysInfoHostName' => '1.3.6.1.4.1.11863.6.1.1.2',
  'tpSysInfoLocation' => '1.3.6.1.4.1.11863.6.1.1.3',
  'tpSysInfoContact' => '1.3.6.1.4.1.11863.6.1.1.4',
  'tpSysInfoHwVersion' => '1.3.6.1.4.1.11863.6.1.1.5',
  'tpSysInfoSwVersion' => '1.3.6.1.4.1.11863.6.1.1.6',
  'tpSysInfoMacAddr' => '1.3.6.1.4.1.11863.6.1.1.7',
  'tpSysInfoSerialNum' => '1.3.6.1.4.1.11863.6.1.1.8',
  'tpSysInfoUpTime' => '1.3.6.1.4.1.11863.6.1.1.9',
  #'tpSysInfoUpTimeDefinition' => 'SNMPv2-TC::TimeStamp',
  'tpSysInfoPortTable' => '1.3.6.1.4.1.11863.6.1.1.11',
  'tpSysInfoPortEntry' => '1.3.6.1.4.1.11863.6.1.1.11.1',
  'tpSysInfoPortRxUtilization' => '1.3.6.1.4.1.11863.6.1.1.11.1.1',
  'tpSysInfoPortTxUtilization' => '1.3.6.1.4.1.11863.6.1.1.11.1.2',
  'tplinkSysInfoNotifications' => '1.3.6.1.4.1.11863.6.1.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'TPLINK-SYSINFO-MIB'} = {
};
