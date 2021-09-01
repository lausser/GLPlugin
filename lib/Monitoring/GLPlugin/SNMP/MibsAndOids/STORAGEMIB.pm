package Monitoring::GLPlugin::SNMP::MibsAndOids::STORAGEMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'STORAGE-MIB'} = {
  url => '',
  name => 'STORAGE-MIB',
};

#$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'STORAGE-MIB'} =

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'STORAGE-MIB'} = {
  'storage' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14',
  'storageProfileStatsTable' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1',
  'storageProfileStatsEntry' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1',
  'storageProfileOrgId' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.1',
  'storageProfileId' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.2',
  'storageProfileOrgName' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.3',
  'storageProfileName' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.4',
  'storageProfileFileOpenCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.5',
  'storageProfileFileCloseCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.6',
  'storageProfileFileOpenFailCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.7',
  'storageProfileFileWriteCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.8',
  'storageProfileFileReadCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.9',
  'storageProfileFileAsyncWriteCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.10',
  'storageProfileFileAsyncReadCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.11',
  'storageProfileAvailableHardDiskSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.12',
  'storageProfileUsedHardDiskSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.13',
  'storageProfileUsedHardDiskCommonPoolSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.14',
  'storageProfileHardDiskAllocationCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.15',
  'storageProfileHardDiskCmnPoolAllocationCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.16',
  'storageProfileHardDiskAllocationFailCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.17',
  'storageProfileAvailableRamDiskSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.18',
  'storageProfileUsedRamDiskSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.19',
  'storageProfileUsedRamDiskCommonPoolSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.20',
  'storageProfileRamDiskAllocationCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.21',
  'storageProfileRamDiskCmnPoolAllocationCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.22',
  'storageProfileRamDiskAllocationFailCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.1.1.23',
  'storageGlobalProfileStatsTable' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2',
  'storageGlobalProfileStatsEntry' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1',
  'storageGlobalProfileOrgId' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.1',
  'storageGlobalProfileId' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.2',
  'storageGlobalProfileOrgName' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.3',
  'storageGlobalProfileName' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.4',
  'storageGlobalProfileFileOpenCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.5',
  'storageGlobalProfileFileCloseCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.6',
  'storageGlobalProfileFileOpenFailCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.7',
  'storageGlobalProfileFileWriteCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.8',
  'storageGlobalProfileFileReadCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.9',
  'storageGlobalProfileFileAsyncWriteCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.10',
  'storageGlobalProfileFileAsyncReadCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.11',
  'storageGlobalProfileAvailableHardDiskSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.12',
  'storageGlobalProfileUsedHardDiskSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.13',
  'storageGlobalProfileHardDiskAllocationCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.14',
  'storageGlobalProfileHardDiskAllocationFailCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.15',
  'storageGlobalProfileAvailableRamDiskSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.16',
  'storageGlobalProfileUsedRamDiskSize' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.17',
  'storageGlobalProfileRamDiskAllocationCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.18',
  'storageGlobalProfileRamDiskAllocationFailCount' => '1.3.6.1.4.1.42359.2.2.1.2.1.3.14.2.1.19',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'STORAGE-MIB'} = {
};

