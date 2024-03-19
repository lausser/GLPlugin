package Monitoring::GLPlugin::SNMP::MibsAndOids::INTELSERVERBASEBOARD7;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'INTEL-SERVER-BASEBOARD7'} = {
  url => '',
  name => 'INTEL-SERVER-BASEBOARD7',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'INTEL-SERVER-BASEBOARD7'} =
  '1.3.6.1.4.1.343.2.10.3.5';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'INTEL-SERVER-BASEBOARD7'} = {
  'intel' => '1.3.6.1.4.1.343',
  'products' => '1.3.6.1.4.1.343.2',
  'server-management' => '1.3.6.1.4.1.343.2.10',
  'software' => '1.3.6.1.4.1.343.2.10.3',
  'baseboardGroup7' => '1.3.6.1.4.1.343.2.10.3.5',
  'intelServerBaseboard7' => '1.3.6.1.4.1.343.2.10.3.5.1',
  'systemManagementSoftwareGroup' => '1.3.6.1.4.1.343.2.10.3.5.100',
  'systemManagementInfoOverallStatusHealth' => '1.3.6.1.4.1.343.2.10.3.5.100.1',
  'systemManagementInfoOverallStatusHealthDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'systemManagementInfoPlatformDescription' => '1.3.6.1.4.1.343.2.10.3.5.100.2',
  #'systemManagementInfoPlatformDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'systemManagementInfoPlatformId' => '1.3.6.1.4.1.343.2.10.3.5.100.3',
  'systemManagementInfoTrapsEnabled' => '1.3.6.1.4.1.343.2.10.3.5.100.4',
  'systemManagementInfoTrapsEnabledDefinition' => 'INTEL-SERVER-BASEBOARD7::systemManagementInfoTrapsEnabled',
  'systemManagementInfoSetsEnabled' => '1.3.6.1.4.1.343.2.10.3.5.100.5',
  'systemManagementInfoSetsEnabledDefinition' => 'INTEL-SERVER-BASEBOARD7::systemManagementInfoSetsEnabled',
  'systemManagementManufacturerName' => '1.3.6.1.4.1.343.2.10.3.5.100.6',
  #'systemManagementManufacturerNameDefinition' => 'SNMPv2-TC::DisplayString',
  'systemManagementProductName' => '1.3.6.1.4.1.343.2.10.3.5.100.7',
  #'systemManagementProductNameDefinition' => 'SNMPv2-TC::DisplayString',
  'systemManagementProductVersion' => '1.3.6.1.4.1.343.2.10.3.5.100.8',
  #'systemManagementProductVersionDefinition' => 'SNMPv2-TC::DisplayString',
  'systemManagementProductBuildNumber' => '1.3.6.1.4.1.343.2.10.3.5.100.9',
  #'systemManagementProductBuildNumberDefinition' => 'SNMPv2-TC::DisplayString',
  'systemManagementProductDescription' => '1.3.6.1.4.1.343.2.10.3.5.100.10',
  #'systemManagementProductDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'chassisInformationGroup' => '1.3.6.1.4.1.343.2.10.3.5.200',
  'chassisStatus' => '1.3.6.1.4.1.343.2.10.3.5.200.1',
  'chassisStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'chassisSecurityState' => '1.3.6.1.4.1.343.2.10.3.5.200.2',
  'chassisSecurityStateDefinition' => 'INTEL-SERVER-BASEBOARD7::chassisSecurityState',
  'chassisBootState' => '1.3.6.1.4.1.343.2.10.3.5.200.3',
  'chassisBootStateDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'chassisThermalState' => '1.3.6.1.4.1.343.2.10.3.5.200.4',
  'chassisThermalStateDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'chassisPowerState' => '1.3.6.1.4.1.343.2.10.3.5.200.5',
  'chassisPowerStateDefinition' => 'INTEL-SERVER-BASEBOARD7::chassisPowerState',
  'chassisLockState' => '1.3.6.1.4.1.343.2.10.3.5.200.6',
  'chassisLockStateDefinition' => 'INTEL-SERVER-BASEBOARD7::chassisLockState',
  'chassisKeyboardPasswordStatus' => '1.3.6.1.4.1.343.2.10.3.5.200.7',
  'chassisKeyboardPasswordStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelFeatureStatus',
  'chassisPowerOnPasswordStatus' => '1.3.6.1.4.1.343.2.10.3.5.200.8',
  'chassisPowerOnPasswordStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelFeatureStatus',
  'chassisAdministratorPasswordStatus' => '1.3.6.1.4.1.343.2.10.3.5.200.9',
  'chassisAdministratorPasswordStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelFeatureStatus',
  'chassisFrontPanelResetStatus' => '1.3.6.1.4.1.343.2.10.3.5.200.10',
  'chassisFrontPanelResetStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelFeatureStatus',
  'chassisContainerType' => '1.3.6.1.4.1.343.2.10.3.5.200.11',
  'chassisContainerTypeDefinition' => 'INTEL-SERVER-BASEBOARD7::chassisContainerType',
  'chassisPartNumber' => '1.3.6.1.4.1.343.2.10.3.5.200.12',
  #'chassisPartNumberDefinition' => 'SNMPv2-TC::DisplayString',
  'chassisSerialNumber' => '1.3.6.1.4.1.343.2.10.3.5.200.13',
  #'chassisSerialNumberDefinition' => 'SNMPv2-TC::DisplayString',
  'chassisName' => '1.3.6.1.4.1.343.2.10.3.5.200.14',
  #'chassisNameDefinition' => 'SNMPv2-TC::DisplayString',
  'chassisAssetTag' => '1.3.6.1.4.1.343.2.10.3.5.200.15',
  #'chassisAssetTagDefinition' => 'SNMPv2-TC::DisplayString',
  'processorGroup' => '1.3.6.1.4.1.343.2.10.3.5.300',
  'processorDeviceTable' => '1.3.6.1.4.1.343.2.10.3.5.300.10',
  'processorDeviceTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1',
  'processorIndex' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.1',
  #'processorIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'processorCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.2',
  'processorDescription' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.3',
  #'processorDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'processorStatusString' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.4',
  #'processorStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'processorStatus' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.5',
  'processorStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'processorType' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.6',
  'processorTypeDefinition' => 'INTEL-SERVER-BASEBOARD7::processorType',
  'processorPartNumber' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.7',
  #'processorPartNumberDefinition' => 'SNMPv2-TC::DisplayString',
  'processorManufacturerName' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.8',
  #'processorManufacturerNameDefinition' => 'SNMPv2-TC::DisplayString',
  'processorFamily' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.9',
  'processorFamilyDefinition' => 'INTEL-SERVER-BASEBOARD7::processorFamily',
  'processorVersionName' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.10',
  #'processorVersionNameDefinition' => 'SNMPv2-TC::DisplayString',
  'processorMaxSpeed' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.11',
  'processorCurrentSpeed' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.12',
  'processorExternalClockSpeed' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.13',
  'processorVoltage' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.14',
  'processorUpgradeMethod' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.15',
  'processorUpgradeMethodDefinition' => 'INTEL-SERVER-BASEBOARD7::processorUpgradeMethod',
  'processorSocketDesignation' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.16',
  #'processorSocketDesignationDefinition' => 'SNMPv2-TC::DisplayString',
  'processorID' => '1.3.6.1.4.1.343.2.10.3.5.300.10.1.17',
  #'processorIDDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteProcessorTable' => '1.3.6.1.4.1.343.2.10.3.5.300.20',
  'discreteProcessorTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.300.20.1',
  'discreteProcessorIndex' => '1.3.6.1.4.1.343.2.10.3.5.300.20.1.1',
  #'discreteProcessorIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'discreteProcessorCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.300.20.1.2',
  'discreteProcessorDescription' => '1.3.6.1.4.1.343.2.10.3.5.300.20.1.3',
  #'discreteProcessorDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteProcessorStatusString' => '1.3.6.1.4.1.343.2.10.3.5.300.20.1.4',
  #'discreteProcessorStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteProcessorStatus' => '1.3.6.1.4.1.343.2.10.3.5.300.20.1.5',
  'discreteProcessorStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'powerGroup' => '1.3.6.1.4.1.343.2.10.3.5.400',
  'powerUnitTable' => '1.3.6.1.4.1.343.2.10.3.5.400.10',
  'powerUnitTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.400.10.1',
  'powerUnitIndex' => '1.3.6.1.4.1.343.2.10.3.5.400.10.1.1',
  #'powerUnitIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'powerUnitCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.400.10.1.2',
  'powerUnitDescription' => '1.3.6.1.4.1.343.2.10.3.5.400.10.1.3',
  #'powerUnitDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'powerUnitStatusString' => '1.3.6.1.4.1.343.2.10.3.5.400.10.1.4',
  #'powerUnitStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'powerUnitStatus' => '1.3.6.1.4.1.343.2.10.3.5.400.10.1.5',
  'powerUnitStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'powerUnitRedundancyStatus' => '1.3.6.1.4.1.343.2.10.3.5.400.10.1.6',
  'powerUnitRedundancyStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelRedundancyStatus',
  'powerSupplyTable' => '1.3.6.1.4.1.343.2.10.3.5.400.20',
  'powerSupplyTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.400.20.1',
  'powerSupplyIndex' => '1.3.6.1.4.1.343.2.10.3.5.400.20.1.1',
  #'powerSupplyIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'powerSupplyCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.400.20.1.2',
  'powerSupplyDescription' => '1.3.6.1.4.1.343.2.10.3.5.400.20.1.3',
  #'powerSupplyDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'powerSupplyStatusString' => '1.3.6.1.4.1.343.2.10.3.5.400.20.1.4',
  #'powerSupplyStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'powerSupplyStatus' => '1.3.6.1.4.1.343.2.10.3.5.400.20.1.5',
  'powerSupplyStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'voltageProbeTable' => '1.3.6.1.4.1.343.2.10.3.5.400.30',
  'voltageProbeTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1',
  'voltageIndex' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.1',
  #'voltageIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'voltageCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.2',
  'voltageDescription' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.3',
  #'voltageDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'voltageStatusString' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.4',
  #'voltageStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'voltageStatus' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.5',
  'voltageStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'voltageReading' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.6',
  'voltageUpperNonRecoverableThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.7',
  'voltageUpperCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.8',
  'voltageUpperNonCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.9',
  'voltageLowerNonCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.10',
  'voltageLowerCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.11',
  'voltageLowerNonRecoverableThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.12',
  'voltageResolution' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.13',
  'voltageTolerance' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.14',
  'voltageAccuracy' => '1.3.6.1.4.1.343.2.10.3.5.400.30.1.15',
  'discreteVoltageProbeTable' => '1.3.6.1.4.1.343.2.10.3.5.400.40',
  'discreteVoltageProbeTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.400.40.1',
  'discreteVoltageIndex' => '1.3.6.1.4.1.343.2.10.3.5.400.40.1.1',
  #'discreteVoltageIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'discreteVoltageCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.400.40.1.2',
  'discreteVoltageDescription' => '1.3.6.1.4.1.343.2.10.3.5.400.40.1.3',
  #'discreteVoltageDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteVoltageStatusString' => '1.3.6.1.4.1.343.2.10.3.5.400.40.1.4',
  #'discreteVoltageStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteVoltageStatus' => '1.3.6.1.4.1.343.2.10.3.5.400.40.1.5',
  'discreteVoltageStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'discreteVoltagePerformance' => '1.3.6.1.4.1.343.2.10.3.5.400.40.1.6',
  'discreteVoltagePerformanceDefinition' => 'INTEL-SERVER-BASEBOARD7::discreteVoltagePerformance',
  'currentProbeTable' => '1.3.6.1.4.1.343.2.10.3.5.400.50',
  'currentProbeTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1',
  'currentIndex' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.1',
  #'currentIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'currentCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.2',
  'currentDescription' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.3',
  #'currentDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'currentStatusString' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.4',
  #'currentStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'currentStatus' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.5',
  'currentStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'currentReading' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.6',
  'currentUpperNonRecoverableThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.7',
  'currentUpperCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.8',
  'currentUpperNonCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.9',
  'currentLowerNonCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.10',
  'currentLowerCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.11',
  'currentLowerNonRecoverableThreshold' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.12',
  'currentResolution' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.13',
  'currentTolerance' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.14',
  'currentAccuracy' => '1.3.6.1.4.1.343.2.10.3.5.400.50.1.15',
  'memoryGroup' => '1.3.6.1.4.1.343.2.10.3.5.500',
  'physicalMemoryArrayTable' => '1.3.6.1.4.1.343.2.10.3.5.500.10',
  'physicalMemoryArrayTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1',
  'physicalMemoryArrayIndex' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.1',
  #'physicalMemoryArrayIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'physicalMemoryArrayCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.2',
  'physicalMemoryArrayDescription' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.3',
  #'physicalMemoryArrayDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryArrayStatusString' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.4',
  #'physicalMemoryArrayStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryArrayStatus' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.5',
  'physicalMemoryArrayStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'physicalMemoryArrayLocation' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.6',
  'physicalMemoryArrayMaxCapacity' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.7',
  'physicalMemoryArrayNumberOfDevices' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.8',
  'physicalMemoryArrayErrorCorrection' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.9',
  'physicalMemoryArrayErrorCorrectionDefinition' => 'INTEL-SERVER-BASEBOARD7::physicalMemoryArrayErrorCorrection',
  'physicalMemoryArrayHandle' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.10',
  'physicalMemoryArrayUsageCode' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.11',
  'physicalMemoryArrayUsageCodeDefinition' => 'INTEL-SERVER-BASEBOARD7::physicalMemoryArrayUsageCode',
  'physicalMemoryArrayTag' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.12',
  #'physicalMemoryArrayTagDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryArrayUsedSlot' => '1.3.6.1.4.1.343.2.10.3.5.500.10.1.13',
  'physicalMemoryDeviceTable' => '1.3.6.1.4.1.343.2.10.3.5.500.20',
  'physicalMemoryDeviceTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1',
  'physicalMemoryDeviceIndex' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.1',
  #'physicalMemoryDeviceIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'physicalMemoryDeviceCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.2',
  'physicalMemoryDeviceDescription' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.3',
  #'physicalMemoryDeviceDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryDeviceStatusString' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.4',
  #'physicalMemoryDeviceStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryDeviceStatus' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.5',
  'physicalMemoryDeviceStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'physicalMemoryDeviceTag' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.6',
  #'physicalMemoryDeviceTagDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryDeviceHandle' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.7',
  'physicalMemoryDeviceAssociatedArray' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.8',
  'physicalMemoryDeviceTotalWidth' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.9',
  'physicalMemoryDeviceDataWidth' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.10',
  'physicalMemoryDeviceSize' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.11',
  'physicalMemoryDeviceFormFactor' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.12',
  'physicalMemoryDeviceFormFactorDefinition' => 'INTEL-SERVER-BASEBOARD7::physicalMemoryDeviceFormFactor',
  'physicalMemoryDeviceLocator' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.13',
  #'physicalMemoryDeviceLocatorDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryDeviceBankLabel' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.14',
  #'physicalMemoryDeviceBankLabelDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryDeviceMemoryType' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.15',
  'physicalMemoryDeviceMemoryTypeDefinition' => 'INTEL-SERVER-BASEBOARD7::physicalMemoryDeviceMemoryType',
  'physicalMemoryDeviceTypeDetail' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.16',
  'physicalMemoryDeviceSpeed' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.17',
  'physicalMemoryDeviceManufacturer' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.18',
  #'physicalMemoryDeviceManufacturerDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryDeviceSerialNumber' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.19',
  #'physicalMemoryDeviceSerialNumberDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryDeviceAssetTag' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.20',
  #'physicalMemoryDeviceAssetTagDefinition' => 'SNMPv2-TC::DisplayString',
  'physicalMemoryDevicePartNumber' => '1.3.6.1.4.1.343.2.10.3.5.500.20.1.21',
  #'physicalMemoryDevicePartNumberDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteMemoryTable' => '1.3.6.1.4.1.343.2.10.3.5.500.30',
  'discreteMemoryTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.500.30.1',
  'discreteMemoryIndex' => '1.3.6.1.4.1.343.2.10.3.5.500.30.1.1',
  #'discreteMemoryIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'discreteMemoryCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.500.30.1.2',
  'discreteMemoryDescription' => '1.3.6.1.4.1.343.2.10.3.5.500.30.1.3',
  #'discreteMemoryDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteMemoryStatusString' => '1.3.6.1.4.1.343.2.10.3.5.500.30.1.4',
  #'discreteMemoryStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteMemoryStatus' => '1.3.6.1.4.1.343.2.10.3.5.500.30.1.5',
  'discreteMemoryStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'thermalGroup' => '1.3.6.1.4.1.343.2.10.3.5.600',
  'coolingUnitTable' => '1.3.6.1.4.1.343.2.10.3.5.600.10',
  'coolingUnitTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.600.10.1',
  'coolingUnitIndex' => '1.3.6.1.4.1.343.2.10.3.5.600.10.1.1',
  #'coolingUnitIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'coolingUnitCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.600.10.1.2',
  'coolingUnitDescription' => '1.3.6.1.4.1.343.2.10.3.5.600.10.1.3',
  #'coolingUnitDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'coolingUnitStatusString' => '1.3.6.1.4.1.343.2.10.3.5.600.10.1.4',
  #'coolingUnitStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'coolingUnitStatus' => '1.3.6.1.4.1.343.2.10.3.5.600.10.1.5',
  'coolingUnitStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'coolingUnitRedundancyStatus' => '1.3.6.1.4.1.343.2.10.3.5.600.10.1.6',
  'coolingUnitRedundancyStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelRedundancyStatus',
  'coolingUnitCaption' => '1.3.6.1.4.1.343.2.10.3.5.600.10.1.7',
  #'coolingUnitCaptionDefinition' => 'SNMPv2-TC::DisplayString',
  'coolingDeviceTable' => '1.3.6.1.4.1.343.2.10.3.5.600.20',
  'coolingDeviceTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1',
  'coolingDeviceIndex' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.1',
  #'coolingDeviceIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'coolingDeviceCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.2',
  'coolingDeviceDescription' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.3',
  #'coolingDeviceDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'coolingDeviceStatusString' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.4',
  #'coolingDeviceStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'coolingDeviceStatus' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.5',
  'coolingDeviceStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'coolingDeviceReading' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.6',
  'coolingDeviceUpperNonRecoverableThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.7',
  'coolingDeviceUpperCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.8',
  'coolingDeviceUpperNonCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.9',
  'coolingDeviceLowerNonCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.10',
  'coolingDeviceLowerCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.11',
  'coolingDeviceLowerNonRecoverableThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.12',
  'coolingDeviceResolution' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.13',
  'coolingDeviceTolerance' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.14',
  'coolingDeviceAccuracy' => '1.3.6.1.4.1.343.2.10.3.5.600.20.1.15',
  'discreteCoolingDeviceTable' => '1.3.6.1.4.1.343.2.10.3.5.600.30',
  'discreteCoolingDeviceTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.600.30.1',
  'discreteCoolingDeviceIndex' => '1.3.6.1.4.1.343.2.10.3.5.600.30.1.1',
  #'discreteCoolingDeviceIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'discreteCoolingDeviceCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.600.30.1.2',
  'discreteCoolingDeviceDescription' => '1.3.6.1.4.1.343.2.10.3.5.600.30.1.3',
  #'discreteCoolingDeviceDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteCoolingDeviceStatusString' => '1.3.6.1.4.1.343.2.10.3.5.600.30.1.4',
  #'discreteCoolingDeviceStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'discreteCoolingDeviceStatus' => '1.3.6.1.4.1.343.2.10.3.5.600.30.1.5',
  'discreteCoolingDeviceStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'discreteCoolingDevicePerformance' => '1.3.6.1.4.1.343.2.10.3.5.600.30.1.6',
  'discreteCoolingDevicePerformanceDefinition' => 'INTEL-SERVER-BASEBOARD7::discreteCoolingDevicePerformance',
  'temperatureProbeTable' => '1.3.6.1.4.1.343.2.10.3.5.600.40',
  'temperatureProbeTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1',
  'temperatureIndex' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.1',
  #'temperatureIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'temperatureCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.2',
  'temperatureDescription' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.3',
  #'temperatureDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'temperatureStatusString' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.4',
  #'temperatureStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'temperatureStatus' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.5',
  'temperatureStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'temperatureReading' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.6',
  'temperatureUpperNonRecoverableThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.7',
  'temperatureUpperCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.8',
  'temperatureUpperNonCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.9',
  'temperatureLowerNonCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.10',
  'temperatureLowerCriticalThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.11',
  'temperatureLowerNonRecoverableThreshold' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.12',
  'temperatureResolution' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.13',
  'temperatureTolerance' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.14',
  'temperatureAccuracy' => '1.3.6.1.4.1.343.2.10.3.5.600.40.1.15',
  'driveSlotGroup' => '1.3.6.1.4.1.343.2.10.3.5.700',
  'driveSlotPresenceSensorTable' => '1.3.6.1.4.1.343.2.10.3.5.700.10',
  'driveSlotPresenceSensorTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.700.10.1',
  'driveSlotPresenceSensorIndex' => '1.3.6.1.4.1.343.2.10.3.5.700.10.1.1',
  #'driveSlotPresenceSensorIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'driveSlotPresenceSensorCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.700.10.1.2',
  'driveSlotPresenceSensorDescription' => '1.3.6.1.4.1.343.2.10.3.5.700.10.1.3',
  #'driveSlotPresenceSensorDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'driveSlotPresenceSensorStatusString' => '1.3.6.1.4.1.343.2.10.3.5.700.10.1.4',
  #'driveSlotPresenceSensorStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'driveSlotPresenceSensorStatus' => '1.3.6.1.4.1.343.2.10.3.5.700.10.1.5',
  'driveSlotPresenceSensorStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'driveSlotPresenceSensorPresenceStatusString' => '1.3.6.1.4.1.343.2.10.3.5.700.10.1.6',
  #'driveSlotPresenceSensorPresenceStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'miscellaneousGroup' => '1.3.6.1.4.1.343.2.10.3.5.800',
  'miscellaneousSensorTable' => '1.3.6.1.4.1.343.2.10.3.5.800.10',
  'miscellaneousSensorTableEntry' => '1.3.6.1.4.1.343.2.10.3.5.800.10.1',
  'miscellaneousSensorIndex' => '1.3.6.1.4.1.343.2.10.3.5.800.10.1.1',
  #'miscellaneousSensorIndexDefinition' => 'INTEL-SERVER-BASEBOARD7::OneBasedIndex',
  'miscellaneousSensorCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.800.10.1.2',
  'miscellaneousSensorDescription' => '1.3.6.1.4.1.343.2.10.3.5.800.10.1.3',
  #'miscellaneousSensorDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'miscellaneousSensorStatusString' => '1.3.6.1.4.1.343.2.10.3.5.800.10.1.4',
  #'miscellaneousSensorStatusStringDefinition' => 'SNMPv2-TC::DisplayString',
  'miscellaneousSensorStatus' => '1.3.6.1.4.1.343.2.10.3.5.800.10.1.5',
  'miscellaneousSensorStatusDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'baseboard7EventGroup' => '1.3.6.1.4.1.343.2.10.3.5.1000',
  'eventVariables' => '1.3.6.1.4.1.343.2.10.3.5.1000.10',
  'eventDescription' => '1.3.6.1.4.1.343.2.10.3.5.1000.10.1',
  #'eventDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'eventSeverity' => '1.3.6.1.4.1.343.2.10.3.5.1000.10.2',
  'eventSeverityDefinition' => 'INTEL-SERVER-BASEBOARD7::IntelStatus',
  'eventSlotDescription' => '1.3.6.1.4.1.343.2.10.3.5.1000.10.3',
  #'eventSlotDescriptionDefinition' => 'SNMPv2-TC::DisplayString',
  'eventSlotCIMDeviceId' => '1.3.6.1.4.1.343.2.10.3.5.1000.10.4',
  'systemManagementSWEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.20',
  'chassisEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.30',
  'processorEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.40',
  'powerEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.50',
  'memoryEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.60',
  'thermalEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.70',
  'slotEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.80',
  'systemEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.90',
  'driveSlotEvents' => '1.3.6.1.4.1.343.2.10.3.5.1000.100',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'INTEL-SERVER-BASEBOARD7'} = {
  'systemManagementInfoTrapsEnabled' => {
    '0' => 'false',
    '1' => 'true',
  },
  'discreteVoltagePerformance' => {
    '1' => 'met',
    '2' => 'lags',
  },
  'processorFamily' => {
    '1' => 'vOther',
    '2' => 'vUnknown',
    '3' => 'v8086',
    '4' => 'v80286',
    '5' => 'v80386',
    '6' => 'v80486',
    '7' => 'v8087',
    '8' => 'v80287',
    '9' => 'v80387',
    '10' => 'v80487',
    '11' => 'vPentiumProcessor',
    '12' => 'vPentiumProProcessor',
    '13' => 'vPentiumIIProcessor',
    '14' => 'vPentiumProcessorWithMMXTechnology',
    '15' => 'vCeleronProcessor',
    '16' => 'vPentiumIIXeonProcessor',
    '17' => 'vPentiumIIIProcessor',
    '18' => 'vM1Family',
    '19' => 'vM2Family',
    '25' => 'vK5Family',
    '26' => 'vK6Family',
    '32' => 'vPowerPcFamily',
    '33' => 'vPowerPc601',
    '34' => 'vPowerPc603',
    '35' => 'vPowerPc603p',
    '36' => 'vPowerPc604',
    '48' => 'vAlphaFamily',
    '64' => 'vMipsFamily',
    '80' => 'vSparcFamily',
    '96' => 'v68040',
    '97' => 'v68xxxFamily',
    '98' => 'v68000',
    '99' => 'v68010',
    '100' => 'v68020',
    '101' => 'v68030',
    '112' => 'vHobbitFamily',
    '128' => 'vWeitek',
    '130' => 'vItaniumProcessor',
    '144' => 'vPa-riscFamily',
    '160' => 'vV30Family',
    '176' => 'vPentiumIIIXeonProcessor',
    '177' => 'vPentiumIIIProcessorwithSpeedStepTechnology',
    '178' => 'vPentium4Processor',
    '179' => 'vIntelXeon',
    '181' => 'vIntelXeonprocessorMP',
    '184' => 'vIntelItanium2Processor',
  },
  'chassisLockState' => {
    '1' => 'notpresent',
    '2' => 'present',
    '3' => 'unknown',
  },
  'systemManagementInfoSetsEnabled' => {
    '0' => 'false',
    '1' => 'true',
  },
  'physicalMemoryDeviceMemoryType' => {
    '1' => 'vOther',
    '2' => 'vUnknown',
    '3' => 'vDRAM',
    '4' => 'vEDRAM',
    '5' => 'vVRAM',
    '6' => 'vSRAM',
    '7' => 'vRAM',
    '8' => 'vROM',
    '9' => 'vFLASH',
    '10' => 'vEEPROM',
    '11' => 'vFEPROM',
    '12' => 'vEPROM',
    '13' => 'vCDRAM',
    '14' => 'v3DRAM',
    '15' => 'vSDRAM',
    '16' => 'vSGRAM',
    '17' => 'vRDRAM',
    '18' => 'vDDR',
    '19' => 'vDDR2',
    '20' => 'vFBDIMM',
    '21' => 'vDDR3',
  },
  'IntelRedundancyStatus' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'full',
    '4' => 'degraded',
    '5' => 'lost',
    '6' => 'notRedundant',
    '7' => 'redundancyOffline',
    '8' => 'notApplicable',
  },
  'IntelStatus' => {
    '1' => 'unavailable',
    '2' => 'healthy',
    '3' => 'warning',
    '4' => 'critical',
  },
  'chassisContainerType' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'desktop',
    '4' => 'lowProfileDesktop',
    '5' => 'pizzaBox',
    '6' => 'miniTower',
    '7' => 'tower',
    '8' => 'portable',
    '9' => 'laptop',
    '10' => 'notebook',
    '11' => 'handHeld',
    '12' => 'dockingStation',
    '13' => 'allInOne',
    '14' => 'subNoteBook',
    '15' => 'spaceSaving',
    '16' => 'lunchBox',
    '17' => 'mainSystemChassis',
    '18' => 'expansionChassis',
    '19' => 'subChassis',
    '20' => 'busExpansionChassis',
    '21' => 'peripheralChassis',
    '22' => 'raidChassis',
    '23' => 'rackMountChassis',
    '24' => 'sealedCasePC',
    '25' => 'multiSystemChassis',
  },
  'processorType' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'centralProcessor',
    '4' => 'mathProcessor',
    '5' => 'dspProcessor',
    '6' => 'videoProcessor',
  },
  'discreteCoolingDevicePerformance' => {
    '1' => 'met',
    '2' => 'lags',
  },
  'chassisPowerState' => {
    '1' => 'off',
    '2' => 'on',
    '3' => 'unknown',
  },
  'physicalMemoryArrayUsageCode' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'systemMemory',
    '4' => 'videoMemory',
    '5' => 'flashMemory',
    '6' => 'nonVolatileRAM',
    '7' => 'cacheMemory',
  },
  'IntelFeatureStatus' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'disabled',
    '4' => 'enabled',
    '5' => 'notImplemented',
  },
  'physicalMemoryDeviceFormFactor' => {
    '1' => 'vOther',
    '2' => 'vUnknown',
    '3' => 'vSIMM',
    '4' => 'vSIP',
    '5' => 'vChip',
    '6' => 'vDIP',
    '7' => 'vZIP',
    '8' => 'vProprietaryCard',
    '9' => 'vDIMM',
    '10' => 'vTSOP',
    '11' => 'vRowOfChips',
    '12' => 'vRIMM',
    '13' => 'vSODIMM',
    '14' => 'vSRIMM',
    '15' => 'vFBDIMM',
  },
  'processorUpgradeMethod' => {
    '1' => 'vOther',
    '2' => 'vUnknown',
    '3' => 'vDaughterBoard',
    '4' => 'vZifSocket',
    '5' => 'vReplacementpiggyBack',
    '6' => 'vNone',
    '7' => 'vLIFSocket',
    '8' => 'vSlot1',
    '9' => 'vSlot2',
    '10' => 'v370pinSocket',
    '11' => 'vSlotA',
    '12' => 'vSlotM',
    '13' => 'vSocket423',
    '14' => 'vSocketASocket462',
    '15' => 'vSocket478',
    '16' => 'vSocket754',
    '17' => 'vSocket940',
    '18' => 'vSocket939',
    '19' => 'vSocketmPGA604',
    '20' => 'vSocketLGA771',
    '21' => 'vSocketLGA775',
    '22' => 'vSocketS1',
    '23' => 'vSocketAM2',
    '24' => 'vSocketF',
  },
  'physicalMemoryArrayErrorCorrection' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'none',
    '4' => 'singleBitErrorCorrecting',
    '5' => 'doubleBitErrorCorrecting',
    '6' => 'errorScrubbing',
  },
  'chassisSecurityState' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'ok',
    '4' => 'breachdetected',
  },
  'IntelRedundancyStatus' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'full',
    '4' => 'degraded',
    '5' => 'lost',
    '6' => 'notRedundant',
    '7' => 'redundancyOffline',
    '8' => 'notApplicable',
  },
  'IntelStatus' => {
    '1' => 'unavailable',
    '2' => 'healthy',
    '3' => 'warning',
    '4' => 'critical',
  },
  'IntelFeatureStatus' => {
    '1' => 'other',
    '2' => 'unknown',
    '3' => 'disabled',
    '4' => 'enabled',
    '5' => 'notImplemented',
  },
};
