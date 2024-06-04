package Monitoring::GLPlugin::SNMP::MibsAndOids::ASSETMANAGEMENTMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'ASSETMANAGEMENT-MIB'} = {
  url => '',
  name => 'ASSETMANAGEMENT-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'ASSETMANAGEMENT-MIB'} =
  '1.3.6.1.4.1.13742.7';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'ASSETMANAGEMENT-MIB'} = {
  'raritan' => '1.3.6.1.4.1.13742',
  'assetManager' => '1.3.6.1.4.1.13742.7',
  'traps' => '1.3.6.1.4.1.13742.7.0',
  'trapInformation' => '1.3.6.1.4.1.13742.7.0.0',
  'deviceName' => '1.3.6.1.4.1.13742.7.0.0.1',
  'deviceInetAddressType' => '1.3.6.1.4.1.13742.7.0.0.2',
  'deviceInetIPAddress' => '1.3.6.1.4.1.13742.7.0.0.3',
  'assetStripNumber' => '1.3.6.1.4.1.13742.7.0.0.4',
  'rackUnitNumber' => '1.3.6.1.4.1.13742.7.0.0.5',
  'assetStripFirmwareUpdateState' => '1.3.6.1.4.1.13742.7.0.0.6',
  'assetStripFirmwareUpdateStateDefinition' => 'ASSETMANAGEMENT-MIB::AssetStripFirmwareUpdateStateEnumeration',
  'deviceUserName' => '1.3.6.1.4.1.13742.7.0.0.7',
  'deviceChangedParameter' => '1.3.6.1.4.1.13742.7.0.0.8',
  'deviceChangedParameterDefinition' => 'ASSETMANAGEMENT-MIB::DeviceConfigurationParameterEnumeration',
  'changedParameterNewValue' => '1.3.6.1.4.1.13742.7.0.0.9',
  'slotNumber' => '1.3.6.1.4.1.13742.7.0.0.10',
  'oldNumberOfComponentAssetStrips' => '1.3.6.1.4.1.13742.7.0.0.11',
  'agentInetPortNumber' => '1.3.6.1.4.1.13742.7.0.0.12',
  'deviceSerialNumber' => '1.3.6.1.4.1.13742.7.0.0.13',
  'configuration' => '1.3.6.1.4.1.13742.7.1',
  'assetStripCount' => '1.3.6.1.4.1.13742.7.1.1',
  'defaultLEDColorConnected' => '1.3.6.1.4.1.13742.7.1.2',
  'defaultLEDColorConnectedStr' => '1.3.6.1.4.1.13742.7.1.3',
  'defaultLEDColorDisconnected' => '1.3.6.1.4.1.13742.7.1.4',
  'defaultLEDColorDisconnectedStr' => '1.3.6.1.4.1.13742.7.1.5',
  'assetStrip' => '1.3.6.1.4.1.13742.7.1.6',
  'assetStripConfigurationTable' => '1.3.6.1.4.1.13742.7.1.6.1',
  'assetStripConfigurationEntry' => '1.3.6.1.4.1.13742.7.1.6.1.1',
  'assetStripID' => '1.3.6.1.4.1.13742.7.1.6.1.1.1',
  'rackUnitCount' => '1.3.6.1.4.1.13742.7.1.6.1.1.2',
  'assetStripState' => '1.3.6.1.4.1.13742.7.1.6.1.1.3',
  'assetStripStateDefinition' => 'ASSETMANAGEMENT-MIB::AssetStripStateEnumeration',
  'assetStripName' => '1.3.6.1.4.1.13742.7.1.6.1.1.4',
  'rackUnitNumberingMode' => '1.3.6.1.4.1.13742.7.1.6.1.1.5',
  'rackUnitNumberingModeDefinition' => 'ASSETMANAGEMENT-MIB::RackUnitNumberingModeEnumeration',
  'rackUnitNumberingOffset' => '1.3.6.1.4.1.13742.7.1.6.1.1.6',
  'assetStripOrientation' => '1.3.6.1.4.1.13742.7.1.6.1.1.7',
  'assetStripOrientationDefinition' => 'ASSETMANAGEMENT-MIB::AssetStripOrientationEnumeration',
  'currentMainTagCount' => '1.3.6.1.4.1.13742.7.1.6.1.1.8',
  'currentBladeTagCount' => '1.3.6.1.4.1.13742.7.1.6.1.1.9',
  'maxMainTagCount' => '1.3.6.1.4.1.13742.7.1.6.1.1.10',
  'maxBladeTagCount' => '1.3.6.1.4.1.13742.7.1.6.1.1.11',
  'bladeExtensionOverflow' => '1.3.6.1.4.1.13742.7.1.6.1.1.12',
  'assetStripType' => '1.3.6.1.4.1.13742.7.1.6.1.1.13',
  'assetStripTypeDefinition' => 'ASSETMANAGEMENT-MIB::AssetStripTypeEnumeration',
  'numberOfComponentAssetStrips' => '1.3.6.1.4.1.13742.7.1.6.1.1.14',
  'assetStripDefaultLEDColorConnected' => '1.3.6.1.4.1.13742.7.1.6.1.1.15',
  'assetStripDefaultLEDColorConnectedStr' => '1.3.6.1.4.1.13742.7.1.6.1.1.16',
  'assetStripDefaultLEDColorDisconnected' => '1.3.6.1.4.1.13742.7.1.6.1.1.17',
  'assetStripDefaultLEDColorDisconnectedStr' => '1.3.6.1.4.1.13742.7.1.6.1.1.18',
  'assetManagement' => '1.3.6.1.4.1.13742.7.1.7',
  'assetManagementTable' => '1.3.6.1.4.1.13742.7.1.7.1',
  'assetManagementEntry' => '1.3.6.1.4.1.13742.7.1.7.1.1',
  'rackUnitID' => '1.3.6.1.4.1.13742.7.1.7.1.1.1',
  'ledOperationMode' => '1.3.6.1.4.1.13742.7.1.7.1.1.2',
  'ledOperationModeDefinition' => 'ASSETMANAGEMENT-MIB::AssetManagementLEDOperationModeEnumeration',
  'ledMode' => '1.3.6.1.4.1.13742.7.1.7.1.1.3',
  'ledModeDefinition' => 'ASSETMANAGEMENT-MIB::AssetManagementLEDModeEnumeration',
  'ledColor' => '1.3.6.1.4.1.13742.7.1.7.1.1.4',
  'ledColorStr' => '1.3.6.1.4.1.13742.7.1.7.1.1.5',
  'tagID' => '1.3.6.1.4.1.13742.7.1.7.1.1.6',
  'tagFamily' => '1.3.6.1.4.1.13742.7.1.7.1.1.7',
  'rackUnitPosition' => '1.3.6.1.4.1.13742.7.1.7.1.1.8',
  'rackUnitType' => '1.3.6.1.4.1.13742.7.1.7.1.1.9',
  'rackUnitTypeDefinition' => 'ASSETMANAGEMENT-MIB::RackUnitTypeEnumeration',
  'bladeExtensionSize' => '1.3.6.1.4.1.13742.7.1.7.1.1.10',
  'rackUnitName' => '1.3.6.1.4.1.13742.7.1.7.1.1.12',
  'assetStripCascadePosition' => '1.3.6.1.4.1.13742.7.1.7.1.1.13',
  'rackUnitRelativePosition' => '1.3.6.1.4.1.13742.7.1.7.1.1.14',
  'assetStripNumberOfRackUnits' => '1.3.6.1.4.1.13742.7.1.7.1.1.15',
  'bladeExtensionTable' => '1.3.6.1.4.1.13742.7.1.7.2',
  'bladeExtensionEntry' => '1.3.6.1.4.1.13742.7.1.7.2.1',
  'bladeSlotID' => '1.3.6.1.4.1.13742.7.1.7.2.1.1',
  'bladeTagID' => '1.3.6.1.4.1.13742.7.1.7.2.1.2',
  'bladeSlotPosition' => '1.3.6.1.4.1.13742.7.1.7.2.1.3',
  'conformance' => '1.3.6.1.4.1.13742.7.2',
  'compliances' => '1.3.6.1.4.1.13742.7.2.1',
  'groups' => '1.3.6.1.4.1.13742.7.2.2',
  'log' => '1.3.6.1.4.1.13742.7.3',
  'logConfiguration' => '1.3.6.1.4.1.13742.7.3.1',
  'logSize' => '1.3.6.1.4.1.13742.7.3.1.1',
  'oldestLogID' => '1.3.6.1.4.1.13742.7.3.1.2',
  'newestLogID' => '1.3.6.1.4.1.13742.7.3.1.3',
  'logEventCount' => '1.3.6.1.4.1.13742.7.3.1.4',
  'assetManagementLogTable' => '1.3.6.1.4.1.13742.7.3.2',
  'assetManagementLogEntry' => '1.3.6.1.4.1.13742.7.3.2.1',
  'logIndex' => '1.3.6.1.4.1.13742.7.3.2.1.1',
  'logTimeStamp' => '1.3.6.1.4.1.13742.7.3.2.1.2',
  'logEventType' => '1.3.6.1.4.1.13742.7.3.2.1.3',
  'logEventTypeDefinition' => 'ASSETMANAGEMENT-MIB::LogEventTypeEnumeration',
  'logAssetStripNumber' => '1.3.6.1.4.1.13742.7.3.2.1.4',
  'logRackUnitNumber' => '1.3.6.1.4.1.13742.7.3.2.1.5',
  'logRackUnitPosition' => '1.3.6.1.4.1.13742.7.3.2.1.6',
  'logSlotNumber' => '1.3.6.1.4.1.13742.7.3.2.1.7',
  'logTagID' => '1.3.6.1.4.1.13742.7.3.2.1.8',
  'logAssetStripState' => '1.3.6.1.4.1.13742.7.3.2.1.9',
  'logAssetStripStateDefinition' => 'ASSETMANAGEMENT-MIB::AssetStripStateEnumeration',
  'logParentBladeID' => '1.3.6.1.4.1.13742.7.3.2.1.10',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'ASSETMANAGEMENT-MIB'} = {
  'DeviceConfigurationParameterEnumeration' => {
    '0' => 'defaultLEDColorConnected',
    '1' => 'defaultLEDColorDisconnected',
    '2' => 'rackUnitCount',
    '3' => 'assetStripName',
    '4' => 'assetStripRackUnitNumberingMode',
    '5' => 'assetStripRackUnitNumberingOffset',
    '6' => 'assetStripOrientation',
  },
  'AssetManagementLEDModeEnumeration' => {
    '1' => 'on',
    '2' => 'off',
    '3' => 'fastBlink',
    '4' => 'slowBlink',
  },
  'AssetManagementLEDOperationModeEnumeration' => {
    '1' => 'manual',
    '2' => 'automatic',
  },
  'AssetStripTypeEnumeration' => {
    '0' => 'simple',
    '1' => 'composite',
  },
  'AssetStripStateEnumeration' => {
    '1' => 'disconnected',
    '2' => 'firmwareUpdate',
    '3' => 'unsupported',
    '4' => 'available',
  },
  'AssetStripFirmwareUpdateStateEnumeration' => {
    '1' => 'started',
    '2' => 'successful',
    '3' => 'failed',
  },
  'RackUnitTypeEnumeration' => {
    '1' => 'single',
    '2' => 'blade',
    '30' => 'none',
    '31' => 'unknown',
  },
  'AssetStripOrientationEnumeration' => {
    '0' => 'topConnector',
    '1' => 'bottomConnector',
  },
  'LogEventTypeEnumeration' => {
    '0' => 'empty',
    '1' => 'assetTagConnected',
    '2' => 'assetTagDisconnected',
    '3' => 'assetStripStateChange',
  },
  'RackUnitNumberingModeEnumeration' => {
    '0' => 'topDown',
    '1' => 'bottomUp',
  },
};