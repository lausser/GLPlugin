package Monitoring::GLPlugin::SNMP::MibsAndOids::NASMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'NAS-MIB'} = {
  url => '',
  name => 'NAS-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'NAS-MIB'} =
  '1.3.6.1.4.1.24681';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'NAS-MIB'} = {
  'storage' => '1.3.6.1.4.1.24681',
  'storageSystem' => '1.3.6.1.4.1.24681.1',
  'systemEventMsg' => '1.3.6.1.4.1.24681.1.1',
  'eventInformMsg' => '1.3.6.1.4.1.24681.1.1.101',
  'eventWarningMsg' => '1.3.6.1.4.1.24681.1.1.102',
  'eventErrorMsg' => '1.3.6.1.4.1.24681.1.1.103',
  'systemInfo' => '1.3.6.1.4.1.24681.1.2',
  'systemCPU-Usage' => '1.3.6.1.4.1.24681.1.2.1',
  'systemTotalMem' => '1.3.6.1.4.1.24681.1.2.2',
  'systemFreeMem' => '1.3.6.1.4.1.24681.1.2.3',
  'systemUptime' => '1.3.6.1.4.1.24681.1.2.4',
  'cpu-Temperature' => '1.3.6.1.4.1.24681.1.2.5',
  'systemTemperature' => '1.3.6.1.4.1.24681.1.2.6',
  'ifNumber' => '1.3.6.1.4.1.24681.1.2.8',
  'systemIfTable' => '1.3.6.1.4.1.24681.1.2.9',
  'systemIfEntry' => '1.3.6.1.4.1.24681.1.2.9.1',
  #'ifEntry' => '1.3.6.1.4.1.24681.1.2.9.1',
  'ifIndex' => '1.3.6.1.4.1.24681.1.2.9.1.1',
  'ifDescr' => '1.3.6.1.4.1.24681.1.2.9.1.2',
  'ifPacketsReceived' => '1.3.6.1.4.1.24681.1.2.9.1.3',
  'ifPacketsSent' => '1.3.6.1.4.1.24681.1.2.9.1.4',
  'ifErrorPackets' => '1.3.6.1.4.1.24681.1.2.9.1.5',
  'hdNumber' => '1.3.6.1.4.1.24681.1.2.10',
  'systemHdTable' => '1.3.6.1.4.1.24681.1.2.11',
  'systemHdEntry' => '1.3.6.1.4.1.24681.1.2.11.1',
  #'hdEntry' => '1.3.6.1.4.1.24681.1.2.11.1',
  'hdIndex' => '1.3.6.1.4.1.24681.1.2.11.1.1',
  'hdDescr' => '1.3.6.1.4.1.24681.1.2.11.1.2',
  'hdTemperature' => '1.3.6.1.4.1.24681.1.2.11.1.3',
  'hdStatus' => '1.3.6.1.4.1.24681.1.2.11.1.4',
  'hdStatusDefinition' => 'NAS-MIB::hdStatus',
  'hdModel' => '1.3.6.1.4.1.24681.1.2.11.1.5',
  'hdCapacity' => '1.3.6.1.4.1.24681.1.2.11.1.6',
  'hdSmartInfo' => '1.3.6.1.4.1.24681.1.2.11.1.7',
  'modelName' => '1.3.6.1.4.1.24681.1.2.12',
  'hostName' => '1.3.6.1.4.1.24681.1.2.13',
  'sysFanNumber' => '1.3.6.1.4.1.24681.1.2.14',
  'systemFanTable' => '1.3.6.1.4.1.24681.1.2.15',
  'systemFanEntry' => '1.3.6.1.4.1.24681.1.2.15.1',
  #'sysFanEntry' => '1.3.6.1.4.1.24681.1.2.15.1',
  'sysFanIndex' => '1.3.6.1.4.1.24681.1.2.15.1.1',
  'sysFanDescr' => '1.3.6.1.4.1.24681.1.2.15.1.2',
  'sysFanSpeed' => '1.3.6.1.4.1.24681.1.2.15.1.3',
  'sysVolumeNumber' => '1.3.6.1.4.1.24681.1.2.16',
  'systemVolumeTable' => '1.3.6.1.4.1.24681.1.2.17',
  'systemVolumeEntry' => '1.3.6.1.4.1.24681.1.2.17.1',
  #'sysVolumeEntry' => '1.3.6.1.4.1.24681.1.2.17.1',
  'sysVolumeIndex' => '1.3.6.1.4.1.24681.1.2.17.1.1',
  'sysVolumeDescr' => '1.3.6.1.4.1.24681.1.2.17.1.2',
  'sysVolumeFS' => '1.3.6.1.4.1.24681.1.2.17.1.3',
  'sysVolumeTotalSize' => '1.3.6.1.4.1.24681.1.2.17.1.4',
  'sysVolumeFreeSize' => '1.3.6.1.4.1.24681.1.2.17.1.5',
  'sysVolumeStatus' => '1.3.6.1.4.1.24681.1.2.17.1.6',
  'jBODInfo' => '1.3.6.1.4.1.24681.1.2.18',
  'jBODBitmap' => '1.3.6.1.4.1.24681.1.2.18.1',
  'jBODInfos' => '1.3.6.1.4.1.24681.1.2.18.2',
  'jBODInfosEntry' => '1.3.6.1.4.1.24681.1.2.18.2.1',
  'jBODid' => '1.3.6.1.4.1.24681.1.2.18.2.1.1',
  'jBODHdNumber' => '1.3.6.1.4.1.24681.1.2.18.2.1.2',
  'jBODHdTable1' => '1.3.6.1.4.1.24681.1.2.18.3',
  'jBODHdEntry1' => '1.3.6.1.4.1.24681.1.2.18.3.1',
  'jBODHdIndex1' => '1.3.6.1.4.1.24681.1.2.18.3.1.1',
  'jBODHdDescr1' => '1.3.6.1.4.1.24681.1.2.18.3.1.2',
  'jBODHdTemperature1' => '1.3.6.1.4.1.24681.1.2.18.3.1.3',
  'jBODHdStatus1' => '1.3.6.1.4.1.24681.1.2.18.3.1.4',
  'jBODHdStatus1Definition' => 'NAS-MIB::jBODHdStatus1',
  'jBODHdModel1' => '1.3.6.1.4.1.24681.1.2.18.3.1.5',
  'jBODHdCapacity1' => '1.3.6.1.4.1.24681.1.2.18.3.1.6',
  'jBODHdSmartInfo1' => '1.3.6.1.4.1.24681.1.2.18.3.1.7',
  'jBODHdTable2' => '1.3.6.1.4.1.24681.1.2.18.4',
  'jBODHdEntry2' => '1.3.6.1.4.1.24681.1.2.18.4.1',
  'jBODHdIndex2' => '1.3.6.1.4.1.24681.1.2.18.4.1.1',
  'jBODHdDescr2' => '1.3.6.1.4.1.24681.1.2.18.4.1.2',
  'jBODHdTemperature2' => '1.3.6.1.4.1.24681.1.2.18.4.1.3',
  'jBODHdStatus2' => '1.3.6.1.4.1.24681.1.2.18.4.1.4',
  'jBODHdStatus2Definition' => 'NAS-MIB::jBODHdStatus2',
  'jBODHdModel2' => '1.3.6.1.4.1.24681.1.2.18.4.1.5',
  'jBODHdCapacity2' => '1.3.6.1.4.1.24681.1.2.18.4.1.6',
  'jBODHdSmartInfo2' => '1.3.6.1.4.1.24681.1.2.18.4.1.7',
  'jBODHdTable3' => '1.3.6.1.4.1.24681.1.2.18.5',
  'jBODHdEntry3' => '1.3.6.1.4.1.24681.1.2.18.5.1',
  'jBODHdIndex3' => '1.3.6.1.4.1.24681.1.2.18.5.1.1',
  'jBODHdDescr3' => '1.3.6.1.4.1.24681.1.2.18.5.1.2',
  'jBODHdTemperature3' => '1.3.6.1.4.1.24681.1.2.18.5.1.3',
  'jBODHdStatus3' => '1.3.6.1.4.1.24681.1.2.18.5.1.4',
  'jBODHdStatus3Definition' => 'NAS-MIB::jBODHdStatus3',
  'jBODHdModel3' => '1.3.6.1.4.1.24681.1.2.18.5.1.5',
  'jBODHdCapacity3' => '1.3.6.1.4.1.24681.1.2.18.5.1.6',
  'jBODHdSmartInfo3' => '1.3.6.1.4.1.24681.1.2.18.5.1.7',
  'jBODHdTable4' => '1.3.6.1.4.1.24681.1.2.18.6',
  'jBODHdEntry4' => '1.3.6.1.4.1.24681.1.2.18.6.1',
  'jBODHdIndex4' => '1.3.6.1.4.1.24681.1.2.18.6.1.1',
  'jBODHdDescr4' => '1.3.6.1.4.1.24681.1.2.18.6.1.2',
  'jBODHdTemperature4' => '1.3.6.1.4.1.24681.1.2.18.6.1.3',
  'jBODHdStatus4' => '1.3.6.1.4.1.24681.1.2.18.6.1.4',
  'jBODHdStatus4Definition' => 'NAS-MIB::jBODHdStatus4',
  'jBODHdModel4' => '1.3.6.1.4.1.24681.1.2.18.6.1.5',
  'jBODHdCapacity4' => '1.3.6.1.4.1.24681.1.2.18.6.1.6',
  'jBODHdSmartInfo4' => '1.3.6.1.4.1.24681.1.2.18.6.1.7',
  'jBODHdTable5' => '1.3.6.1.4.1.24681.1.2.18.7',
  'jBODHdEntry5' => '1.3.6.1.4.1.24681.1.2.18.7.1',
  'jBODHdIndex5' => '1.3.6.1.4.1.24681.1.2.18.7.1.1',
  'jBODHdDescr5' => '1.3.6.1.4.1.24681.1.2.18.7.1.2',
  'jBODHdTemperature5' => '1.3.6.1.4.1.24681.1.2.18.7.1.3',
  'jBODHdStatus5' => '1.3.6.1.4.1.24681.1.2.18.7.1.4',
  'jBODHdStatus5Definition' => 'NAS-MIB::jBODHdStatus5',
  'jBODHdModel5' => '1.3.6.1.4.1.24681.1.2.18.7.1.5',
  'jBODHdCapacity5' => '1.3.6.1.4.1.24681.1.2.18.7.1.6',
  'jBODHdSmartInfo5' => '1.3.6.1.4.1.24681.1.2.18.7.1.7',
  'jBODHdTable6' => '1.3.6.1.4.1.24681.1.2.18.8',
  'jBODHdEntry6' => '1.3.6.1.4.1.24681.1.2.18.8.1',
  'jBODHdIndex6' => '1.3.6.1.4.1.24681.1.2.18.8.1.1',
  'jBODHdDescr6' => '1.3.6.1.4.1.24681.1.2.18.8.1.2',
  'jBODHdTemperature6' => '1.3.6.1.4.1.24681.1.2.18.8.1.3',
  'jBODHdStatus6' => '1.3.6.1.4.1.24681.1.2.18.8.1.4',
  'jBODHdStatus6Definition' => 'NAS-MIB::jBODHdStatus6',
  'jBODHdModel6' => '1.3.6.1.4.1.24681.1.2.18.8.1.5',
  'jBODHdCapacity6' => '1.3.6.1.4.1.24681.1.2.18.8.1.6',
  'jBODHdSmartInfo6' => '1.3.6.1.4.1.24681.1.2.18.8.1.7',
  'jBODHdTable7' => '1.3.6.1.4.1.24681.1.2.18.9',
  'jBODHdEntry7' => '1.3.6.1.4.1.24681.1.2.18.9.1',
  'jBODHdIndex7' => '1.3.6.1.4.1.24681.1.2.18.9.1.1',
  'jBODHdDescr7' => '1.3.6.1.4.1.24681.1.2.18.9.1.2',
  'jBODHdTemperature7' => '1.3.6.1.4.1.24681.1.2.18.9.1.3',
  'jBODHdStatus7' => '1.3.6.1.4.1.24681.1.2.18.9.1.4',
  'jBODHdStatus7Definition' => 'NAS-MIB::jBODHdStatus7',
  'jBODHdModel7' => '1.3.6.1.4.1.24681.1.2.18.9.1.5',
  'jBODHdCapacity7' => '1.3.6.1.4.1.24681.1.2.18.9.1.6',
  'jBODHdSmartInfo7' => '1.3.6.1.4.1.24681.1.2.18.9.1.7',
  'jBODHdTable8' => '1.3.6.1.4.1.24681.1.2.18.10',
  'jBODHdEntry8' => '1.3.6.1.4.1.24681.1.2.18.10.1',
  'jBODHdIndex8' => '1.3.6.1.4.1.24681.1.2.18.10.1.1',
  'jBODHdDescr8' => '1.3.6.1.4.1.24681.1.2.18.10.1.2',
  'jBODHdTemperature8' => '1.3.6.1.4.1.24681.1.2.18.10.1.3',
  'jBODHdStatus8' => '1.3.6.1.4.1.24681.1.2.18.10.1.4',
  'jBODHdStatus8Definition' => 'NAS-MIB::jBODHdStatus8',
  'jBODHdModel8' => '1.3.6.1.4.1.24681.1.2.18.10.1.5',
  'jBODHdCapacity8' => '1.3.6.1.4.1.24681.1.2.18.10.1.6',
  'jBODHdSmartInfo8' => '1.3.6.1.4.1.24681.1.2.18.10.1.7',
  'systemInfoEx' => '1.3.6.1.4.1.24681.1.3',
  'systemCPU-UsageEX' => '1.3.6.1.4.1.24681.1.3.1',
  'systemTotalMemEX' => '1.3.6.1.4.1.24681.1.3.2',
  'systemFreeMemEX' => '1.3.6.1.4.1.24681.1.3.3',
  'systemUptimeEX' => '1.3.6.1.4.1.24681.1.3.4',
  'cpu-TemperatureEX' => '1.3.6.1.4.1.24681.1.3.5',
  'systemTemperatureEX' => '1.3.6.1.4.1.24681.1.3.6',
  'ifNumberEX' => '1.3.6.1.4.1.24681.1.3.8',
  'systemIfTableEx' => '1.3.6.1.4.1.24681.1.3.9',
  'systemIfEntryEx' => '1.3.6.1.4.1.24681.1.3.9.1',
  #'ifEntryEx' => '1.3.6.1.4.1.24681.1.3.9.1',
  'ifIndexEX' => '1.3.6.1.4.1.24681.1.3.9.1.1',
  'ifDescrEX' => '1.3.6.1.4.1.24681.1.3.9.1.2',
  'ifPacketsReceivedEX' => '1.3.6.1.4.1.24681.1.3.9.1.3',
  'ifPacketsSentEX' => '1.3.6.1.4.1.24681.1.3.9.1.4',
  'ifErrorPacketsEX' => '1.3.6.1.4.1.24681.1.3.9.1.5',
  'hdNumberEX' => '1.3.6.1.4.1.24681.1.3.10',
  'systemHdTableEX' => '1.3.6.1.4.1.24681.1.3.11',
  'systemHdEntryEX' => '1.3.6.1.4.1.24681.1.3.11.1',
  #'hdEntryEx' => '1.3.6.1.4.1.24681.1.3.11.1',
  'hdIndexEX' => '1.3.6.1.4.1.24681.1.3.11.1.1',
  'hdDescrEX' => '1.3.6.1.4.1.24681.1.3.11.1.2',
  'hdTemperatureEX' => '1.3.6.1.4.1.24681.1.3.11.1.3',
  'hdStatusEX' => '1.3.6.1.4.1.24681.1.3.11.1.4',
  'hdStatusEXDefinition' => 'NAS-MIB::hdStatusEX',
  'hdModelEX' => '1.3.6.1.4.1.24681.1.3.11.1.5',
  'hdCapacityEX' => '1.3.6.1.4.1.24681.1.3.11.1.6',
  'hdSmartInfoEX' => '1.3.6.1.4.1.24681.1.3.11.1.7',
  'modelNameEX' => '1.3.6.1.4.1.24681.1.3.12',
  'hostNameEX' => '1.3.6.1.4.1.24681.1.3.13',
  'sysFanNumberEX' => '1.3.6.1.4.1.24681.1.3.14',
  'systemFanTableEx' => '1.3.6.1.4.1.24681.1.3.15',
  'systemFanEntryEx' => '1.3.6.1.4.1.24681.1.3.15.1',
  #'sysFanEntryEx' => '1.3.6.1.4.1.24681.1.3.15.1',
  'sysFanIndexEX' => '1.3.6.1.4.1.24681.1.3.15.1.1',
  'sysFanDescrEX' => '1.3.6.1.4.1.24681.1.3.15.1.2',
  'sysFanSpeedEX' => '1.3.6.1.4.1.24681.1.3.15.1.3',
  'sysVolumeNumberEX' => '1.3.6.1.4.1.24681.1.3.16',
  'systemVolumeTableEx' => '1.3.6.1.4.1.24681.1.3.17',
  'systemVolumeEntryEx' => '1.3.6.1.4.1.24681.1.3.17.1',
  #'sysVolumeEntryEx' => '1.3.6.1.4.1.24681.1.3.17.1',
  'sysVolumeIndexEX' => '1.3.6.1.4.1.24681.1.3.17.1.1',
  'sysVolumeDescrEX' => '1.3.6.1.4.1.24681.1.3.17.1.2',
  'sysVolumeFSEX' => '1.3.6.1.4.1.24681.1.3.17.1.3',
  'sysVolumeTotalSizeEX' => '1.3.6.1.4.1.24681.1.3.17.1.4',
  'sysVolumeFreeSizeEX' => '1.3.6.1.4.1.24681.1.3.17.1.5',
  'sysVolumeStatusEX' => '1.3.6.1.4.1.24681.1.3.17.1.6',
  'storageSystemEx' => '1.3.6.1.4.1.24681.1.4',
  'systemSettings' => '1.3.6.1.4.1.24681.1.4.1',
  'storageManager' => '1.3.6.1.4.1.24681.1.4.1.1',
  'nasStorage' => '1.3.6.1.4.1.24681.1.4.1.1.1',
  'components' => '1.3.6.1.4.1.24681.1.4.1.1.1.1',
  'enclosure' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1',
  'enclosurelNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.1',
  'enclosureTable' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2',
  'enclosureEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1',
  #'enclosureTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1',
  'enclosureIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1.1',
  'enclosureID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1.2',
  'enclosureModel' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1.3',
  'enclosureSerialNum' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1.4',
  'enclosureSlot' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1.5',
  'enclosureName' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1.6',
  'enclosureSystemTemp' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.1.2.1.7',
  'systemFan' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2',
  'systemFanNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.1',
  'systemFan2Table' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.2',
  'systemFan2Entry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.2.1',
  #'systemFan2TableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.2.1',
  'systemFanIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.2.1.1',
  'systemFanID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.2.1.2',
  'systemFanEnclosureID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.2.1.3',
  'systemFanStatus' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.2.1.4',
  'systemFanStatusDefinition' => 'NAS-MIB::systemFanStatus',
  'systemFanSpeed' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.2.2.1.5',
  'systemPower' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3',
  'systemPowerNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.1',
  'systemPowerTable' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2',
  'systemPowerEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2.1',
  #'systemPowerTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2.1',
  'systemPowerIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2.1.1',
  'systemPowerID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2.1.2',
  'systemPowerEnclosureID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2.1.3',
  'systemPowerStatus' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2.1.4',
  'systemPowerStatusDefinition' => 'NAS-MIB::systemPowerStatus',
  'systemPowerFanSpeed' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2.1.5',
  'systemPowerTemp' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.3.2.1.6',
  'cpu' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4',
  'cpuNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4.1',
  'cpuTemp' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4.2',
  'cpuTable' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4.3',
  'cpuEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4.3.1',
  #'cpuTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4.3.1',
  'cpuIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4.3.1.1',
  'cpuID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4.3.1.2',
  'cpuUsage' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.4.3.1.3',
  'disk' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5',
  'diskNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.1',
  'diskTable' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2',
  'diskEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1',
  #'diskTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1',
  'diskIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.1',
  'diskID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.2',
  'diskEnclosureID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.3',
  'diskSummary' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.4',
  'diskSmartInfo' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.5',
  'diskSmartInfoDefinition' => 'NAS-MIB::diskSmartInfo',
  'diskTemperture' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.6',
  'diskGlobalSpare' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.7',
  'diskGlobalSpareDefinition' => 'NAS-MIB::diskGlobalSpare',
  'diskModel' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.8',
  'diskCapacity' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.5.2.1.9',
  'msataDisk' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6',
  'msataDiskNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.1',
  'msataDiskTable' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2',
  'msataDiskEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1',
  #'msataDiskTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1',
  'msataDiskIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.1',
  'msataDiskID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.2',
  'msataDiskEnclosureID' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.3',
  'msataDiskSummary' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.4',
  'msataDiskSmartInfo' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.5',
  'msataDiskSmartInfoDefinition' => 'NAS-MIB::msataDiskSmartInfo',
  'msataDiskTemperture' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.6',
  'msataDiskGlobalSpare' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.7',
  'msataDiskGlobalSpareDefinition' => 'NAS-MIB::msataDiskGlobalSpare',
  'msataDiskModel' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.8',
  'msataDiskCapacity' => '1.3.6.1.4.1.24681.1.4.1.1.1.1.6.2.1.9',
  'storageSpace' => '1.3.6.1.4.1.24681.1.4.1.1.1.2',
  'raid' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1',
  'raidNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.1',
  'raidGroupTable' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2',
  'raidGroupEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1',
  #'raidGroupTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1',
  'raidIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1.1',
  'raidID' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1.2',
  'raidCapacity' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1.3',
  'raidFreeSize' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1.4',
  'raidStatus' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1.5',
  'raidBitmap' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1.6',
  'raidBitmapDefinition' => 'NAS-MIB::raidBitmap',
  'raidLevel' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.1.2.1.7',
  'pool' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2',
  'poolNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.1',
  'poolTable' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.2',
  'poolEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.2.1',
  #'poolTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.2.1',
  'poolIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.2.1.1',
  'poolID' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.2.1.2',
  'poolCapacity' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.2.1.3',
  'poolFreeSize' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.2.1.4',
  'poolStatus' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.2.2.1.5',
  'poolStatusDefinition' => 'NAS-MIB::poolStatus',
  'volume' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3',
  'volumeNumber' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.1',
  'volumeTable' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2',
  'volumeEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1',
  #'volumeTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1',
  'volumeIndex' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1.1',
  'volumeID' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1.2',
  'volumeCapacity' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1.3',
  'volumeFreeSize' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1.4',
  'volumeStatus' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1.5',
  'volumeSSDCache' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1.6',
  'volumeSSDCacheDefinition' => 'NAS-MIB::volumeSSDCache',
  'volumeThin' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1.7',
  'volumeThinDefinition' => 'NAS-MIB::volumeThin',
  'volumeName' => '1.3.6.1.4.1.24681.1.4.1.1.1.2.3.2.1.8',
  'cacheAcceleration' => '1.3.6.1.4.1.24681.1.4.1.1.1.3',
  'service' => '1.3.6.1.4.1.24681.1.4.1.1.1.3.1',
  'serviceDefinition' => 'NAS-MIB::service',
  'availablePercent' => '1.3.6.1.4.1.24681.1.4.1.1.1.3.2',
  'readHitRate' => '1.3.6.1.4.1.24681.1.4.1.1.1.3.3',
  'writeHitRate' => '1.3.6.1.4.1.24681.1.4.1.1.1.3.4',
  'status' => '1.3.6.1.4.1.24681.1.4.1.1.1.3.5',
  'iSCSI' => '1.3.6.1.4.1.24681.1.4.1.1.2',
  'iSCSIStorage' => '1.3.6.1.4.1.24681.1.4.1.1.2.1',
  'iSCSIService' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.1',
  'iSCSIServiceDefinition' => 'NAS-MIB::iSCSIService',
  'iSCSIServicePort' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.2',
  'iSNSService' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.3',
  'iSNSServiceDefinition' => 'NAS-MIB::iSNSService',
  'iSNSIP' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.4',
  'lun' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10',
  'lunNumber' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.1',
  'lunTable' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2',
  'lunEntry' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1',
  #'lunTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1',
  'lunIndex' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1.1',
  'lunID' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1.2',
  'lunCapacity' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1.3',
  'lunUsedPercent' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1.4',
  'lunStatus' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1.5',
  'lunName' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1.6',
  'lunBackupStatus' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1.7',
  'lunBackupStatusDefinition' => 'NAS-MIB::lunBackupStatus',
  'lunIsMap' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.10.2.1.8',
  'lunIsMapDefinition' => 'NAS-MIB::lunIsMap',
  'target' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11',
  'targetNumber' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.1',
  'targeTable' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.2',
  'targeEntry' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.2.1',
  #'targeTableEntry' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.2.1',
  'targetIndex' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.2.1.1',
  'targetID' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.2.1.2',
  'targetName' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.2.1.3',
  'targetIQN' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.2.1.4',
  'targetStatus' => '1.3.6.1.4.1.24681.1.4.1.1.2.1.11.2.1.5',
  'targetStatusDefinition' => 'NAS-MIB::targetStatus',
  'systemStatus' => '1.3.6.1.4.1.24681.1.4.1.11',
  'resourceMonitor' => '1.3.6.1.4.1.24681.1.4.1.11.5',
  'diskPerformance' => '1.3.6.1.4.1.24681.1.4.1.11.5.6',
  'diskPerformanceNumber' => '1.3.6.1.4.1.24681.1.4.1.11.5.6.1',
  'diskPerformanceTable' => '1.3.6.1.4.1.24681.1.4.1.11.5.6.2',
  'diskPerformanceEntry' => '1.3.6.1.4.1.24681.1.4.1.11.5.6.2.1',
  #'diskPerformanceTableEntry' => '1.3.6.1.4.1.24681.1.4.1.11.5.6.2.1',
  'diskPerformanceIndex' => '1.3.6.1.4.1.24681.1.4.1.11.5.6.2.1.1',
  'blvID' => '1.3.6.1.4.1.24681.1.4.1.11.5.6.2.1.2',
  'iops' => '1.3.6.1.4.1.24681.1.4.1.11.5.6.2.1.3',
  'latency' => '1.3.6.1.4.1.24681.1.4.1.11.5.6.2.1.4',
  'systemTraps' => '1.3.6.1.4.1.24681.1.10',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'NAS-MIB'} = {
  'jBODHdStatus2' => {
    '0' => 'ready',
  },
  'lunIsMap' => {
    '0' => 'unmapped',
    '1' => 'mapped',
  },
  'diskSmartInfo' => {
    '0' => 'good',
    '1' => 'warning',
    '2' => 'abnormal',
  },
  'jBODHdStatus6' => {
    '0' => 'ready',
  },
  'targetStatus' => {
    '0' => 'ready',
    '1' => 'connected',
  },
  'iSNSService' => {
    '0' => 'no',
    '1' => 'yes',
  },
  'jBODHdStatus5' => {
    '0' => 'ready',
  },
  'raidBitmap' => {
    '0' => 'no',
    '1' => 'yes',
  },
  'jBODHdStatus4' => {
    '0' => 'ready',
  },
  'hdStatusEX' => {
    '0' => 'ready',
  },
  'msataDiskSmartInfo' => {
    '0' => 'good',
    '1' => 'warning',
    '2' => 'abnormal',
  },
  'jBODHdStatus7' => {
    '0' => 'ready',
  },
  'systemFanStatus' => {
    '0' => 'ok',
  },
  'diskGlobalSpare' => {
    '0' => 'no',
    '1' => 'yes',
  },
  'systemPowerStatus' => {
    '0' => 'ok',
  },
  'lunBackupStatus' => {
    '0' => 'none',
    '1' => 'backup',
    '2' => 'restore',
    '3' => 'snapshot',
  },
  'jBODHdStatus8' => {
    '0' => 'ready',
  },
  'iSCSIService' => {
    '0' => 'no',
    '1' => 'yes',
  },
  'volumeThin' => {
    '0' => 'no',
    '1' => 'yes',
  },
  'service' => {
    '0' => 'no',
    '1' => 'yes',
  },
  'hdStatus' => {
    '0' => 'ready',
  },
  'jBODHdStatus1' => {
    '0' => 'ready',
  },
  'poolStatus' => {
    '0' => 'ready',
  },
  'jBODHdStatus3' => {
    '0' => 'ready',
  },
  'volumeSSDCache' => {
    '0' => 'no',
    '1' => 'yes',
  },
  'msataDiskGlobalSpare' => {
    '0' => 'no',
    '1' => 'yes',
  },
};
