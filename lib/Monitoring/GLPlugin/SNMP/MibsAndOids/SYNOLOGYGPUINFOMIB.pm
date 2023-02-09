package Monitoring::GLPlugin::SNMP::MibsAndOids::SYNOLOGYGPUINFOMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'SYNOLOGY-GPUINFO-MIB'} = {
  url => '',
  name => 'SYNOLOGY-GPUINFO-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'SYNOLOGY-GPUINFO-MIB'} =
  '1.3.6.1.4.1.6574.108';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'SYNOLOGY-GPUINFO-MIB'} = {
  'synology' => '1.3.6.1.4.1.6574',
  'gpuInfo' => '1.3.6.1.4.1.6574.108',
  'gpuInfoSupported' => '1.3.6.1.4.1.6574.108.1',
  'gpuUtilization' => '1.3.6.1.4.1.6574.108.2',
  'gpuMemoryUtilization' => '1.3.6.1.4.1.6574.108.3',
  'gpuMemoryFree' => '1.3.6.1.4.1.6574.108.4',
  'gpuMemoryUsed' => '1.3.6.1.4.1.6574.108.5',
  'gpuMemoryTotal' => '1.3.6.1.4.1.6574.108.6',
  'gpuInfoConformance' => '1.3.6.1.4.1.6574.108.7',
  'gpuInfoCompliances' => '1.3.6.1.4.1.6574.108.7.1',
  'gpuInfoGroups' => '1.3.6.1.4.1.6574.108.7.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'SYNOLOGY-GPUINFO-MIB'} = {
};
