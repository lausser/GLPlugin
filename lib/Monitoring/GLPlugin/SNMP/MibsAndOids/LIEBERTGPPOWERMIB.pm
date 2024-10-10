package Monitoring::GLPlugin::SNMP::MibsAndOids::LIEBERTGPPOWERMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'LIEBERT-GP-POWER-MIB'} = {
  url => '',
  name => 'LIEBERT-GP-POWER-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'LIEBERT-GP-POWER-MIB'} =
    '1.3.6.1.4.1.476.1.42.3.5';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'LIEBERT-GP-POWER-MIB'} = {
  'liebertGlobalProductsPowerModule' => '1.3.6.1.4.1.476.1.42.1.6.1',
  'lgpPwrBattery' => '1.3.6.1.4.1.476.1.42.3.5.1',
  'lgpPwrNumberInstalledBatteryModules' => '1.3.6.1.4.1.476.1.42.3.5.1.1',
  'lgpPwrNumberFailedBatteryModules' => '1.3.6.1.4.1.476.1.42.3.5.1.2',
  'lgpPwrNumberRedundantBatteryModules' => '1.3.6.1.4.1.476.1.42.3.5.1.3',
  'lgpPwrNumberActiveBatteryModules' => '1.3.6.1.4.1.476.1.42.3.5.1.4',
  'lgpPwrConfigLowBatteryWarningTime' => '1.3.6.1.4.1.476.1.42.3.5.1.5',
  'lgpPwrNumberBatteryModuleWarnings' => '1.3.6.1.4.1.476.1.42.3.5.1.6',
  'lgpPwrBatteryCount' => '1.3.6.1.4.1.476.1.42.3.5.1.7',
  'lgpPwrBatteryTestResult' => '1.3.6.1.4.1.476.1.42.3.5.1.8',
  'lgpPwrBatteryTestResultDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryTestResult',
  'lgpPwrNominalBatteryCapacity' => '1.3.6.1.4.1.476.1.42.3.5.1.9',
  'lgpPwrBatteryFloatVoltage' => '1.3.6.1.4.1.476.1.42.3.5.1.10',
  'lgpPwrBatteryEndOfDischargeVoltage' => '1.3.6.1.4.1.476.1.42.3.5.1.11',
  'lgpPwrAutomaticBatteryTestInterval' => '1.3.6.1.4.1.476.1.42.3.5.1.12',
  'lgpPwrAutomaticBatteryTestCountdown' => '1.3.6.1.4.1.476.1.42.3.5.1.13',
  'lgpPwrBatteryChargeStatus' => '1.3.6.1.4.1.476.1.42.3.5.1.14',
  'lgpPwrBatteryChargeStatusDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryChargeStatus',
  'lgpPwrBatteryLifeEnhancer' => '1.3.6.1.4.1.476.1.42.3.5.1.15',
  'lgpPwrBatteryLifeEnhancerDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryLifeEnhancer',
  'lgpPwrBatteryCharger' => '1.3.6.1.4.1.476.1.42.3.5.1.16',
  'lgpPwrBatteryChargerDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryCharger',
  'lgpPwrBatteryChargeMode' => '1.3.6.1.4.1.476.1.42.3.5.1.17',
  'lgpPwrBatteryChargeModeDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryChargeMode',
  'lgpPwrBatteryTimeRemaining' => '1.3.6.1.4.1.476.1.42.3.5.1.18',
  'lgpPwrBatteryCapacity' => '1.3.6.1.4.1.476.1.42.3.5.1.19',
  'lgpPwrBatteryCabinet' => '1.3.6.1.4.1.476.1.42.3.5.1.20',
  'lgpPwrBatteryCabinetCount' => '1.3.6.1.4.1.476.1.42.3.5.1.20.1',
  'lgpPwrBatteryCabinetType' => '1.3.6.1.4.1.476.1.42.3.5.1.20.2',
  'lgpPwrBatteryCabinetTypeDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryCabinetType',
  'lgpPwrBatteryCabinetRatedCapacity' => '1.3.6.1.4.1.476.1.42.3.5.1.20.3',
  'lgpPwrBatteryLeadAcidCellCount' => '1.3.6.1.4.1.476.1.42.3.5.1.20.4',
  'lgpPwrBatteryNiCadCellCount' => '1.3.6.1.4.1.476.1.42.3.5.1.20.5',
  'lgpPwrBatteryAmpHoursConsumed' => '1.3.6.1.4.1.476.1.42.3.5.1.21',
  'lgpPwrBatteryAmpHoursDischargeConsumed' => '1.3.6.1.4.1.476.1.42.3.5.1.22',
  'lgpPwrBatteryLastDischargeTime' => '1.3.6.1.4.1.476.1.42.3.5.1.23',
  'lgpPwrBatteryLastCommissionTime' => '1.3.6.1.4.1.476.1.42.3.5.1.24',
  'lgpPwrBatteryPresentDischargeTime' => '1.3.6.1.4.1.476.1.42.3.5.1.25',
  'lgpPwrBatteryCapacityStatus' => '1.3.6.1.4.1.476.1.42.3.5.1.26',
  'lgpPwrBatteryCapacityStatusDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryCapacityStatus',
  'lgpPwrBatteryCircuitBreakerState' => '1.3.6.1.4.1.476.1.42.3.5.1.27',
  'lgpPwrBatteryCircuitBreakerStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryCircuitBreakerState',
  'lgpPwrMeasurements' => '1.3.6.1.4.1.476.1.42.3.5.2',
  'lgpPwrWellKnownMeasurementPoints' => '1.3.6.1.4.1.476.1.42.3.5.2.1',
  'lgpPwrSource1Input' => '1.3.6.1.4.1.476.1.42.3.5.2.1.1',
  'lgpPwrSource2Input' => '1.3.6.1.4.1.476.1.42.3.5.2.1.2',
  'lgpPwrSourcePdu1Input' => '1.3.6.1.4.1.476.1.42.3.5.2.1.3',
  'lgpPwrSourcePdu2Input' => '1.3.6.1.4.1.476.1.42.3.5.2.1.4',
  'lgpPwrOutputToLoad' => '1.3.6.1.4.1.476.1.42.3.5.2.1.5',
  'lgpPwrMeasBattery' => '1.3.6.1.4.1.476.1.42.3.5.2.1.6',
  'lgpPwrMeasBypass' => '1.3.6.1.4.1.476.1.42.3.5.2.1.7',
  'lgpPwrMeasDcBus' => '1.3.6.1.4.1.476.1.42.3.5.2.1.8',
  'lgpPwrMeasSystemOutput' => '1.3.6.1.4.1.476.1.42.3.5.2.1.9',
  'lgpPwrMeasBatteryCabinet' => '1.3.6.1.4.1.476.1.42.3.5.2.1.10',
  'lgpPwrMeasurementPointTable' => '1.3.6.1.4.1.476.1.42.3.5.2.2',
  'lgpPwrMeasurementPointEntry' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1',
  'lgpPwrMeasurementPointIndex' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.1',
  'lgpPwrMeasurementPointId' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.2',
  'lgpPwrMeasurementPointNumLines' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.3',
  'lgpPwrMeasurementPointNomVolts' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.4',
  'lgpPwrMeasurementPointNomFrequency' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.5',
  'lgpPwrMeasurementPointFrequency' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.6',
  'lgpPwrMeasurementPointApparentPower' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.7',
  'lgpPwrMeasurementPointTruePower' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.8',
  'lgpPwrMeasurementPointPowerFactor' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.9',
  'lgpPwrMeasurementPointWattHours' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.10',
  'lgpPwrMeasurementPointVAPercent' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.11',
  'lgpPwrMeasurementPointNeutralCurrent' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.12',
  'lgpPwrMeasurementPointGroundCurrent' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.13',
  'lgpPwrMeasurementPointNomCurrent' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.14',
  'lgpPwrMeasurementPointNomPowerFactor' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.15',
  'lgpPwrMeasurementPointNomVA' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.16',
  'lgpPwrMeasurementPointNomW' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.17',
  'lgpPwrMeasurementPointPowerFactorTag' => '1.3.6.1.4.1.476.1.42.3.5.2.2.1.19',
  'lgpPwrMeasurementPointPowerFactorTagDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrMeasurementPointPowerFactorTag',
  'lgpPwrLineMeasurementTable' => '1.3.6.1.4.1.476.1.42.3.5.2.3',
  'lgpPwrLineMeasurementEntry' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1',
  'lgpPwrMeasurementPtIndex' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.1',
  'lgpPwrLineMeasurementIndex' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.2',
  'lgpPwrMeasurementPoint' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.3',
  'lgpPwrLineMeasurementVoltsLL' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.4',
  'lgpPwrLineMeasurementVoltsLN' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.5',
  'lgpPwrLineMeasurementCurrent' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.6',
  'lgpPwrLineMeasurementCapacity' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.7',
  'lgpPwrLineMeasurementVA' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.8',
  'lgpPwrLineMeasurementTruePower' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.9',
  'lgpPwrLineMeasurementVoltageTHD' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.10',
  'lgpPwrLineMeasurementCurrentTHD' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.11',
  'lgpPwrLineMeasurementKFactorCurrent' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.12',
  'lgpPwrLineMeasurementCrestFactorCurrent' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.13',
  'lgpPwrLineMeasurementPowerFactor' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.14',
  'lgpPwrLineMeasurementPowerFactorTag' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.15',
  'lgpPwrLineMeasurementPowerFactorTagDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrLineMeasurementPowerFactorTag',
  'lgpPwrLineMeasurementMaxVolts' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.16',
  'lgpPwrLineMeasurementMinVolts' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.17',
  'lgpPwrLineMeasurementVAR' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.18',
  'lgpPwrLineMeasurementPercentLoad' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.19',
  'lgpPwrLineMeasurementVolts' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.20',
  'lgpPwrLineMeasurementVACapacity' => '1.3.6.1.4.1.476.1.42.3.5.2.3.1.21',
  'lgpPwrDcMeasurementPointTable' => '1.3.6.1.4.1.476.1.42.3.5.2.4',
  'lgpPwrDcMeasurementPointEntry' => '1.3.6.1.4.1.476.1.42.3.5.2.4.1',
  'lgpPwrDcMeasurementPointIndex' => '1.3.6.1.4.1.476.1.42.3.5.2.4.1.1',
  'lgpPwrDcMeasurementPointId' => '1.3.6.1.4.1.476.1.42.3.5.2.4.1.2',
  'lgpPwrDcMeasurementPointSubID' => '1.3.6.1.4.1.476.1.42.3.5.2.4.1.3',
  'lgpPwrDcMeasurementPointVolts' => '1.3.6.1.4.1.476.1.42.3.5.2.4.1.4',
  'lgpPwrDcMeasurementPointCurrent' => '1.3.6.1.4.1.476.1.42.3.5.2.4.1.5',
  'lgpPwrDcMeasurementPointNomVolts' => '1.3.6.1.4.1.476.1.42.3.5.2.4.1.6',
  'lgpPwrDcMeasurementPointTruePower' => '1.3.6.1.4.1.476.1.42.3.5.2.4.1.7',
  'lgpPwrWellKnownMeasurementTypes' => '1.3.6.1.4.1.476.1.42.3.5.2.5',
  'lgpPwrVoltsAc' => '1.3.6.1.4.1.476.1.42.3.5.2.5.1',
  'lgpPwrVoltsDc' => '1.3.6.1.4.1.476.1.42.3.5.2.5.2',
  'lgpPwrAmpsNeutral' => '1.3.6.1.4.1.476.1.42.3.5.2.5.3',
  'lgpPwrStatus' => '1.3.6.1.4.1.476.1.42.3.5.3',
  'lgpPwrTransferCount' => '1.3.6.1.4.1.476.1.42.3.5.3.1',
  'lgpPwrAutoTransferTimer' => '1.3.6.1.4.1.476.1.42.3.5.3.2',
  'lgpPwrAutoReTransferEnabled' => '1.3.6.1.4.1.476.1.42.3.5.3.3',
  'lgpPwrAutoReTransferEnabledDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrAutoReTransferEnabled',
  'lgpPwrSyncPhaseAngle' => '1.3.6.1.4.1.476.1.42.3.5.3.4',
  'lgpPwrParallelSystemOutputToLoadSource' => '1.3.6.1.4.1.476.1.42.3.5.3.5',
  'lgpPwrParallelSystemOutputToLoadSourceDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrParallelSystemOutputToLoadSource',
  'lgpPwrDcToDcConverter' => '1.3.6.1.4.1.476.1.42.3.5.3.6',
  'lgpPwrDcToDcConverterDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrDcToDcConverter',
  'lgpPwrOutputToLoadOnInverter' => '1.3.6.1.4.1.476.1.42.3.5.3.7',
  'lgpPwrOutputToLoadOnInverterDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrOutputToLoadOnInverter',
  'lgpPwrBatteryChargeCompensating' => '1.3.6.1.4.1.476.1.42.3.5.3.8',
  'lgpPwrBatteryChargeCompensatingDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryChargeCompensating',
  'lgpPwrInverterReady' => '1.3.6.1.4.1.476.1.42.3.5.3.9',
  'lgpPwrInverterReadyDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrInverterReady',
  'lgpPwrOutputToLoadOnBypass' => '1.3.6.1.4.1.476.1.42.3.5.3.10',
  'lgpPwrOutputToLoadOnBypassDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrOutputToLoadOnBypass',
  'lgpPwrBoost' => '1.3.6.1.4.1.476.1.42.3.5.3.11',
  'lgpPwrBoostDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBoost',
  'lgpPwrBuck' => '1.3.6.1.4.1.476.1.42.3.5.3.12',
  'lgpPwrBuckDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBuck',
  'lgpPwrShutdownOverTemperature' => '1.3.6.1.4.1.476.1.42.3.5.3.13',
  'lgpPwrShutdownOverTemperatureDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownOverTemperature',
  'lgpPwrShutdownOverload' => '1.3.6.1.4.1.476.1.42.3.5.3.14',
  'lgpPwrShutdownOverloadDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownOverload',
  'lgpPwrShutdownDcBusOverload' => '1.3.6.1.4.1.476.1.42.3.5.3.15',
  'lgpPwrShutdownDcBusOverloadDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownDcBusOverload',
  'lgpPwrShutdownOutputShort' => '1.3.6.1.4.1.476.1.42.3.5.3.16',
  'lgpPwrShutdownOutputShortDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownOutputShort',
  'lgpPwrShutdownLineSwap' => '1.3.6.1.4.1.476.1.42.3.5.3.17',
  'lgpPwrShutdownLineSwapDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownLineSwap',
  'lgpPwrShutdownLowBattery' => '1.3.6.1.4.1.476.1.42.3.5.3.18',
  'lgpPwrShutdownLowBatteryDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownLowBattery',
  'lgpPwrShutdownRemote' => '1.3.6.1.4.1.476.1.42.3.5.3.19',
  'lgpPwrShutdownRemoteDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownRemote',
  'lgpPwrShutdownInputUnderVoltage' => '1.3.6.1.4.1.476.1.42.3.5.3.20',
  'lgpPwrShutdownInputUnderVoltageDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownInputUnderVoltage',
  'lgpPwrShutdownPowerFactorCorrectionFailure' => '1.3.6.1.4.1.476.1.42.3.5.3.21',
  'lgpPwrShutdownPowerFactorCorrectionFailureDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownPowerFactorCorrectionFailure',
  'lgpPwrShutdownHardware' => '1.3.6.1.4.1.476.1.42.3.5.3.22',
  'lgpPwrShutdownHardwareDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrShutdownHardware',
  'lgpPwrRedundantSubModule' => '1.3.6.1.4.1.476.1.42.3.5.3.23',
  'lgpPwrRedundantSubModuleDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrRedundantSubModule',
  'lgpPwrBypassReady' => '1.3.6.1.4.1.476.1.42.3.5.3.24',
  'lgpPwrBypassReadyDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBypassReady',
  'lgpPwrGeneratorStatus' => '1.3.6.1.4.1.476.1.42.3.5.3.25',
  'lgpPwrGeneratorStatusDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrGeneratorStatus',
  'lgpPwrRotaryBreakerStatus' => '1.3.6.1.4.1.476.1.42.3.5.3.26',
  'lgpPwrRotaryBreakerStatusDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrRotaryBreakerStatus',
  'lgpPwrPowerFactorCorrection' => '1.3.6.1.4.1.476.1.42.3.5.3.27',
  'lgpPwrPowerFactorCorrectionDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrPowerFactorCorrection',
  'lgpPwrBypassSyncDiff' => '1.3.6.1.4.1.476.1.42.3.5.3.28',
  'lgpPwrBypassOverloadShutdownTime' => '1.3.6.1.4.1.476.1.42.3.5.3.29',
  'lgpPwrInverterOverloadShutdownTime' => '1.3.6.1.4.1.476.1.42.3.5.3.30',
  'lgpPwrStateOutputSource' => '1.3.6.1.4.1.476.1.42.3.5.3.31',
  'lgpPwrStateOutputSourceDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateOutputSource',
  'lgpPwrStateInputSource' => '1.3.6.1.4.1.476.1.42.3.5.3.32',
  'lgpPwrStateInputSourceDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateInputSource',
  'lgpPwrStateInputQualification' => '1.3.6.1.4.1.476.1.42.3.5.3.33',
  'lgpPwrStateInputQualificationDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateInputQualification',
  'lgpPwrStateBypassStaticSwitchState' => '1.3.6.1.4.1.476.1.42.3.5.3.34',
  'lgpPwrStateBypassStaticSwitchStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateBypassStaticSwitchState',
  'lgpPwrStateBypassQualification' => '1.3.6.1.4.1.476.1.42.3.5.3.35',
  'lgpPwrStateBypassQualificationDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateBypassQualification',
  'lgpPwrStateDCBusQualification' => '1.3.6.1.4.1.476.1.42.3.5.3.36',
  'lgpPwrStateDCBusQualificationDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateDCBusQualification',
  'lgpPwrStateOutQualification' => '1.3.6.1.4.1.476.1.42.3.5.3.37',
  'lgpPwrStateOutQualificationDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateOutQualification',
  'lgpPwrStateInverterQualification' => '1.3.6.1.4.1.476.1.42.3.5.3.38',
  'lgpPwrStateInverterQualificationDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateInverterQualification',
  'lgpPwrStateInverterState' => '1.3.6.1.4.1.476.1.42.3.5.3.39',
  'lgpPwrStateInverterStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateInverterState',
  'lgpPwrStateRectifierState' => '1.3.6.1.4.1.476.1.42.3.5.3.40',
  'lgpPwrStateRectifierStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateRectifierState',
  'lgpPwrStateModuleGroup' => '1.3.6.1.4.1.476.1.42.3.5.3.41',
  'lgpPwrStateUpsModuleCount' => '1.3.6.1.4.1.476.1.42.3.5.3.41.1',
  'lgpPwrStateUpsModuleRedundantCount' => '1.3.6.1.4.1.476.1.42.3.5.3.41.2',
  'lgpPwrStateBackfeedBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.42',
  'lgpPwrStateBackfeedBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateBackfeedBrkrState',
  'lgpPwrStateLoadDisconnectState' => '1.3.6.1.4.1.476.1.42.3.5.3.43',
  'lgpPwrStateLoadDisconnectStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateLoadDisconnectState',
  'lgpPwrStateInputBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.44',
  'lgpPwrStateInputBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateInputBrkrState',
  'lgpPwrStateTrapFilterBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.45',
  'lgpPwrStateTrapFilterBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateTrapFilterBrkrState',
  'lgpPwrStateInvOutputBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.46',
  'lgpPwrStateInvOutputBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateInvOutputBrkrState',
  'lgpPwrStateIntBypassBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.47',
  'lgpPwrStateIntBypassBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateIntBypassBrkrState',
  'lgpPwrStateBypassIsolBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.48',
  'lgpPwrStateBypassIsolBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateBypassIsolBrkrState',
  'lgpPwrStateRectifierIsolBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.49',
  'lgpPwrStateRectifierIsolBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateRectifierIsolBrkrState',
  'lgpPwrStateMaintBypassBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.50',
  'lgpPwrStateMaintBypassBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateMaintBypassBrkrState',
  'lgpPwrStateMaintIsolBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.51',
  'lgpPwrStateMaintIsolBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateMaintIsolBrkrState',
  'lgpPwrStateOutStaticSwState' => '1.3.6.1.4.1.476.1.42.3.5.3.52',
  'lgpPwrStateOutStaticSwStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateOutStaticSwState',
  'lgpPwrStateModuleOutBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.53',
  'lgpPwrStateModuleOutBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateModuleOutBrkrState',
  'lgpPwrBypassReXfrRemainTime' => '1.3.6.1.4.1.476.1.42.3.5.3.54',
  'lgpPwrStateUpsOutputSource' => '1.3.6.1.4.1.476.1.42.3.5.3.55',
  'lgpPwrStateUpsOutputSourceDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateUpsOutputSource',
  'lgpPwrStateLoadBusSynchronization' => '1.3.6.1.4.1.476.1.42.3.5.3.56',
  'lgpPwrStateLoadBusSynchronizationDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateLoadBusSynchronization',
  'lgpPwrStateCircuitBrkrStateGroup' => '1.3.6.1.4.1.476.1.42.3.5.3.57',
  'lgpPwrStateSource1InputBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.57.1',
  'lgpPwrStateSource1InputBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateSource1InputBrkrState',
  'lgpPwrStateSource2InputBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.57.2',
  'lgpPwrStateSource2InputBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateSource2InputBrkrState',
  'lgpPwrStateSource1BypassBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.57.3',
  'lgpPwrStateSource1BypassBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateSource1BypassBrkrState',
  'lgpPwrStateSource2BypassBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.57.4',
  'lgpPwrStateSource2BypassBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateSource2BypassBrkrState',
  'lgpPwrStateOutputBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.57.5',
  'lgpPwrStateOutputBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateOutputBrkrState',
  'lgpPwrStateAuxOutputBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.57.6',
  'lgpPwrStateAuxOutputBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateAuxOutputBrkrState',
  'lgpPwrStateSource1PduInputBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.57.7',
  'lgpPwrStateSource1PduInputBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateSource1PduInputBrkrState',
  'lgpPwrStateSource2PduInputBrkrState' => '1.3.6.1.4.1.476.1.42.3.5.3.57.8',
  'lgpPwrStateSource2PduInputBrkrStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateSource2PduInputBrkrState',
  'lgpPwrEconomicOperation' => '1.3.6.1.4.1.476.1.42.3.5.3.58',
  'lgpPwrEconomicOperationDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrEconomicOperation',
  'lgpPwrSettings' => '1.3.6.1.4.1.476.1.42.3.5.4',
  'lgpPwrPreferredSource' => '1.3.6.1.4.1.476.1.42.3.5.4.1',
  'lgpPwrLoadOnSource' => '1.3.6.1.4.1.476.1.42.3.5.4.2',
  'lgpPwrNominalVoltageDeviation' => '1.3.6.1.4.1.476.1.42.3.5.4.3',
  'lgpPwrNominalVoltageDeviationPercent' => '1.3.6.1.4.1.476.1.42.3.5.4.4',
  'lgpPwrPhaseDifferenceLimit' => '1.3.6.1.4.1.476.1.42.3.5.4.5',
  'lgpPwrFrequencyDeviationLimit' => '1.3.6.1.4.1.476.1.42.3.5.4.6',
  'lgpPwrThresholdTable' => '1.3.6.1.4.1.476.1.42.3.5.4.7',
  'lgpPwrThresholdEntry' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1',
  'lgpPwrThresholdIndex' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1.1',
  'lgpPwrThresholdPoint' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1.2',
  'lgpPwrThresholdSubID' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1.3',
  'lgpPwrThresholdType' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1.4',
  'lgpPwrThresholdHighWarning' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1.5',
  'lgpPwrThresholdHighFailure' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1.6',
  'lgpPwrThresholdLowWarning' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1.7',
  'lgpPwrThresholdLowFailure' => '1.3.6.1.4.1.476.1.42.3.5.4.7.1.8',
  'lgpPwrUpsAutoRestart' => '1.3.6.1.4.1.476.1.42.3.5.4.8',
  'lgpPwrUpsAutoRestartDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrUpsAutoRestart',
  'lgpPwrUpsAutoRestartDelay' => '1.3.6.1.4.1.476.1.42.3.5.4.9',
  'lgpPwrAutoRestartBatteryChargeThreshold' => '1.3.6.1.4.1.476.1.42.3.5.4.10',
  'lgpPwrParallelModuleCount' => '1.3.6.1.4.1.476.1.42.3.5.4.11',
  'lgpPwrParallelRedundancyCount' => '1.3.6.1.4.1.476.1.42.3.5.4.12',
  'lgpPwrLoadBusSyncMode' => '1.3.6.1.4.1.476.1.42.3.5.4.13',
  'lgpPwrLoadBusSyncModeDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrLoadBusSyncMode',
  'lgpPwrEconomicOperationMode' => '1.3.6.1.4.1.476.1.42.3.5.4.14',
  'lgpPwrEconomicOperationModeDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrEconomicOperationMode',
  'lgpPwrAutomaticBatteryTest' => '1.3.6.1.4.1.476.1.42.3.5.4.15',
  'lgpPwrAutomaticBatteryTestDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrAutomaticBatteryTest',
  'lgpPwrMinimumRedundantPowerModule' => '1.3.6.1.4.1.476.1.42.3.5.4.16',
  'lgpPwrMinimumRedundantBatteryModule' => '1.3.6.1.4.1.476.1.42.3.5.4.17',
  'lgpPwrOutputToLoadUserOverloadLimit' => '1.3.6.1.4.1.476.1.42.3.5.4.18',
  'lgpPwrNoLoadWarningLimit' => '1.3.6.1.4.1.476.1.42.3.5.4.19',
  'lgpPwrNoLoadWarningDelay' => '1.3.6.1.4.1.476.1.42.3.5.4.20',
  'lgpPwrEconomicOperationModeControl' => '1.3.6.1.4.1.476.1.42.3.5.4.21',
  'lgpPwrEconomicOperationModeControlDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrEconomicOperationModeControl',
  'lgpPwrConversion' => '1.3.6.1.4.1.476.1.42.3.5.5',
  'lgpPwrNumberInstalledPowerModules' => '1.3.6.1.4.1.476.1.42.3.5.5.1',
  'lgpPwrNumberFailedPowerModules' => '1.3.6.1.4.1.476.1.42.3.5.5.2',
  'lgpPwrNumberRedundantPowerModules' => '1.3.6.1.4.1.476.1.42.3.5.5.3',
  'lgpPwrNumberActivePowerModules' => '1.3.6.1.4.1.476.1.42.3.5.5.4',
  'lgpPwrNumberPowerModuleWarnings' => '1.3.6.1.4.1.476.1.42.3.5.5.6',
  'lgpPwrUpsInverterStandby' => '1.3.6.1.4.1.476.1.42.3.5.5.7',
  'lgpPwrUpsInverterStandbyDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrUpsInverterStandby',
  'lgpPwrControl' => '1.3.6.1.4.1.476.1.42.3.5.6',
  'lgpPwrWellKnownControlPoints' => '1.3.6.1.4.1.476.1.42.3.5.6.1',
  'lgpPwrLoadCircuit' => '1.3.6.1.4.1.476.1.42.3.5.6.1.1',
  'lgpPwrLoadCircuitTable' => '1.3.6.1.4.1.476.1.42.3.5.6.2',
  'lgpPwrLoadCircuitEntry' => '1.3.6.1.4.1.476.1.42.3.5.6.2.1',
  'lgpPwrLoadCircuitIndex' => '1.3.6.1.4.1.476.1.42.3.5.6.2.1.1',
  'lgpPwrLoadCircuitId' => '1.3.6.1.4.1.476.1.42.3.5.6.2.1.2',
  'lgpPwrLoadCircuitSubID' => '1.3.6.1.4.1.476.1.42.3.5.6.2.1.3',
  'lgpPwrLoadCircuitState' => '1.3.6.1.4.1.476.1.42.3.5.6.2.1.4',
  'lgpPwrLoadCircuitStateDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrLoadCircuitState',
  'lgpPwrLoadCircuitStateAndControl' => '1.3.6.1.4.1.476.1.42.3.5.6.2.1.5',
  'lgpPwrLoadCircuitStateAndControlDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrLoadCircuitStateAndControl',
  'lgpPwrAlarmSilence' => '1.3.6.1.4.1.476.1.42.3.5.6.3',
  'lgpPwrBatteryTest' => '1.3.6.1.4.1.476.1.42.3.5.6.4',
  'lgpPwrBatteryTestDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrBatteryTest',
  'lgpPwrUpsAbortCommand' => '1.3.6.1.4.1.476.1.42.3.5.6.5',
  'lgpPwrTransferToBypass' => '1.3.6.1.4.1.476.1.42.3.5.6.6',
  'lgpPwrTransferToInverter' => '1.3.6.1.4.1.476.1.42.3.5.6.7',
  'lgpPwrOutputOnDelay' => '1.3.6.1.4.1.476.1.42.3.5.6.8',
  'lgpPwrOutputOffDelayWithRestart' => '1.3.6.1.4.1.476.1.42.3.5.6.9',
  'lgpPwrOutputOffDelayWithoutRestart' => '1.3.6.1.4.1.476.1.42.3.5.6.10',
  'lgpPwrTopology' => '1.3.6.1.4.1.476.1.42.3.5.7',
  'lgpPwrUpsTopOffline' => '1.3.6.1.4.1.476.1.42.3.5.7.1',
  'lgpPwrUpsTopOfflineDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrUpsTopOffline',
  'lgpPwrUpsTopLineInteractive' => '1.3.6.1.4.1.476.1.42.3.5.7.2',
  'lgpPwrUpsTopLineInteractiveDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrUpsTopLineInteractive',
  'lgpPwrUPSTopDualInput' => '1.3.6.1.4.1.476.1.42.3.5.7.3',
  'lgpPwrUPSTopDualInputDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrUPSTopDualInput',
  'lgpPwrTopFrequencyConverter' => '1.3.6.1.4.1.476.1.42.3.5.7.4',
  'lgpPwrTopFrequencyConverterDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrTopFrequencyConverter',
  'lgpPwrTopVoltageConverter' => '1.3.6.1.4.1.476.1.42.3.5.7.5',
  'lgpPwrTopVoltageConverterDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrTopVoltageConverter',
  'lgpPwrTopMaximumFrameCapacity' => '1.3.6.1.4.1.476.1.42.3.5.7.6',
  'lgpPwrTopRedundantControlModules' => '1.3.6.1.4.1.476.1.42.3.5.7.7',
  'lgpPwrTopRedundantControlModulesDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrTopRedundantControlModules',
  'lgpPwrInputIsolationTransformerInstalled' => '1.3.6.1.4.1.476.1.42.3.5.7.8',
  'lgpPwrInputIsolationTransformerInstalledDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrInputIsolationTransformerInstalled',
  'lgpPwrStateStaticSwitchType' => '1.3.6.1.4.1.476.1.42.3.5.7.9',
  'lgpPwrStateStaticSwitchTypeDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateStaticSwitchType',
  'lgpPwrStateModuleType' => '1.3.6.1.4.1.476.1.42.3.5.7.10',
  'lgpPwrStateModuleTypeDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateModuleType',
  'lgpPwrStateBypassInputConfig' => '1.3.6.1.4.1.476.1.42.3.5.7.11',
  'lgpPwrStateBypassInputConfigDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateBypassInputConfig',
  'lgpPwrStateOutputConfig' => '1.3.6.1.4.1.476.1.42.3.5.7.12',
  'lgpPwrStateOutputConfigDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrStateOutputConfig',
  'lgpPwrRectifierPassiveFilterInstalled' => '1.3.6.1.4.1.476.1.42.3.5.7.13',
  'lgpPwrRectifierPassiveFilterInstalledDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrRectifierPassiveFilterInstalled',
  'lgpPwrRectifierTrapInstalled' => '1.3.6.1.4.1.476.1.42.3.5.7.14',
  'lgpPwrRectifierTrapInstalledDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrRectifierTrapInstalled',
  'lgpPwrRectifierActiveFilterInstalled' => '1.3.6.1.4.1.476.1.42.3.5.7.15',
  'lgpPwrRectifierActiveFilterInstalledDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrRectifierActiveFilterInstalled',
  'lgpPwrStatistic' => '1.3.6.1.4.1.476.1.42.3.5.8',
  'lgpPwrBrownOutCount' => '1.3.6.1.4.1.476.1.42.3.5.8.1',
  'lgpPwrBlackOutCount' => '1.3.6.1.4.1.476.1.42.3.5.8.2',
  'lgpPwrTransientCount' => '1.3.6.1.4.1.476.1.42.3.5.8.3',
  'lgpPwrBatteryDischargeCount' => '1.3.6.1.4.1.476.1.42.3.5.8.4',
  'lgpPwrBatteryDischargeTime' => '1.3.6.1.4.1.476.1.42.3.5.8.5',
  'lgpPwrBatteryAmpHours' => '1.3.6.1.4.1.476.1.42.3.5.8.6',
  'lgpPwrBatteryWattHours' => '1.3.6.1.4.1.476.1.42.3.5.8.7',
  'lgpPwrBatteryStatisticsReset' => '1.3.6.1.4.1.476.1.42.3.5.8.8',
  'lgpPwrStatisticsReset' => '1.3.6.1.4.1.476.1.42.3.5.8.9',
  'lgpPwrConfig' => '1.3.6.1.4.1.476.1.42.3.5.9',
  'lgpPwrSysCapacity' => '1.3.6.1.4.1.476.1.42.3.5.9.1',
  'lgpPwrUPSModuleMode' => '1.3.6.1.4.1.476.1.42.3.5.9.2',
  'lgpPwrUPSModuleModeDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrUPSModuleMode',
  'lgpPwrMaxRatedCurrent' => '1.3.6.1.4.1.476.1.42.3.5.9.3',
  'lgpPwrRectifierPulseCount' => '1.3.6.1.4.1.476.1.42.3.5.9.4',
  'lgpPwrRectifierPulseCountDefinition' => 'LIEBERT-GP-POWER-MIB::lgpPwrRectifierPulseCount',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'LIEBERT-GP-POWER-MIB'} = {
  'lgpPwrShutdownRemote' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrEconomicOperation' => {
    '0' => 'off',
    '1' => 'on',
  },
  'lgpPwrStateInputQualification' => {
    '1' => 'fail',
    '2' => 'marginalLow',
    '3' => 'normal',
    '4' => 'marginalHigh',
  },
  'lgpPwrShutdownOverTemperature' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrBatteryChargeMode' => {
    '1' => 'float',
    '2' => 'equalize',
  },
  'lgpPwrStateUpsOutputSource' => {
    '1' => 'other',
    '2' => 'none',
    '3' => 'normal',
    '4' => 'bypass',
    '5' => 'battery',
    '6' => 'booster',
    '7' => 'reducer',
  },
  'lgpPwrUpsTopOffline' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateOutputSource' => {
    '1' => 'none',
    '2' => 'inverter',
    '3' => 'bypass',
    '4' => 'maintenanceBypass',
  },
  'lgpPwrBatteryCharger' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrStateDCBusQualification' => {
    '1' => 'fail',
    '2' => 'marginalLow',
    '3' => 'normal',
    '4' => 'marginalHigh',
  },
  'lgpPwrStateLoadBusSynchronization' => {
    '0' => 'unknown',
    '1' => 'active',
    '2' => 'abnormal',
  },
  'lgpPwrStateAuxOutputBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrTopFrequencyConverter' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrRotaryBreakerStatus' => {
    '1' => 'unknown',
    '2' => 'closed',
    '3' => 'test',
    '4' => 'normal',
    '5' => 'bypass',
    '6' => 'maintenance',
  },
  'lgpPwrLineMeasurementPowerFactorTag' => {
    '1' => 'leading',
    '2' => 'lagging',
  },
  'lgpPwrBatteryTest' => {
    '1' => 'start',
    '2' => 'abort',
  },
  'lgpPwrStateBypassQualification' => {
    '1' => 'fail',
    '2' => 'marginalLow',
    '3' => 'normal',
    '4' => 'marginalHigh',
  },
  'lgpPwrShutdownPowerFactorCorrectionFailure' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrParallelSystemOutputToLoadSource' => {
    '0' => 'unknown',
    '1' => 'utility',
    '2' => 'battery',
    '3' => 'bypass',
    '4' => 'none',
  },
  'lgpPwrBypassReady' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrLoadBusSyncMode' => {
    '1' => 'master',
    '2' => 'slave',
    '3' => 'none',
  },
  'lgpPwrStateSource2PduInputBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrBatteryChargeStatus' => {
    '1' => 'fullycharged',
    '2' => 'notfullycharged',
    '3' => 'charging',
    '4' => 'discharging',
  },
  'lgpPwrStateMaintIsolBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrGeneratorStatus' => {
    '1' => 'connected',
    '2' => 'disconnected',
  },
  'lgpPwrStateInputSource' => {
    '1' => 'none',
    '2' => 'utility',
    '3' => 'generator',
  },
  'lgpPwrStateInvOutputBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrInputIsolationTransformerInstalled' => {
    '1' => 'notInstalled',
    '2' => 'installed',
  },
  'lgpPwrStateSource2BypassBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrRectifierPulseCount' => {
    '1' => 'sixPulse',
    '2' => 'twelvePulse',
    '3' => 'eighteenPulse',
    '4' => 'twentyFourPulse',
  },
  'lgpPwrStateLoadDisconnectState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrShutdownHardware' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrBatteryLifeEnhancer' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrOutputToLoadOnBypass' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrInverterReady' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateBypassIsolBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrUPSTopDualInput' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateInverterQualification' => {
    '1' => 'fail',
    '2' => 'marginalLow',
    '3' => 'normal',
    '4' => 'marginalHigh',
  },
  'lgpPwrStateRectifierState' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrRectifierPassiveFilterInstalled' => {
    '1' => 'notInstalled',
    '2' => 'installed',
  },
  'lgpPwrShutdownInputUnderVoltage' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateOutputConfig' => {
    '1' => 'singlePhase2WireL1WithReturn',
    '2' => 'twoPhase2WireL1L2',
    '3' => 'twoPhase3WireL1L2WithNeutral',
    '4' => 'threePhase3WireL1L2L3',
    '5' => 'threePhase4WireL1L2L3WithNeutral',
  },
  'lgpPwrRectifierActiveFilterInstalled' => {
    '1' => 'notInstalled',
    '2' => 'installed',
  },
  'lgpPwrStateSource1BypassBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrStateBypassInputConfig' => {
    '1' => 'singlePhase2WireL1WithReturn',
    '2' => 'twoPhase2WireL1L2',
    '3' => 'twoPhase3WireL1L2WithNeutral',
    '4' => 'threePhase3WireL1L2L3',
    '5' => 'threePhase4WireL1L2L3WithNeutral',
  },
  'lgpPwrBatteryChargeCompensating' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrBatteryTestResult' => {
    '1' => 'unknown',
    '2' => 'passed',
    '3' => 'failed',
    '4' => 'inProgress',
    '5' => 'systemFailure',
    '6' => 'inhibited',
  },
  'lgpPwrUpsInverterStandby' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrShutdownLineSwap' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrRedundantSubModule' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateModuleType' => {
    '1' => 'singleModuleSystem',
    '2' => 'module1plus1',
    '3' => 'module1plusN',
    '4' => 'moduleNplus1',
    '5' => 'systemControlCabinet',
    '6' => 'mainStaticSwitch',
  },
  'lgpPwrRectifierTrapInstalled' => {
    '1' => 'notInstalled',
    '2' => 'installed',
  },
  'lgpPwrStateModuleOutBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrStateSource1PduInputBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrBuck' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrStateStaticSwitchType' => {
    '1' => 'notApplicable',
    '2' => 'continuousDuty',
    '3' => 'momentaryDuty',
  },
  'lgpPwrPowerFactorCorrection' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrMeasurementPointPowerFactorTag' => {
    '1' => 'leading',
    '2' => 'lagging',
  },
  'lgpPwrAutoReTransferEnabled' => {
    '0' => 'no',
    '1' => 'yes',
  },
  'lgpPwrStateTrapFilterBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrStateMaintBypassBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrOutputToLoadOnInverter' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrBoost' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrAutomaticBatteryTest' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrBatteryCircuitBreakerState' => {
    '0' => 'unknown',
    '1' => 'open',
    '2' => 'closed',
  },
  'lgpPwrBatteryCabinetType' => {
    '1' => 'notSpecified',
    '2' => 'internal',
    '3' => 'external',
    '4' => 'lrt',
  },
  'lgpPwrLoadCircuitState' => {
    '1' => 'on',
    '2' => 'off',
    '3' => 'default',
  },
  'lgpPwrDcToDcConverter' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrTopVoltageConverter' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrTopRedundantControlModules' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrUpsAutoRestart' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrShutdownOverload' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateInverterState' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrStateRectifierIsolBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrStateOutQualification' => {
    '1' => 'fail',
    '2' => 'marginalLow',
    '3' => 'normal',
    '4' => 'marginalHigh',
  },
  'lgpPwrShutdownOutputShort' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateOutStaticSwState' => {
    '1' => 'off',
    '2' => 'on',
    '3' => 'notInstalled',
  },
  'lgpPwrStateOutputBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrEconomicOperationMode' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrStateBypassStaticSwitchState' => {
    '1' => 'on',
    '2' => 'off',
  },
  'lgpPwrUPSModuleMode' => {
    '1' => 'single',
    '2' => 'parallel',
    '3' => 'hotmaster',
    '4' => 'hotslave',
  },
  'lgpPwrStateInputBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrShutdownDcBusOverload' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrUpsTopLineInteractive' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateBackfeedBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrStateIntBypassBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrShutdownLowBattery' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpPwrStateSource1InputBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrStateSource2InputBrkrState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'notInstalled',
  },
  'lgpPwrLoadCircuitStateAndControl' => {
    '0' => 'off',
    '1' => 'on',
    '2' => 'reboot',
  },
  'lgpPwrEconomicOperationModeControl' => {
    '0' => 'disabled',
    '1' => 'mode1',
    '2' => 'mode2',
  },
  'lgpPwrBatteryCapacityStatus' => {
    '1' => 'unknown',
    '2' => 'batteryNormal',
    '3' => 'batteryLow',
    '4' => 'batteryDepleted',
  },
};
