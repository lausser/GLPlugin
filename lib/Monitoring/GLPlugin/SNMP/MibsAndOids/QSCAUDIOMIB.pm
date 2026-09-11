package Monitoring::GLPlugin::SNMP::MibsAndOids::QSCAUDIOMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'QSCAUDIO-MIB'} = {
  url => '',
  name => 'QSCAUDIO-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'QSCAUDIO-MIB'} =
    '1.3.6.1.4.1.1536.1.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'QSCAUDIO-MIB'} = {
  'qscAudio' => '1.3.6.1.4.1.1536',
  'products' => '1.3.6.1.4.1.1536.1',
  'allProducts' => '1.3.6.1.4.1.1536.1.1',
  'firmware' => '1.3.6.1.4.1.1536.1.1.2',
  'firmwareMajorVersion' => '1.3.6.1.4.1.1536.1.1.2.1',
  'firmwareMinorVersion' => '1.3.6.1.4.1.1536.1.1.2.2',
  'firmwareBuildVersion' => '1.3.6.1.4.1.1536.1.1.2.3',
  'dspProcessors' => '1.3.6.1.4.1.1536.1.2',
  'qsys' => '1.3.6.1.4.1.1536.1.2.2',
  'design' => '1.3.6.1.4.1.1536.1.2.2.1',
  'qsysDesignName' => '1.3.6.1.4.1.1536.1.2.2.1.1',
  'inventory' => '1.3.6.1.4.1.1536.1.2.2.2',
  'inventoryTable' => '1.3.6.1.4.1.1536.1.2.2.2.1',
  'inventoryEntry' => '1.3.6.1.4.1.1536.1.2.2.2.1.1',
  'invTableIndex' => '1.3.6.1.4.1.1536.1.2.2.2.1.1.1',
  'invDeviceName' => '1.3.6.1.4.1.1536.1.2.2.2.1.1.2',
  'invDeviceType' => '1.3.6.1.4.1.1536.1.2.2.2.1.1.3',
  'invDeviceModel' => '1.3.6.1.4.1.1536.1.2.2.2.1.1.4',
  'invLocation' => '1.3.6.1.4.1.1536.1.2.2.2.1.1.5',
  'invDeviceStatus' => '1.3.6.1.4.1.1536.1.2.2.2.1.1.6',
  'invDeviceStatusValue' => '1.3.6.1.4.1.1536.1.2.2.2.1.1.7',
  'snapshot' => '1.3.6.1.4.1.1536.1.2.2.3',
  'snapshotTable' => '1.3.6.1.4.1.1536.1.2.2.3.1',
  'snapshotEntry' => '1.3.6.1.4.1.1536.1.2.2.3.1.1',
  'ssTableIndex' => '1.3.6.1.4.1.1536.1.2.2.3.1.1.1',
  'ssSnapshotName' => '1.3.6.1.4.1.1536.1.2.2.3.1.1.2',
  'ssTotalSnapshots' => '1.3.6.1.4.1.1536.1.2.2.3.1.1.3',
  'ssActiveSnapshot' => '1.3.6.1.4.1.1536.1.2.2.3.1.1.4',
  'ssRampTimeSec' => '1.3.6.1.4.1.1536.1.2.2.3.1.1.5',
  #'ssRampTimeSecDefinition' => 'QSCAUDIO-MIB::Float',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'QSCAUDIO-MIB'} = {
};
