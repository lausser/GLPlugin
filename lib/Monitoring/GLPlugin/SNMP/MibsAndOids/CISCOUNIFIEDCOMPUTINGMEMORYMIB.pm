package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOUNIFIEDCOMPUTINGMEMORYMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-UNIFIED-COMPUTING-MEMORY-MIB'} = {
  url => '',
  name => 'CISCO-UNIFIED-COMPUTING-MEMORY-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-UNIFIED-COMPUTING-MEMORY-MIB'} =
  '1.3.6.1.4.1.9.9.719.1.30';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-UNIFIED-COMPUTING-MEMORY-MIB'} = {
  'cucsMemoryObjects' => '1.3.6.1.4.1.9.9.719.1.30',
  'cucsMemoryArrayTable' => '1.3.6.1.4.1.9.9.719.1.30.1',
  'cucsMemoryArrayEntry' => '1.3.6.1.4.1.9.9.719.1.30.1.1',
  'cucsMemoryArrayInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.1.1.1',
  #'cucsMemoryArrayInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryArrayDn' => '1.3.6.1.4.1.9.9.719.1.30.1.1.2',
  #'cucsMemoryArrayDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryArrayRn' => '1.3.6.1.4.1.9.9.719.1.30.1.1.3',
  #'cucsMemoryArrayRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArrayCpuId' => '1.3.6.1.4.1.9.9.719.1.30.1.1.4',
  #'cucsMemoryArrayCpuIdDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryArrayCurrCapacity' => '1.3.6.1.4.1.9.9.719.1.30.1.1.5',
  #'cucsMemoryArrayCurrCapacityDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryArrayErrorCorrection' => '1.3.6.1.4.1.9.9.719.1.30.1.1.6',
  'cucsMemoryArrayErrorCorrectionDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryErrorCorrection',
  'cucsMemoryArrayId' => '1.3.6.1.4.1.9.9.719.1.30.1.1.7',
  #'cucsMemoryArrayIdDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryArrayId',
  'cucsMemoryArrayMaxCapacity' => '1.3.6.1.4.1.9.9.719.1.30.1.1.8',
  #'cucsMemoryArrayMaxCapacityDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryArrayMaxDevices' => '1.3.6.1.4.1.9.9.719.1.30.1.1.9',
  #'cucsMemoryArrayMaxDevicesDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryArrayModel' => '1.3.6.1.4.1.9.9.719.1.30.1.1.10',
  #'cucsMemoryArrayModelDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArrayOperState' => '1.3.6.1.4.1.9.9.719.1.30.1.1.11',
  'cucsMemoryArrayOperStateDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentOperability',
  'cucsMemoryArrayOperability' => '1.3.6.1.4.1.9.9.719.1.30.1.1.12',
  'cucsMemoryArrayOperabilityDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentOperability',
  'cucsMemoryArrayPerf' => '1.3.6.1.4.1.9.9.719.1.30.1.1.13',
  'cucsMemoryArrayPerfDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryArrayPopulated' => '1.3.6.1.4.1.9.9.719.1.30.1.1.14',
  #'cucsMemoryArrayPopulatedDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryArrayPower' => '1.3.6.1.4.1.9.9.719.1.30.1.1.15',
  'cucsMemoryArrayPowerDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentPowerState',
  'cucsMemoryArrayPresence' => '1.3.6.1.4.1.9.9.719.1.30.1.1.16',
  'cucsMemoryArrayPresenceDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentPresence',
  'cucsMemoryArrayRevision' => '1.3.6.1.4.1.9.9.719.1.30.1.1.17',
  #'cucsMemoryArrayRevisionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArraySerial' => '1.3.6.1.4.1.9.9.719.1.30.1.1.18',
  #'cucsMemoryArraySerialDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArrayThermal' => '1.3.6.1.4.1.9.9.719.1.30.1.1.19',
  'cucsMemoryArrayThermalDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryArrayVendor' => '1.3.6.1.4.1.9.9.719.1.30.1.1.20',
  #'cucsMemoryArrayVendorDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArrayVoltage' => '1.3.6.1.4.1.9.9.719.1.30.1.1.21',
  'cucsMemoryArrayVoltageDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryArrayOperQualifierReason' => '1.3.6.1.4.1.9.9.719.1.30.1.1.22',
  #'cucsMemoryArrayOperQualifierReasonDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArrayLocationDn' => '1.3.6.1.4.1.9.9.719.1.30.1.1.23',
  #'cucsMemoryArrayLocationDnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArrayEnvStatsTable' => '1.3.6.1.4.1.9.9.719.1.30.2',
  'cucsMemoryArrayEnvStatsEntry' => '1.3.6.1.4.1.9.9.719.1.30.2.1',
  'cucsMemoryArrayEnvStatsInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.2.1.1',
  #'cucsMemoryArrayEnvStatsInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryArrayEnvStatsDn' => '1.3.6.1.4.1.9.9.719.1.30.2.1.2',
  #'cucsMemoryArrayEnvStatsDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryArrayEnvStatsRn' => '1.3.6.1.4.1.9.9.719.1.30.2.1.3',
  #'cucsMemoryArrayEnvStatsRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArrayEnvStatsInputCurrent' => '1.3.6.1.4.1.9.9.719.1.30.2.1.4',
  'cucsMemoryArrayEnvStatsInputCurrentAvg' => '1.3.6.1.4.1.9.9.719.1.30.2.1.5',
  'cucsMemoryArrayEnvStatsInputCurrentMax' => '1.3.6.1.4.1.9.9.719.1.30.2.1.6',
  'cucsMemoryArrayEnvStatsInputCurrentMin' => '1.3.6.1.4.1.9.9.719.1.30.2.1.7',
  'cucsMemoryArrayEnvStatsIntervals' => '1.3.6.1.4.1.9.9.719.1.30.2.1.8',
  #'cucsMemoryArrayEnvStatsIntervalsDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryArrayEnvStatsSuspect' => '1.3.6.1.4.1.9.9.719.1.30.2.1.9',
  'cucsMemoryArrayEnvStatsSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryArrayEnvStatsThresholded' => '1.3.6.1.4.1.9.9.719.1.30.2.1.10',
  #'cucsMemoryArrayEnvStatsThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryArrayEnvStatsThresholded',
  'cucsMemoryArrayEnvStatsTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.2.1.11',
  #'cucsMemoryArrayEnvStatsTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cucsMemoryArrayEnvStatsUpdate' => '1.3.6.1.4.1.9.9.719.1.30.2.1.12',
  #'cucsMemoryArrayEnvStatsUpdateDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryArrayEnvStatsHistTable' => '1.3.6.1.4.1.9.9.719.1.30.3',
  'cucsMemoryArrayEnvStatsHistEntry' => '1.3.6.1.4.1.9.9.719.1.30.3.1',
  'cucsMemoryArrayEnvStatsHistInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.3.1.1',
  #'cucsMemoryArrayEnvStatsHistInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryArrayEnvStatsHistDn' => '1.3.6.1.4.1.9.9.719.1.30.3.1.2',
  #'cucsMemoryArrayEnvStatsHistDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryArrayEnvStatsHistRn' => '1.3.6.1.4.1.9.9.719.1.30.3.1.3',
  #'cucsMemoryArrayEnvStatsHistRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryArrayEnvStatsHistId' => '1.3.6.1.4.1.9.9.719.1.30.3.1.4',
  #'cucsMemoryArrayEnvStatsHistIdDefinition' => 'CISCO-TC::Unsigned64',
  'cucsMemoryArrayEnvStatsHistInputCurrent' => '1.3.6.1.4.1.9.9.719.1.30.3.1.5',
  'cucsMemoryArrayEnvStatsHistInputCurrentAvg' => '1.3.6.1.4.1.9.9.719.1.30.3.1.6',
  'cucsMemoryArrayEnvStatsHistInputCurrentMax' => '1.3.6.1.4.1.9.9.719.1.30.3.1.7',
  'cucsMemoryArrayEnvStatsHistInputCurrentMin' => '1.3.6.1.4.1.9.9.719.1.30.3.1.8',
  'cucsMemoryArrayEnvStatsHistMostRecent' => '1.3.6.1.4.1.9.9.719.1.30.3.1.9',
  'cucsMemoryArrayEnvStatsHistMostRecentDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryArrayEnvStatsHistSuspect' => '1.3.6.1.4.1.9.9.719.1.30.3.1.10',
  'cucsMemoryArrayEnvStatsHistSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryArrayEnvStatsHistThresholded' => '1.3.6.1.4.1.9.9.719.1.30.3.1.11',
  #'cucsMemoryArrayEnvStatsHistThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryArrayEnvStatsHistThresholded',
  'cucsMemoryArrayEnvStatsHistTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.3.1.12',
  #'cucsMemoryArrayEnvStatsHistTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cucsMemoryBufferUnitTable' => '1.3.6.1.4.1.9.9.719.1.30.4',
  'cucsMemoryBufferUnitEntry' => '1.3.6.1.4.1.9.9.719.1.30.4.1',
  'cucsMemoryBufferUnitInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.4.1.1',
  #'cucsMemoryBufferUnitInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryBufferUnitDn' => '1.3.6.1.4.1.9.9.719.1.30.4.1.2',
  #'cucsMemoryBufferUnitDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryBufferUnitRn' => '1.3.6.1.4.1.9.9.719.1.30.4.1.3',
  #'cucsMemoryBufferUnitRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitId' => '1.3.6.1.4.1.9.9.719.1.30.4.1.4',
  #'cucsMemoryBufferUnitIdDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryBufferUnitId',
  'cucsMemoryBufferUnitModel' => '1.3.6.1.4.1.9.9.719.1.30.4.1.5',
  #'cucsMemoryBufferUnitModelDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitOperState' => '1.3.6.1.4.1.9.9.719.1.30.4.1.6',
  'cucsMemoryBufferUnitOperStateDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentOperability',
  'cucsMemoryBufferUnitOperability' => '1.3.6.1.4.1.9.9.719.1.30.4.1.7',
  'cucsMemoryBufferUnitOperabilityDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentOperability',
  'cucsMemoryBufferUnitPerf' => '1.3.6.1.4.1.9.9.719.1.30.4.1.8',
  'cucsMemoryBufferUnitPerfDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryBufferUnitPower' => '1.3.6.1.4.1.9.9.719.1.30.4.1.9',
  'cucsMemoryBufferUnitPowerDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentPowerState',
  'cucsMemoryBufferUnitPresence' => '1.3.6.1.4.1.9.9.719.1.30.4.1.10',
  'cucsMemoryBufferUnitPresenceDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentPresence',
  'cucsMemoryBufferUnitRevision' => '1.3.6.1.4.1.9.9.719.1.30.4.1.11',
  #'cucsMemoryBufferUnitRevisionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitSerial' => '1.3.6.1.4.1.9.9.719.1.30.4.1.12',
  #'cucsMemoryBufferUnitSerialDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitThermal' => '1.3.6.1.4.1.9.9.719.1.30.4.1.13',
  'cucsMemoryBufferUnitThermalDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryBufferUnitVendor' => '1.3.6.1.4.1.9.9.719.1.30.4.1.14',
  #'cucsMemoryBufferUnitVendorDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitVoltage' => '1.3.6.1.4.1.9.9.719.1.30.4.1.15',
  'cucsMemoryBufferUnitVoltageDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryBufferUnitOperQualifierReason' => '1.3.6.1.4.1.9.9.719.1.30.4.1.16',
  #'cucsMemoryBufferUnitOperQualifierReasonDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitLocationDn' => '1.3.6.1.4.1.9.9.719.1.30.4.1.17',
  #'cucsMemoryBufferUnitLocationDnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitEnvStatsTable' => '1.3.6.1.4.1.9.9.719.1.30.5',
  'cucsMemoryBufferUnitEnvStatsEntry' => '1.3.6.1.4.1.9.9.719.1.30.5.1',
  'cucsMemoryBufferUnitEnvStatsInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.5.1.1',
  #'cucsMemoryBufferUnitEnvStatsInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryBufferUnitEnvStatsDn' => '1.3.6.1.4.1.9.9.719.1.30.5.1.2',
  #'cucsMemoryBufferUnitEnvStatsDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryBufferUnitEnvStatsRn' => '1.3.6.1.4.1.9.9.719.1.30.5.1.3',
  #'cucsMemoryBufferUnitEnvStatsRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitEnvStatsIntervals' => '1.3.6.1.4.1.9.9.719.1.30.5.1.4',
  #'cucsMemoryBufferUnitEnvStatsIntervalsDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryBufferUnitEnvStatsSuspect' => '1.3.6.1.4.1.9.9.719.1.30.5.1.5',
  'cucsMemoryBufferUnitEnvStatsSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryBufferUnitEnvStatsTemperature' => '1.3.6.1.4.1.9.9.719.1.30.5.1.6',
  'cucsMemoryBufferUnitEnvStatsTemperatureAvg' => '1.3.6.1.4.1.9.9.719.1.30.5.1.7',
  'cucsMemoryBufferUnitEnvStatsTemperatureMax' => '1.3.6.1.4.1.9.9.719.1.30.5.1.8',
  'cucsMemoryBufferUnitEnvStatsTemperatureMin' => '1.3.6.1.4.1.9.9.719.1.30.5.1.9',
  'cucsMemoryBufferUnitEnvStatsThresholded' => '1.3.6.1.4.1.9.9.719.1.30.5.1.10',
  #'cucsMemoryBufferUnitEnvStatsThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryBufferUnitEnvStatsThresholded',
  'cucsMemoryBufferUnitEnvStatsTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.5.1.11',
  #'cucsMemoryBufferUnitEnvStatsTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cucsMemoryBufferUnitEnvStatsUpdate' => '1.3.6.1.4.1.9.9.719.1.30.5.1.12',
  #'cucsMemoryBufferUnitEnvStatsUpdateDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryBufferUnitEnvStatsHistTable' => '1.3.6.1.4.1.9.9.719.1.30.6',
  'cucsMemoryBufferUnitEnvStatsHistEntry' => '1.3.6.1.4.1.9.9.719.1.30.6.1',
  'cucsMemoryBufferUnitEnvStatsHistInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.6.1.1',
  #'cucsMemoryBufferUnitEnvStatsHistInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryBufferUnitEnvStatsHistDn' => '1.3.6.1.4.1.9.9.719.1.30.6.1.2',
  #'cucsMemoryBufferUnitEnvStatsHistDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryBufferUnitEnvStatsHistRn' => '1.3.6.1.4.1.9.9.719.1.30.6.1.3',
  #'cucsMemoryBufferUnitEnvStatsHistRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryBufferUnitEnvStatsHistId' => '1.3.6.1.4.1.9.9.719.1.30.6.1.4',
  #'cucsMemoryBufferUnitEnvStatsHistIdDefinition' => 'CISCO-TC::Unsigned64',
  'cucsMemoryBufferUnitEnvStatsHistMostRecent' => '1.3.6.1.4.1.9.9.719.1.30.6.1.5',
  'cucsMemoryBufferUnitEnvStatsHistMostRecentDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryBufferUnitEnvStatsHistSuspect' => '1.3.6.1.4.1.9.9.719.1.30.6.1.6',
  'cucsMemoryBufferUnitEnvStatsHistSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryBufferUnitEnvStatsHistTemperature' => '1.3.6.1.4.1.9.9.719.1.30.6.1.7',
  'cucsMemoryBufferUnitEnvStatsHistTemperatureAvg' => '1.3.6.1.4.1.9.9.719.1.30.6.1.8',
  'cucsMemoryBufferUnitEnvStatsHistTemperatureMax' => '1.3.6.1.4.1.9.9.719.1.30.6.1.9',
  'cucsMemoryBufferUnitEnvStatsHistTemperatureMin' => '1.3.6.1.4.1.9.9.719.1.30.6.1.10',
  'cucsMemoryBufferUnitEnvStatsHistThresholded' => '1.3.6.1.4.1.9.9.719.1.30.6.1.11',
  #'cucsMemoryBufferUnitEnvStatsHistThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryBufferUnitEnvStatsHistThresholded',
  'cucsMemoryBufferUnitEnvStatsHistTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.6.1.12',
  #'cucsMemoryBufferUnitEnvStatsHistTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cucsMemoryErrorStatsTable' => '1.3.6.1.4.1.9.9.719.1.30.7',
  'cucsMemoryErrorStatsEntry' => '1.3.6.1.4.1.9.9.719.1.30.7.1',
  'cucsMemoryErrorStatsInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.7.1.1',
  #'cucsMemoryErrorStatsInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryErrorStatsDn' => '1.3.6.1.4.1.9.9.719.1.30.7.1.2',
  #'cucsMemoryErrorStatsDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryErrorStatsRn' => '1.3.6.1.4.1.9.9.719.1.30.7.1.3',
  #'cucsMemoryErrorStatsRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryErrorStatsAddressParityErrors' => '1.3.6.1.4.1.9.9.719.1.30.7.1.4',
  #'cucsMemoryErrorStatsAddressParityErrorsDefinition' => 'SNMPv2-SMI::Counter32',
  'cucsMemoryErrorStatsAddressParityErrors15Min' => '1.3.6.1.4.1.9.9.719.1.30.7.1.5',
  #'cucsMemoryErrorStatsAddressParityErrors15MinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors15MinH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.6',
  #'cucsMemoryErrorStatsAddressParityErrors15MinHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors1Day' => '1.3.6.1.4.1.9.9.719.1.30.7.1.7',
  #'cucsMemoryErrorStatsAddressParityErrors1DayDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors1DayH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.8',
  #'cucsMemoryErrorStatsAddressParityErrors1DayHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors1Hour' => '1.3.6.1.4.1.9.9.719.1.30.7.1.9',
  #'cucsMemoryErrorStatsAddressParityErrors1HourDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors1HourH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.10',
  #'cucsMemoryErrorStatsAddressParityErrors1HourHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors1Week' => '1.3.6.1.4.1.9.9.719.1.30.7.1.11',
  #'cucsMemoryErrorStatsAddressParityErrors1WeekDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors1WeekH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.12',
  #'cucsMemoryErrorStatsAddressParityErrors1WeekHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors' => '1.3.6.1.4.1.9.9.719.1.30.7.1.13',
  #'cucsMemoryErrorStatsEccMultibitErrorsDefinition' => 'SNMPv2-SMI::Counter32',
  'cucsMemoryErrorStatsEccMultibitErrors15Min' => '1.3.6.1.4.1.9.9.719.1.30.7.1.14',
  #'cucsMemoryErrorStatsEccMultibitErrors15MinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors15MinH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.15',
  #'cucsMemoryErrorStatsEccMultibitErrors15MinHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors1Day' => '1.3.6.1.4.1.9.9.719.1.30.7.1.16',
  #'cucsMemoryErrorStatsEccMultibitErrors1DayDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors1DayH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.17',
  #'cucsMemoryErrorStatsEccMultibitErrors1DayHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors1Hour' => '1.3.6.1.4.1.9.9.719.1.30.7.1.18',
  #'cucsMemoryErrorStatsEccMultibitErrors1HourDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors1HourH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.19',
  #'cucsMemoryErrorStatsEccMultibitErrors1HourHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors1Week' => '1.3.6.1.4.1.9.9.719.1.30.7.1.20',
  #'cucsMemoryErrorStatsEccMultibitErrors1WeekDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors1WeekH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.21',
  #'cucsMemoryErrorStatsEccMultibitErrors1WeekHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors' => '1.3.6.1.4.1.9.9.719.1.30.7.1.22',
  #'cucsMemoryErrorStatsEccSinglebitErrorsDefinition' => 'SNMPv2-SMI::Counter32',
  'cucsMemoryErrorStatsEccSinglebitErrors15Min' => '1.3.6.1.4.1.9.9.719.1.30.7.1.23',
  #'cucsMemoryErrorStatsEccSinglebitErrors15MinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors15MinH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.24',
  #'cucsMemoryErrorStatsEccSinglebitErrors15MinHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors1Day' => '1.3.6.1.4.1.9.9.719.1.30.7.1.25',
  #'cucsMemoryErrorStatsEccSinglebitErrors1DayDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors1DayH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.26',
  #'cucsMemoryErrorStatsEccSinglebitErrors1DayHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors1Hour' => '1.3.6.1.4.1.9.9.719.1.30.7.1.27',
  #'cucsMemoryErrorStatsEccSinglebitErrors1HourDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors1HourH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.28',
  #'cucsMemoryErrorStatsEccSinglebitErrors1HourHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors1Week' => '1.3.6.1.4.1.9.9.719.1.30.7.1.29',
  #'cucsMemoryErrorStatsEccSinglebitErrors1WeekDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors1WeekH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.30',
  #'cucsMemoryErrorStatsEccSinglebitErrors1WeekHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsIntervals' => '1.3.6.1.4.1.9.9.719.1.30.7.1.31',
  #'cucsMemoryErrorStatsIntervalsDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors' => '1.3.6.1.4.1.9.9.719.1.30.7.1.32',
  #'cucsMemoryErrorStatsMismatchErrorsDefinition' => 'SNMPv2-SMI::Counter32',
  'cucsMemoryErrorStatsMismatchErrors15Min' => '1.3.6.1.4.1.9.9.719.1.30.7.1.33',
  #'cucsMemoryErrorStatsMismatchErrors15MinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors15MinH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.34',
  #'cucsMemoryErrorStatsMismatchErrors15MinHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors1Day' => '1.3.6.1.4.1.9.9.719.1.30.7.1.35',
  #'cucsMemoryErrorStatsMismatchErrors1DayDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors1DayH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.36',
  #'cucsMemoryErrorStatsMismatchErrors1DayHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors1Hour' => '1.3.6.1.4.1.9.9.719.1.30.7.1.37',
  #'cucsMemoryErrorStatsMismatchErrors1HourDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors1HourH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.38',
  #'cucsMemoryErrorStatsMismatchErrors1HourHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors1Week' => '1.3.6.1.4.1.9.9.719.1.30.7.1.39',
  #'cucsMemoryErrorStatsMismatchErrors1WeekDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors1WeekH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.40',
  #'cucsMemoryErrorStatsMismatchErrors1WeekHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsSuspect' => '1.3.6.1.4.1.9.9.719.1.30.7.1.41',
  'cucsMemoryErrorStatsSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryErrorStatsThresholded' => '1.3.6.1.4.1.9.9.719.1.30.7.1.42',
  #'cucsMemoryErrorStatsThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryErrorStatsThresholded',
  'cucsMemoryErrorStatsTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.7.1.43',
  #'cucsMemoryErrorStatsTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cucsMemoryErrorStatsUpdate' => '1.3.6.1.4.1.9.9.719.1.30.7.1.44',
  #'cucsMemoryErrorStatsUpdateDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors2Weeks' => '1.3.6.1.4.1.9.9.719.1.30.7.1.45',
  #'cucsMemoryErrorStatsAddressParityErrors2WeeksDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsAddressParityErrors2WeeksH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.46',
  #'cucsMemoryErrorStatsAddressParityErrors2WeeksHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors2Weeks' => '1.3.6.1.4.1.9.9.719.1.30.7.1.47',
  #'cucsMemoryErrorStatsEccMultibitErrors2WeeksDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccMultibitErrors2WeeksH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.48',
  #'cucsMemoryErrorStatsEccMultibitErrors2WeeksHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors2Weeks' => '1.3.6.1.4.1.9.9.719.1.30.7.1.49',
  #'cucsMemoryErrorStatsEccSinglebitErrors2WeeksDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsEccSinglebitErrors2WeeksH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.50',
  #'cucsMemoryErrorStatsEccSinglebitErrors2WeeksHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors2Weeks' => '1.3.6.1.4.1.9.9.719.1.30.7.1.51',
  #'cucsMemoryErrorStatsMismatchErrors2WeeksDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryErrorStatsMismatchErrors2WeeksH' => '1.3.6.1.4.1.9.9.719.1.30.7.1.52',
  #'cucsMemoryErrorStatsMismatchErrors2WeeksHDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryQualTable' => '1.3.6.1.4.1.9.9.719.1.30.8',
  'cucsMemoryQualEntry' => '1.3.6.1.4.1.9.9.719.1.30.8.1',
  'cucsMemoryQualInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.8.1.1',
  #'cucsMemoryQualInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryQualDn' => '1.3.6.1.4.1.9.9.719.1.30.8.1.2',
  #'cucsMemoryQualDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryQualRn' => '1.3.6.1.4.1.9.9.719.1.30.8.1.3',
  #'cucsMemoryQualRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryQualClock' => '1.3.6.1.4.1.9.9.719.1.30.8.1.4',
  #'cucsMemoryQualClockDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryQualLatency' => '1.3.6.1.4.1.9.9.719.1.30.8.1.5',
  'cucsMemoryQualMaxCap' => '1.3.6.1.4.1.9.9.719.1.30.8.1.6',
  #'cucsMemoryQualMaxCapDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryQualMinCap' => '1.3.6.1.4.1.9.9.719.1.30.8.1.7',
  #'cucsMemoryQualMinCapDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryQualSpeed' => '1.3.6.1.4.1.9.9.719.1.30.8.1.8',
  #'cucsMemoryQualSpeedDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryQualUnits' => '1.3.6.1.4.1.9.9.719.1.30.8.1.9',
  #'cucsMemoryQualUnitsDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryQualWidth' => '1.3.6.1.4.1.9.9.719.1.30.8.1.10',
  #'cucsMemoryQualWidthDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeTable' => '1.3.6.1.4.1.9.9.719.1.30.9',
  'cucsMemoryRuntimeEntry' => '1.3.6.1.4.1.9.9.719.1.30.9.1',
  'cucsMemoryRuntimeInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.9.1.1',
  #'cucsMemoryRuntimeInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryRuntimeDn' => '1.3.6.1.4.1.9.9.719.1.30.9.1.2',
  #'cucsMemoryRuntimeDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryRuntimeRn' => '1.3.6.1.4.1.9.9.719.1.30.9.1.3',
  #'cucsMemoryRuntimeRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryRuntimeAvailable' => '1.3.6.1.4.1.9.9.719.1.30.9.1.4',
  #'cucsMemoryRuntimeAvailableDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeAvailableAvg' => '1.3.6.1.4.1.9.9.719.1.30.9.1.5',
  #'cucsMemoryRuntimeAvailableAvgDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeAvailableMax' => '1.3.6.1.4.1.9.9.719.1.30.9.1.6',
  #'cucsMemoryRuntimeAvailableMaxDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeAvailableMin' => '1.3.6.1.4.1.9.9.719.1.30.9.1.7',
  #'cucsMemoryRuntimeAvailableMinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeCached' => '1.3.6.1.4.1.9.9.719.1.30.9.1.8',
  #'cucsMemoryRuntimeCachedDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeCachedAvg' => '1.3.6.1.4.1.9.9.719.1.30.9.1.9',
  #'cucsMemoryRuntimeCachedAvgDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeCachedMax' => '1.3.6.1.4.1.9.9.719.1.30.9.1.10',
  #'cucsMemoryRuntimeCachedMaxDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeCachedMin' => '1.3.6.1.4.1.9.9.719.1.30.9.1.11',
  #'cucsMemoryRuntimeCachedMinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeIntervals' => '1.3.6.1.4.1.9.9.719.1.30.9.1.12',
  #'cucsMemoryRuntimeIntervalsDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeSuspect' => '1.3.6.1.4.1.9.9.719.1.30.9.1.13',
  'cucsMemoryRuntimeSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryRuntimeThresholded' => '1.3.6.1.4.1.9.9.719.1.30.9.1.14',
  #'cucsMemoryRuntimeThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryRuntimeThresholded',
  'cucsMemoryRuntimeTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.9.1.15',
  #'cucsMemoryRuntimeTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cucsMemoryRuntimeTotal' => '1.3.6.1.4.1.9.9.719.1.30.9.1.16',
  #'cucsMemoryRuntimeTotalDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeTotalAvg' => '1.3.6.1.4.1.9.9.719.1.30.9.1.17',
  #'cucsMemoryRuntimeTotalAvgDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeTotalMax' => '1.3.6.1.4.1.9.9.719.1.30.9.1.18',
  #'cucsMemoryRuntimeTotalMaxDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeTotalMin' => '1.3.6.1.4.1.9.9.719.1.30.9.1.19',
  #'cucsMemoryRuntimeTotalMinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeType' => '1.3.6.1.4.1.9.9.719.1.30.9.1.20',
  'cucsMemoryRuntimeTypeDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryRuntimeType',
  'cucsMemoryRuntimeUpdate' => '1.3.6.1.4.1.9.9.719.1.30.9.1.21',
  #'cucsMemoryRuntimeUpdateDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistTable' => '1.3.6.1.4.1.9.9.719.1.30.10',
  'cucsMemoryRuntimeHistEntry' => '1.3.6.1.4.1.9.9.719.1.30.10.1',
  'cucsMemoryRuntimeHistInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.10.1.1',
  #'cucsMemoryRuntimeHistInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryRuntimeHistDn' => '1.3.6.1.4.1.9.9.719.1.30.10.1.2',
  #'cucsMemoryRuntimeHistDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryRuntimeHistRn' => '1.3.6.1.4.1.9.9.719.1.30.10.1.3',
  #'cucsMemoryRuntimeHistRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryRuntimeHistAvailable' => '1.3.6.1.4.1.9.9.719.1.30.10.1.4',
  #'cucsMemoryRuntimeHistAvailableDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistAvailableAvg' => '1.3.6.1.4.1.9.9.719.1.30.10.1.5',
  #'cucsMemoryRuntimeHistAvailableAvgDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistAvailableMax' => '1.3.6.1.4.1.9.9.719.1.30.10.1.6',
  #'cucsMemoryRuntimeHistAvailableMaxDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistAvailableMin' => '1.3.6.1.4.1.9.9.719.1.30.10.1.7',
  #'cucsMemoryRuntimeHistAvailableMinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistCached' => '1.3.6.1.4.1.9.9.719.1.30.10.1.8',
  #'cucsMemoryRuntimeHistCachedDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistCachedAvg' => '1.3.6.1.4.1.9.9.719.1.30.10.1.9',
  #'cucsMemoryRuntimeHistCachedAvgDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistCachedMax' => '1.3.6.1.4.1.9.9.719.1.30.10.1.10',
  #'cucsMemoryRuntimeHistCachedMaxDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistCachedMin' => '1.3.6.1.4.1.9.9.719.1.30.10.1.11',
  #'cucsMemoryRuntimeHistCachedMinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistId' => '1.3.6.1.4.1.9.9.719.1.30.10.1.12',
  #'cucsMemoryRuntimeHistIdDefinition' => 'CISCO-TC::Unsigned64',
  'cucsMemoryRuntimeHistMostRecent' => '1.3.6.1.4.1.9.9.719.1.30.10.1.13',
  'cucsMemoryRuntimeHistMostRecentDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryRuntimeHistSuspect' => '1.3.6.1.4.1.9.9.719.1.30.10.1.14',
  'cucsMemoryRuntimeHistSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryRuntimeHistThresholded' => '1.3.6.1.4.1.9.9.719.1.30.10.1.15',
  #'cucsMemoryRuntimeHistThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryRuntimeHistThresholded',
  'cucsMemoryRuntimeHistTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.10.1.16',
  #'cucsMemoryRuntimeHistTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cucsMemoryRuntimeHistTotal' => '1.3.6.1.4.1.9.9.719.1.30.10.1.17',
  #'cucsMemoryRuntimeHistTotalDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistTotalAvg' => '1.3.6.1.4.1.9.9.719.1.30.10.1.18',
  #'cucsMemoryRuntimeHistTotalAvgDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistTotalMax' => '1.3.6.1.4.1.9.9.719.1.30.10.1.19',
  #'cucsMemoryRuntimeHistTotalMaxDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryRuntimeHistTotalMin' => '1.3.6.1.4.1.9.9.719.1.30.10.1.20',
  #'cucsMemoryRuntimeHistTotalMinDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitTable' => '1.3.6.1.4.1.9.9.719.1.30.11',
  'cucsMemoryUnitEntry' => '1.3.6.1.4.1.9.9.719.1.30.11.1',
  'cucsMemoryUnitInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.11.1.1',
  #'cucsMemoryUnitInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryUnitDn' => '1.3.6.1.4.1.9.9.719.1.30.11.1.2',
  #'cucsMemoryUnitDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryUnitRn' => '1.3.6.1.4.1.9.9.719.1.30.11.1.3',
  #'cucsMemoryUnitRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitArray' => '1.3.6.1.4.1.9.9.719.1.30.11.1.4',
  #'cucsMemoryUnitArrayDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitBank' => '1.3.6.1.4.1.9.9.719.1.30.11.1.5',
  #'cucsMemoryUnitBankDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitCapacity' => '1.3.6.1.4.1.9.9.719.1.30.11.1.6',
  #'cucsMemoryUnitCapacityDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitClock' => '1.3.6.1.4.1.9.9.719.1.30.11.1.7',
  #'cucsMemoryUnitClockDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitFormFactor' => '1.3.6.1.4.1.9.9.719.1.30.11.1.8',
  'cucsMemoryUnitFormFactorDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryFormFactor',
  'cucsMemoryUnitId' => '1.3.6.1.4.1.9.9.719.1.30.11.1.9',
  #'cucsMemoryUnitIdDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryUnitId',
  'cucsMemoryUnitLatency' => '1.3.6.1.4.1.9.9.719.1.30.11.1.10',
  'cucsMemoryUnitLocation' => '1.3.6.1.4.1.9.9.719.1.30.11.1.11',
  #'cucsMemoryUnitLocationDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitModel' => '1.3.6.1.4.1.9.9.719.1.30.11.1.12',
  #'cucsMemoryUnitModelDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitOperState' => '1.3.6.1.4.1.9.9.719.1.30.11.1.13',
  'cucsMemoryUnitOperStateDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentOperability',
  'cucsMemoryUnitOperability' => '1.3.6.1.4.1.9.9.719.1.30.11.1.14',
  'cucsMemoryUnitOperabilityDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryUnitOperability',
  'cucsMemoryUnitPerf' => '1.3.6.1.4.1.9.9.719.1.30.11.1.15',
  'cucsMemoryUnitPerfDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryUnitPower' => '1.3.6.1.4.1.9.9.719.1.30.11.1.16',
  'cucsMemoryUnitPowerDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentPowerState',
  'cucsMemoryUnitPresence' => '1.3.6.1.4.1.9.9.719.1.30.11.1.17',
  'cucsMemoryUnitPresenceDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentPresence',
  'cucsMemoryUnitRevision' => '1.3.6.1.4.1.9.9.719.1.30.11.1.18',
  #'cucsMemoryUnitRevisionDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitSerial' => '1.3.6.1.4.1.9.9.719.1.30.11.1.19',
  #'cucsMemoryUnitSerialDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitSet' => '1.3.6.1.4.1.9.9.719.1.30.11.1.20',
  #'cucsMemoryUnitSetDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitSpeed' => '1.3.6.1.4.1.9.9.719.1.30.11.1.21',
  #'cucsMemoryUnitSpeedDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitThermal' => '1.3.6.1.4.1.9.9.719.1.30.11.1.22',
  'cucsMemoryUnitThermalDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryUnitType' => '1.3.6.1.4.1.9.9.719.1.30.11.1.23',
  'cucsMemoryUnitTypeDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryType',
  'cucsMemoryUnitVendor' => '1.3.6.1.4.1.9.9.719.1.30.11.1.24',
  #'cucsMemoryUnitVendorDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitVisibility' => '1.3.6.1.4.1.9.9.719.1.30.11.1.25',
  'cucsMemoryUnitVisibilityDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryVisibility',
  'cucsMemoryUnitVoltage' => '1.3.6.1.4.1.9.9.719.1.30.11.1.26',
  'cucsMemoryUnitVoltageDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsEquipmentSensorThresholdStatus',
  'cucsMemoryUnitWidth' => '1.3.6.1.4.1.9.9.719.1.30.11.1.27',
  #'cucsMemoryUnitWidthDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitAdminState' => '1.3.6.1.4.1.9.9.719.1.30.11.1.28',
  'cucsMemoryUnitAdminStateDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryAdminState',
  'cucsMemoryUnitOperQualifier' => '1.3.6.1.4.1.9.9.719.1.30.11.1.29',
  #'cucsMemoryUnitOperQualifierDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryIssues',
  'cucsMemoryUnitOperQualifierReason' => '1.3.6.1.4.1.9.9.719.1.30.11.1.30',
  #'cucsMemoryUnitOperQualifierReasonDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitLocationDn' => '1.3.6.1.4.1.9.9.719.1.30.11.1.31',
  #'cucsMemoryUnitLocationDnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitEnvStatsTable' => '1.3.6.1.4.1.9.9.719.1.30.12',
  'cucsMemoryUnitEnvStatsEntry' => '1.3.6.1.4.1.9.9.719.1.30.12.1',
  'cucsMemoryUnitEnvStatsInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.12.1.1',
  #'cucsMemoryUnitEnvStatsInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryUnitEnvStatsDn' => '1.3.6.1.4.1.9.9.719.1.30.12.1.2',
  #'cucsMemoryUnitEnvStatsDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryUnitEnvStatsRn' => '1.3.6.1.4.1.9.9.719.1.30.12.1.3',
  #'cucsMemoryUnitEnvStatsRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitEnvStatsIntervals' => '1.3.6.1.4.1.9.9.719.1.30.12.1.4',
  #'cucsMemoryUnitEnvStatsIntervalsDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitEnvStatsSuspect' => '1.3.6.1.4.1.9.9.719.1.30.12.1.5',
  'cucsMemoryUnitEnvStatsSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryUnitEnvStatsTemperature' => '1.3.6.1.4.1.9.9.719.1.30.12.1.6',
  'cucsMemoryUnitEnvStatsTemperatureAvg' => '1.3.6.1.4.1.9.9.719.1.30.12.1.7',
  'cucsMemoryUnitEnvStatsTemperatureMax' => '1.3.6.1.4.1.9.9.719.1.30.12.1.8',
  'cucsMemoryUnitEnvStatsTemperatureMin' => '1.3.6.1.4.1.9.9.719.1.30.12.1.9',
  'cucsMemoryUnitEnvStatsThresholded' => '1.3.6.1.4.1.9.9.719.1.30.12.1.10',
  #'cucsMemoryUnitEnvStatsThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryUnitEnvStatsThresholded',
  'cucsMemoryUnitEnvStatsTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.12.1.11',
  #'cucsMemoryUnitEnvStatsTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
  'cucsMemoryUnitEnvStatsUpdate' => '1.3.6.1.4.1.9.9.719.1.30.12.1.12',
  #'cucsMemoryUnitEnvStatsUpdateDefinition' => 'SNMPv2-SMI::Gauge32',
  'cucsMemoryUnitEnvStatsHistTable' => '1.3.6.1.4.1.9.9.719.1.30.13',
  'cucsMemoryUnitEnvStatsHistEntry' => '1.3.6.1.4.1.9.9.719.1.30.13.1',
  'cucsMemoryUnitEnvStatsHistInstanceId' => '1.3.6.1.4.1.9.9.719.1.30.13.1.1',
  #'cucsMemoryUnitEnvStatsHistInstanceIdDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectId',
  'cucsMemoryUnitEnvStatsHistDn' => '1.3.6.1.4.1.9.9.719.1.30.13.1.2',
  #'cucsMemoryUnitEnvStatsHistDnDefinition' => 'CISCO-UNIFIED-COMPUTING-MIB::CucsManagedObjectDn',
  'cucsMemoryUnitEnvStatsHistRn' => '1.3.6.1.4.1.9.9.719.1.30.13.1.3',
  #'cucsMemoryUnitEnvStatsHistRnDefinition' => 'SNMP-FRAMEWORK-MIB::SnmpAdminString',
  'cucsMemoryUnitEnvStatsHistId' => '1.3.6.1.4.1.9.9.719.1.30.13.1.4',
  #'cucsMemoryUnitEnvStatsHistIdDefinition' => 'CISCO-TC::Unsigned64',
  'cucsMemoryUnitEnvStatsHistMostRecent' => '1.3.6.1.4.1.9.9.719.1.30.13.1.5',
  'cucsMemoryUnitEnvStatsHistMostRecentDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryUnitEnvStatsHistSuspect' => '1.3.6.1.4.1.9.9.719.1.30.13.1.6',
  'cucsMemoryUnitEnvStatsHistSuspectDefinition' => 'SNMPv2-TC::TruthValue',
  'cucsMemoryUnitEnvStatsHistTemperature' => '1.3.6.1.4.1.9.9.719.1.30.13.1.7',
  'cucsMemoryUnitEnvStatsHistTemperatureAvg' => '1.3.6.1.4.1.9.9.719.1.30.13.1.8',
  'cucsMemoryUnitEnvStatsHistTemperatureMax' => '1.3.6.1.4.1.9.9.719.1.30.13.1.9',
  'cucsMemoryUnitEnvStatsHistTemperatureMin' => '1.3.6.1.4.1.9.9.719.1.30.13.1.10',
  'cucsMemoryUnitEnvStatsHistThresholded' => '1.3.6.1.4.1.9.9.719.1.30.13.1.11',
  #'cucsMemoryUnitEnvStatsHistThresholdedDefinition' => 'CISCO-UNIFIED-COMPUTING-TC-MIB::CucsMemoryUnitEnvStatsHistThresholded',
  'cucsMemoryUnitEnvStatsHistTimeCollected' => '1.3.6.1.4.1.9.9.719.1.30.13.1.12',
  #'cucsMemoryUnitEnvStatsHistTimeCollectedDefinition' => 'SNMPv2-TC::DateAndTime',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-UNIFIED-COMPUTING-MEMORY-MIB'} = {
};