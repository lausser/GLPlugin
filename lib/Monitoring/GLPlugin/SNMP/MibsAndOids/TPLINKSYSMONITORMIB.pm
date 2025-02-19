package Monitoring::GLPlugin::SNMP::MibsAndOids::TPLINKSYSMONITORMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'TPLINK-SYSMONITOR-MIB'} = {
  url => '',
  name => 'TPLINK-SYSMONITOR-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'TPLINK-SYSMONITOR-MIB'} =  '1.3.6.1.4.1.11863.6.4';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'TPLINK-SYSMONITOR-MIB'} = {
  'tplinkSysMonitorMIB' => '1.3.6.1.4.1.11863.6.4',
  'tplinkSysMonitorMIBObjects' => '1.3.6.1.4.1.11863.6.4.1',
  'tpSysMonitorCpu' => '1.3.6.1.4.1.11863.6.4.1.1',
  'tpSysMonitorCpuTable' => '1.3.6.1.4.1.11863.6.4.1.1.1',
  'tpSysMonitorCpuEntry' => '1.3.6.1.4.1.11863.6.4.1.1.1.1',
  'tpSysMonitorCpuUnitNumber' => '1.3.6.1.4.1.11863.6.4.1.1.1.1.1',
  'tpSysMonitorCpu5Seconds' => '1.3.6.1.4.1.11863.6.4.1.1.1.1.2',
  'tpSysMonitorCpu1Minute' => '1.3.6.1.4.1.11863.6.4.1.1.1.1.3',
  'tpSysMonitorCpu5Minutes' => '1.3.6.1.4.1.11863.6.4.1.1.1.1.4',
  'tpSysMonitorMemory' => '1.3.6.1.4.1.11863.6.4.1.2',
  'tpSysMonitorMemoryTable' => '1.3.6.1.4.1.11863.6.4.1.2.1',
  'tpSysMonitorMemoryEntry' => '1.3.6.1.4.1.11863.6.4.1.2.1.1',
  'tpSysMonitorMemoryUnitNumber' => '1.3.6.1.4.1.11863.6.4.1.2.1.1.1',
  'tpSysMonitorMemoryUtilization' => '1.3.6.1.4.1.11863.6.4.1.2.1.1.2',
  'tplinkSysMonitorNotifications' => '1.3.6.1.4.1.11863.6.4.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'TPLINK-SYSMONITOR-MIB'} = {
};
