package Monitoring::GLPlugin::SNMP::MibsAndOids::ONEACCESSSYSMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'ONEACCESS-SYS-MIB'} = {
  url => '',
  name => 'ONEACCESS-SYS-MIB',
};

# The MIB module identifier (oacSysMIBModule, 1.3.6.1.4.1.13191.1.100.671)
# is never populated with data on OneOS devices, so the implements_mib()
# next-request probe can never succeed with it. The MIB's data lives under
# oacExpIMSys (10.3.3); probing there finds data on the reference device.
$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'ONEACCESS-SYS-MIB'} =
  '1.3.6.1.4.1.13191.10.3.3';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'ONEACCESS-SYS-MIB'} = {
  'oacSysMIBModule' => '1.3.6.1.4.1.13191.1.100.671',
  'oacExpIMSysStatistics' => '1.3.6.1.4.1.13191.10.3.3.1',
  'oacSysMemStatistics' => '1.3.6.1.4.1.13191.10.3.3.1.1',
  'oacSysMemoryFree' => '1.3.6.1.4.1.13191.10.3.3.1.1.1',
  'oacSysMemoryAllocated' => '1.3.6.1.4.1.13191.10.3.3.1.1.2',
  'oacSysMemoryTotal' => '1.3.6.1.4.1.13191.10.3.3.1.1.3',
  'oacSysMemoryUsed' => '1.3.6.1.4.1.13191.10.3.3.1.1.4',
  'oacSysCpuStatistics' => '1.3.6.1.4.1.13191.10.3.3.1.2',
  'oacSysCpuUsed' => '1.3.6.1.4.1.13191.10.3.3.1.2.1',
  'oacSysCpuUsedCoresCount' => '1.3.6.1.4.1.13191.10.3.3.1.2.2',
  'oacSysCpuUsedCoresTable' => '1.3.6.1.4.1.13191.10.3.3.1.2.3',
  'oacSysCpuUsedCoresEntry' => '1.3.6.1.4.1.13191.10.3.3.1.2.3.1',
  'oacSysCpuUsedIndex' => '1.3.6.1.4.1.13191.10.3.3.1.2.3.1.1',
  'oacSysCpuUsedCoreType' => '1.3.6.1.4.1.13191.10.3.3.1.2.3.1.2',
  'oacSysCpuUsedCoreTypeDefinition' => 'ONEACCESS-SYS-MIB::OASysCoreType',
  'oacSysCpuUsedValue' => '1.3.6.1.4.1.13191.10.3.3.1.2.3.1.3',
  'oacSysCpuUsedOneMinuteValue' => '1.3.6.1.4.1.13191.10.3.3.1.2.3.1.4',
  'oacSysLastRebootCause' => '1.3.6.1.4.1.13191.10.3.3.1.3',
  #'oacSysLastRebootCauseDefinition' => 'SNMPv2-TC::DisplayString',
  'oacSysSecureCrashlogCount' => '1.3.6.1.4.1.13191.10.3.3.1.100',
  'oacSysStartCaused' => '1.3.6.1.4.1.13191.10.3.3.1.200',
  'oacExpIMSysHardwareDescription' => '1.3.6.1.4.1.13191.10.3.3.2',
  'oacSysIMSysMainBoard' => '1.3.6.1.4.1.13191.10.3.3.2.1',
  'oacSysIMSysMainIdentifier' => '1.3.6.1.4.1.13191.10.3.3.2.1.1',
  'oacSysIMSysMainManufacturedIdentity' => '1.3.6.1.4.1.13191.10.3.3.2.1.2',
  'oacSysIMSysMainManufacturedDate' => '1.3.6.1.4.1.13191.10.3.3.2.1.3',
  'oacSysIMSysMainCPU' => '1.3.6.1.4.1.13191.10.3.3.2.1.4',
  'oacSysIMSysMainBSPVersion' => '1.3.6.1.4.1.13191.10.3.3.2.1.5',
  'oacSysIMSysMainBootVersion' => '1.3.6.1.4.1.13191.10.3.3.2.1.6',
  'oacSysIMSysMainBootDateCreation' => '1.3.6.1.4.1.13191.10.3.3.2.1.7',
  'oacExpIMSysHwComponents' => '1.3.6.1.4.1.13191.10.3.3.2.2',
  'oacExpIMSysHwComponentsCount' => '1.3.6.1.4.1.13191.10.3.3.2.2.1',
  'oacExpIMSysHwComponentsTable' => '1.3.6.1.4.1.13191.10.3.3.2.2.2',
  'oacExpIMSysHwComponentsEntry' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1',
  'oacExpIMSysHwcIndex' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1.1',
  'oacExpIMSysHwcClass' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1.2',
  'oacExpIMSysHwcClassDefinition' => 'ONEACCESS-SYS-MIB::OASysHwcClass',
  'oacExpIMSysHwcType' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1.3',
  'oacExpIMSysHwcTypeDefinition' => 'ONEACCESS-SYS-MIB::OASysHwcType',
  'oacExpIMSysHwcDescription' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1.4',
  #'oacExpIMSysHwcDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'oacExpIMSysHwcSerialNumber' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1.5',
  #'oacExpIMSysHwcSerialNumberDefinition' => 'SNMPv2-TC::DisplayString',
  'oacExpIMSysHwcManufacturer' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1.6',
  #'oacExpIMSysHwcManufacturerDefinition' => 'SNMPv2-TC::DisplayString',
  'oacExpIMSysHwcManufacturedDate' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1.7',
  'oacExpIMSysHwcProductName' => '1.3.6.1.4.1.13191.10.3.3.2.2.2.1.8',
  'oacExpIMSysFactory' => '1.3.6.1.4.1.13191.10.3.3.2.3',
  'oacExpIMSysFactorySupplierID' => '1.3.6.1.4.1.13191.10.3.3.2.3.1',
  'oacExpIMSysFactoryProductSalesCode' => '1.3.6.1.4.1.13191.10.3.3.2.3.2',
  'oacExpIMSysFactoryHwRevision' => '1.3.6.1.4.1.13191.10.3.3.2.3.3',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'ONEACCESS-SYS-MIB'} = {
  'OASysHwcClass' => {
    '0' => 'board',
    '1' => 'cpu',
    '2' => 'slot',
  },
  'OASysHwcType' => {
    '0' => 'mainboard',
    '1' => 'microprocessor',
    '2' => 'ram',
    '3' => 'flash',
    '4' => 'dsp',
    '5' => 'uplink',
    '6' => 'module',
  },
  'OASysCoreType' => {
    '0' => 'controlplane',
    '1' => 'dataforwarding',
    '2' => 'application',
    '3' => 'mixed',
  },
  'OASysCoreType' => {
    '0' => 'controlplane',
    '1' => 'dataforwarding',
    '2' => 'application',
    '3' => 'mixed',
  },
  'OASysHwcClass' => {
    '0' => 'board',
    '1' => 'cpu',
    '2' => 'slot',
  },
  'OASysHwcType' => {
    '0' => 'mainboard',
    '1' => 'microprocessor',
    '2' => 'ram',
    '3' => 'flash',
    '4' => 'dsp',
    '5' => 'uplink',
    '6' => 'module',
  },
};
