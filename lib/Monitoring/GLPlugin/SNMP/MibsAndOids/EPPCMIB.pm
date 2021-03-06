package Monitoring::GLPlugin::SNMP::MibsAndOids::EPPCMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'EPPC-MIB'} = {
  url => '',
  name => 'EPPC-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'EPPC-MIB'} =
  '1.3.6.1.4.1.935.10.1.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'EPPC-MIB'} = {
  'ppc' => '1.3.6.1.4.1.935',
  'device' => '1.3.6.1.4.1.935.10',
  'upsAgent' => '1.3.6.1.4.1.935.10.1',
  'upsE' => '1.3.6.1.4.1.935.10.1.1',
  'upsEIdentity' => '1.3.6.1.4.1.935.10.1.1.1',
  'upsEIdentityManufacturer' => '1.3.6.1.4.1.935.10.1.1.1.1',
  'upsEIdentityModel' => '1.3.6.1.4.1.935.10.1.1.1.2',
  'upsEIdentityUPSFirmwareVerison' => '1.3.6.1.4.1.935.10.1.1.1.3',
  'upsEIndentityUPSSerialNumber' => '1.3.6.1.4.1.935.10.1.1.1.4',
  'upsEIdentityDescription' => '1.3.6.1.4.1.935.10.1.1.1.5',
  'upsEIdentityAgentSoftwareVerison' => '1.3.6.1.4.1.935.10.1.1.1.6',
  'upsEIdentityAttachedDevices' => '1.3.6.1.4.1.935.10.1.1.1.7',
  'upsESystemSummary' => '1.3.6.1.4.1.935.10.1.1.2',
  'upsESystemStatus' => '1.3.6.1.4.1.935.10.1.1.2.1',
  'upsESystemStatusDefinition' => 'EPPC-MIB::upsESystemStatus',
  'upsESystemTemperature' => '1.3.6.1.4.1.935.10.1.1.2.2',
  'upsESystemWarningCode' => '1.3.6.1.4.1.935.10.1.1.2.3',
  'upsESystemFaultCode' => '1.3.6.1.4.1.935.10.1.1.2.4',
  'upsESystemConfigInputVoltage' => '1.3.6.1.4.1.935.10.1.1.2.5',
  'upsESystemConfigInputFrequence' => '1.3.6.1.4.1.935.10.1.1.2.6',
  'upsESystemConfigOutputVoltage' => '1.3.6.1.4.1.935.10.1.1.2.7',
  'upsESystemConfigOutputFrequency' => '1.3.6.1.4.1.935.10.1.1.2.8',
  'upsESystemConfigOutputVA' => '1.3.6.1.4.1.935.10.1.1.2.9',
  'upsESystemConfigOutputPower' => '1.3.6.1.4.1.935.10.1.1.2.10',
  'upsESystemConfigOutputLoadHighSetPoint' => '1.3.6.1.4.1.935.10.1.1.2.11',
  'upsESystemConfigOverTemperatureSetPoint' => '1.3.6.1.4.1.935.10.1.1.2.12',
  'upsESystemInputSourceNum' => '1.3.6.1.4.1.935.10.1.1.2.13',
  'upsESystemInputLineBads' => '1.3.6.1.4.1.935.10.1.1.2.14',
  'upsESystemInputNumPhases' => '1.3.6.1.4.1.935.10.1.1.2.15',
  'upsESystemInputTable' => '1.3.6.1.4.1.935.10.1.1.2.16',
  'upsESystemInputEntry' => '1.3.6.1.4.1.935.10.1.1.2.16.1',
  'upsESystemInputPhase' => '1.3.6.1.4.1.935.10.1.1.2.16.1.1',
  'upsESystemInputFrequency' => '1.3.6.1.4.1.935.10.1.1.2.16.1.2',
  'upsESystemInputVoltage' => '1.3.6.1.4.1.935.10.1.1.2.16.1.3',
  'upsESystemInputCurrent' => '1.3.6.1.4.1.935.10.1.1.2.16.1.4',
  'upsESystemInputWatts' => '1.3.6.1.4.1.935.10.1.1.2.16.1.5',
  'upsESystemOutputNumPhase' => '1.3.6.1.4.1.935.10.1.1.2.17',
  'upsESystemOutputTable' => '1.3.6.1.4.1.935.10.1.1.2.18',
  'upsESystemOutputEntry' => '1.3.6.1.4.1.935.10.1.1.2.18.1',
  'upsESystemOutputPhase' => '1.3.6.1.4.1.935.10.1.1.2.18.1.1',
  'upsESystemOutputFrequency' => '1.3.6.1.4.1.935.10.1.1.2.18.1.2',
  'upsESystemOutputVoltage' => '1.3.6.1.4.1.935.10.1.1.2.18.1.3',
  'upsESystemOutputCurrent' => '1.3.6.1.4.1.935.10.1.1.2.18.1.4',
  'upsESystemOutputWatts' => '1.3.6.1.4.1.935.10.1.1.2.18.1.5',
  'upsESystemOutputVA' => '1.3.6.1.4.1.935.10.1.1.2.18.1.6',
  'upsESystemOutputLoad' => '1.3.6.1.4.1.935.10.1.1.2.18.1.7',
  'upsESystemBypassNumPhase' => '1.3.6.1.4.1.935.10.1.1.2.19',
  'upsESystemBypassTable' => '1.3.6.1.4.1.935.10.1.1.2.20',
  'upsESystemBypassEntry' => '1.3.6.1.4.1.935.10.1.1.2.20.1',
  'upsESystemBypassPhase' => '1.3.6.1.4.1.935.10.1.1.2.20.1.1',
  'upsESystemBypassFrequency' => '1.3.6.1.4.1.935.10.1.1.2.20.1.2',
  'upsESystemBypassVoltage' => '1.3.6.1.4.1.935.10.1.1.2.20.1.3',
  'upsESystemBypassCurrent' => '1.3.6.1.4.1.935.10.1.1.2.20.1.4',
  'upsESystemBypassWatts' => '1.3.6.1.4.1.935.10.1.1.2.20.1.5',
  'upsESystemConfigBelowCapacityLimit' => '1.3.6.1.4.1.935.10.1.1.2.21',
  'upsESystemConfigBelowRemainTimeLimit' => '1.3.6.1.4.1.935.10.1.1.2.22',
  'upsEBatterySystem' => '1.3.6.1.4.1.935.10.1.1.3',
  'upsEBatteryStatus' => '1.3.6.1.4.1.935.10.1.1.3.1',
  'upsEBatteryStatusDefinition' => 'EPPC-MIB::upsEBatteryStatus',
  'upsESecondsOnBattery' => '1.3.6.1.4.1.935.10.1.1.3.2',
  'upsEBatteryEstimatedMinutesRemaining' => '1.3.6.1.4.1.935.10.1.1.3.3',
  'upsEBatteryEstimatedChargeRemaining' => '1.3.6.1.4.1.935.10.1.1.3.4',
  'upsEPositiveBatteryVoltage' => '1.3.6.1.4.1.935.10.1.1.3.5',
  'upsENegativeBatteryVoltage' => '1.3.6.1.4.1.935.10.1.1.3.6',
  'upsEBatteryCellNumber' => '1.3.6.1.4.1.935.10.1.1.3.7',
  'upsEBatteryTemperature' => '1.3.6.1.4.1.935.10.1.1.3.8',
  'upsEBatteryLastReplacedDate' => '1.3.6.1.4.1.935.10.1.1.3.9',
  'upsEBatteryABMStatus' => '1.3.6.1.4.1.935.10.1.1.3.10',
  'upsEBatteryABMStatusDefinition' => 'EPPC-MIB::upsEBatteryABMStatus',
  'upsEChargerModulesNum' => '1.3.6.1.4.1.935.10.1.1.3.11',
  'upsEChargerModulesTable' => '1.3.6.1.4.1.935.10.1.1.3.12',
  'upsEChargerModulesEntry' => '1.3.6.1.4.1.935.10.1.1.3.12.1',
  'chargerModulesNum' => '1.3.6.1.4.1.935.10.1.1.3.12.1.1',
  'chargerModulesAddress' => '1.3.6.1.4.1.935.10.1.1.3.12.1.2',
  'positiveChargeVotlage' => '1.3.6.1.4.1.935.10.1.1.3.12.1.3',
  'negativeChargeVoltage' => '1.3.6.1.4.1.935.10.1.1.3.12.1.4',
  'positiveChargeCurrent' => '1.3.6.1.4.1.935.10.1.1.3.12.1.5',
  'negativeChargeCurrent' => '1.3.6.1.4.1.935.10.1.1.3.12.1.6',
  'chargerModulesTemperature' => '1.3.6.1.4.1.935.10.1.1.3.12.1.7',
  'chargerModulesMode' => '1.3.6.1.4.1.935.10.1.1.3.12.1.8',
  'chargerModulesModeDefinition' => 'EPPC-MIB::chargerModulesMode',
  'upsEPowerConverterSystem' => '1.3.6.1.4.1.935.10.1.1.4',
  'upsEUPSModulesNum' => '1.3.6.1.4.1.935.10.1.1.4.1',
  'upsEModulesTable' => '1.3.6.1.4.1.935.10.1.1.4.2',
  'upsEModulesEntry' => '1.3.6.1.4.1.935.10.1.1.4.2.1',
  'upsEModulesNum' => '1.3.6.1.4.1.935.10.1.1.4.2.1.1',
  'upsEModuleAddress' => '1.3.6.1.4.1.935.10.1.1.4.2.1.2',
  'upsEModulePositiveBusVolt' => '1.3.6.1.4.1.935.10.1.1.4.2.1.3',
  'upsEModuleNegativeBusVolt' => '1.3.6.1.4.1.935.10.1.1.4.2.1.4',
  'upsEModuleTemperature' => '1.3.6.1.4.1.935.10.1.1.4.2.1.5',
  'upsEModuleWorkingMode' => '1.3.6.1.4.1.935.10.1.1.4.2.1.6',
  'upsEModuleWorkingModeDefinition' => 'EPPC-MIB::upsEModuleWorkingMode',
  'upsEModuleOutputCurrentR' => '1.3.6.1.4.1.935.10.1.1.4.2.1.7',
  'upsEModuleOutputWattR' => '1.3.6.1.4.1.935.10.1.1.4.2.1.8',
  'upsEModuleOutputLoadR' => '1.3.6.1.4.1.935.10.1.1.4.2.1.9',
  'upsEModuleWarningCode' => '1.3.6.1.4.1.935.10.1.1.4.2.1.10',
  'upsEModuleFaultCode' => '1.3.6.1.4.1.935.10.1.1.4.2.1.11',
  'upsEModuleTrapState' => '1.3.6.1.4.1.935.10.1.1.4.2.1.12',
  'upsEModuleConfigOutputVA' => '1.3.6.1.4.1.935.10.1.1.4.2.1.13',
  'upsEModuleOutputCurrentS' => '1.3.6.1.4.1.935.10.1.1.4.2.1.14',
  'upsEModuleOutputCurrentT' => '1.3.6.1.4.1.935.10.1.1.4.2.1.15',
  'upsEModuleOutputWattS' => '1.3.6.1.4.1.935.10.1.1.4.2.1.16',
  'upsEModuleOutputWattT' => '1.3.6.1.4.1.935.10.1.1.4.2.1.17',
  'upsEModuleOutputLoadS' => '1.3.6.1.4.1.935.10.1.1.4.2.1.18',
  'upsEModuleOutputLoadT' => '1.3.6.1.4.1.935.10.1.1.4.2.1.19',
  'upsEModuleOutputVAR' => '1.3.6.1.4.1.935.10.1.1.4.2.1.20',
  'upsEModuleOutputVAS' => '1.3.6.1.4.1.935.10.1.1.4.2.1.21',
  'upsEModuleOutputVAT' => '1.3.6.1.4.1.935.10.1.1.4.2.1.22',
  'upsELoadSegment' => '1.3.6.1.4.1.935.10.1.1.5',
  'upsELoadSegment1OffDelay' => '1.3.6.1.4.1.935.10.1.1.5.1',
  'upsELoadSegment1OnDelay' => '1.3.6.1.4.1.935.10.1.1.5.2',
  'upsELoadSegment1AutoOffTimer' => '1.3.6.1.4.1.935.10.1.1.5.3',
  'upsELoadSegment1AutoOnTimer' => '1.3.6.1.4.1.935.10.1.1.5.4',
  'upsELoadSegment1State' => '1.3.6.1.4.1.935.10.1.1.5.5',
  'upsELoadSegment1StateDefinition' => 'EPPC-MIB::upsELoadSegment1State',
  'upsELoadSegment2OffDelay' => '1.3.6.1.4.1.935.10.1.1.5.6',
  'upsELoadSegment2OnDelay' => '1.3.6.1.4.1.935.10.1.1.5.7',
  'upsELoadSegment2AutoOffTimer' => '1.3.6.1.4.1.935.10.1.1.5.8',
  'upsELoadSegment2AutoOnTimer' => '1.3.6.1.4.1.935.10.1.1.5.9',
  'upsELoadSegment2State' => '1.3.6.1.4.1.935.10.1.1.5.10',
  'upsELoadSegment2StateDefinition' => 'EPPC-MIB::upsELoadSegment2State',
  'upsEEnvironment' => '1.3.6.1.4.1.935.10.1.1.6',
  'upsEEnvironmentTemperature' => '1.3.6.1.4.1.935.10.1.1.6.1',
  'upsEEnvironmentCurrentTemperature' => '1.3.6.1.4.1.935.10.1.1.6.1.1',
  'upsEEnvironmentTemperatureHighSetPoint' => '1.3.6.1.4.1.935.10.1.1.6.1.2',
  'upsEEnvironmentTemperatureHighStatus' => '1.3.6.1.4.1.935.10.1.1.6.1.3',
  'upsEEnvironmentTemperatureHighStatusDefinition' => 'EPPC-MIB::upsEEnvironmentTemperatureHighStatus',
  'upsEEnvironmentTemperatureLowSetPoint' => '1.3.6.1.4.1.935.10.1.1.6.1.4',
  'upsEEnvironmentTemperatureLowStatus' => '1.3.6.1.4.1.935.10.1.1.6.1.5',
  'upsEEnvironmentTemperatureLowStatusDefinition' => 'EPPC-MIB::upsEEnvironmentTemperatureLowStatus',
  'upsEEnvironmentTemperatureOffset' => '1.3.6.1.4.1.935.10.1.1.6.1.6',
  'upsEEnvironmentHumidity' => '1.3.6.1.4.1.935.10.1.1.6.2',
  'upsEEnvironmentCurrentHumidity' => '1.3.6.1.4.1.935.10.1.1.6.2.1',
  'upsEEnvironmentHumidityHighSetPoint' => '1.3.6.1.4.1.935.10.1.1.6.2.2',
  'upsEEnvironmentHumidityHighStatus' => '1.3.6.1.4.1.935.10.1.1.6.2.3',
  'upsEEnvironmentHumidityHighStatusDefinition' => 'EPPC-MIB::upsEEnvironmentHumidityHighStatus',
  'upsEEnvironmentHumidityLowSetPoint' => '1.3.6.1.4.1.935.10.1.1.6.2.4',
  'upsEEnvironmentHumidityLowStatus' => '1.3.6.1.4.1.935.10.1.1.6.2.5',
  'upsEEnvironmentHumidityLowStatusDefinition' => 'EPPC-MIB::upsEEnvironmentHumidityLowStatus',
  'upsEEnvironmentHumidityOffset' => '1.3.6.1.4.1.935.10.1.1.6.2.6',
  'upsEEnvironmentContactsNum' => '1.3.6.1.4.1.935.10.1.1.6.3',
  'upsEEnvironmentContactTable' => '1.3.6.1.4.1.935.10.1.1.6.4',
  'upsEEnvironmentContactEntry' => '1.3.6.1.4.1.935.10.1.1.6.4.1',
  'upsEEnvironmentContactIndex' => '1.3.6.1.4.1.935.10.1.1.6.4.1.1',
  'upsEEnvironmentContactType' => '1.3.6.1.4.1.935.10.1.1.6.4.1.2',
  'upsEEnvironmentContactTypeDefinition' => 'EPPC-MIB::upsEEnvironmentContactType',
  'upsEEnvironmentContactState' => '1.3.6.1.4.1.935.10.1.1.6.4.1.3',
  'upsEEnvironmentContactStateDefinition' => 'EPPC-MIB::upsEEnvironmentContactState',
  'upsEEnvironmentContactDescription' => '1.3.6.1.4.1.935.10.1.1.6.4.1.4',
  'upsEBatteryTest' => '1.3.6.1.4.1.935.10.1.1.7',
  'upsEBatteryTestStart' => '1.3.6.1.4.1.935.10.1.1.7.1',
  'upsEBatteryTestStartDefinition' => 'EPPC-MIB::upsEBatteryTestStart',
  'upsEBatteryTestSettingTime' => '1.3.6.1.4.1.935.10.1.1.7.2',
  'upsEBatteryTestResult' => '1.3.6.1.4.1.935.10.1.1.7.3',
  'upsEBatteryTestResultDefinition' => 'EPPC-MIB::upsEBatteryTestResult',
  'upsEBatteryTestStartTime' => '1.3.6.1.4.1.935.10.1.1.7.4',
  'upsEBatteryTestElapsedTime' => '1.3.6.1.4.1.935.10.1.1.7.5',
  'upsEBatteryTestScheduleTable' => '1.3.6.1.4.1.935.10.1.1.7.6',
  'upsEBatteryTestScheduleEntry' => '1.3.6.1.4.1.935.10.1.1.7.6.1',
  'upsEBatteryTestScheduleIndex' => '1.3.6.1.4.1.935.10.1.1.7.6.1.1',
  'upsEBatteryTestScheduleDay' => '1.3.6.1.4.1.935.10.1.1.7.6.1.2',
  'upsEBatteryTestScheduleDayDefinition' => 'EPPC-MIB::upsEBatteryTestScheduleDay',
  'upsEBatteryTestScheduleTime' => '1.3.6.1.4.1.935.10.1.1.7.6.1.3',
  'upsEBatteryTestScheduleType' => '1.3.6.1.4.1.935.10.1.1.7.6.1.5',
  'upsEBatteryTestScheduleTypeDefinition' => 'EPPC-MIB::upsEBatteryTestScheduleType',
  'upsEBatteryTestScheduleTestWithTime' => '1.3.6.1.4.1.935.10.1.1.7.6.1.6',
  'upsEBatteryTestScheduleSpecialDay' => '1.3.6.1.4.1.935.10.1.1.7.6.1.7',
  'upsEControl' => '1.3.6.1.4.1.935.10.1.1.8',
  'upsEControlOutputOffDelay' => '1.3.6.1.4.1.935.10.1.1.8.1',
  'upsEControlOutputOnDelay' => '1.3.6.1.4.1.935.10.1.1.8.2',
  'upsEControlOutputOnOffControl' => '1.3.6.1.4.1.935.10.1.1.8.3',
  'upsEControlOutputOnOffControlDefinition' => 'EPPC-MIB::upsEControlOutputOnOffControl',
  'upsEShutdownEventsTable' => '1.3.6.1.4.1.935.10.1.1.8.4',
  'upsEShutdownEventsEntry' => '1.3.6.1.4.1.935.10.1.1.8.4.1',
  'upsEShutdownEvent' => '1.3.6.1.4.1.935.10.1.1.8.4.1.1',
  'upsEShutdownEventDefinition' => 'EPPC-MIB::upsEShutdownEvent',
  'upsEShutdownEventAction' => '1.3.6.1.4.1.935.10.1.1.8.4.1.2',
  'upsEShutdownEventActionDefinition' => 'EPPC-MIB::upsEShutdownEventAction',
  'upsEShutdownwarningPeriodTime' => '1.3.6.1.4.1.935.10.1.1.8.4.1.3',
  'upsEShutdownWarningPeriodInterval' => '1.3.6.1.4.1.935.10.1.1.8.4.1.4',
  'upsEControlWeeklyScheduleTable' => '1.3.6.1.4.1.935.10.1.1.8.5',
  'upsEControlWeeklyScheduleEntry' => '1.3.6.1.4.1.935.10.1.1.8.5.1',
  'upsEControlWeeklyScheduleIndex' => '1.3.6.1.4.1.935.10.1.1.8.5.1.1',
  'upsEWeeklyScheduleShutdownDay' => '1.3.6.1.4.1.935.10.1.1.8.5.1.2',
  'upsEWeeklyScheduleShutdownDayDefinition' => 'EPPC-MIB::upsEWeeklyScheduleShutdownDay',
  'upsEWeeklyScheduleShutdownTime' => '1.3.6.1.4.1.935.10.1.1.8.5.1.3',
  'upsEWeeklyScheduleRestartDay' => '1.3.6.1.4.1.935.10.1.1.8.5.1.4',
  'upsEWeeklyScheduleRestartDayDefinition' => 'EPPC-MIB::upsEWeeklyScheduleRestartDay',
  'upsEWeeklyScheduleRestartTime' => '1.3.6.1.4.1.935.10.1.1.8.5.1.5',
  'upsEControlSpecialDayScheduleTable' => '1.3.6.1.4.1.935.10.1.1.8.6',
  'upsEControlSpecialDayScheduleEntry' => '1.3.6.1.4.1.935.10.1.1.8.6.1',
  'upsEControlSpecialDayScheduleIndex' => '1.3.6.1.4.1.935.10.1.1.8.6.1.1',
  'upsESpecialDayScheduleShutdownDay' => '1.3.6.1.4.1.935.10.1.1.8.6.1.2',
  'upsESpecialDayScheduleShutdownTime' => '1.3.6.1.4.1.935.10.1.1.8.6.1.3',
  'upsESpecialDayScheduleRestartDay' => '1.3.6.1.4.1.935.10.1.1.8.6.1.4',
  'upsESpecialDayScheduleRestartTime' => '1.3.6.1.4.1.935.10.1.1.8.6.1.5',
  'upsESystemMasterOffDelay' => '1.3.6.1.4.1.935.10.1.1.8.7',
  'upsESystemMasterOnDelay' => '1.3.6.1.4.1.935.10.1.1.8.8',
  'upsETrapControl' => '1.3.6.1.4.1.935.10.1.1.9',
  'upsETrapsReceiversTable' => '1.3.6.1.4.1.935.10.1.1.9.1',
  'upsETrapsReceiversEntry' => '1.3.6.1.4.1.935.10.1.1.9.1.1',
  'upsETrapsReceiversIndex' => '1.3.6.1.4.1.935.10.1.1.9.1.1.1',
  'upsETrapsReceiverAddress' => '1.3.6.1.4.1.935.10.1.1.9.1.1.2',
  'upsETrapReceiverCommunityString' => '1.3.6.1.4.1.935.10.1.1.9.1.1.3',
  'upsETrapType' => '1.3.6.1.4.1.935.10.1.1.9.1.1.4',
  'upsETrapTypeDefinition' => 'EPPC-MIB::upsETrapType',
  'upsETrapsSeverityLevel' => '1.3.6.1.4.1.935.10.1.1.9.1.1.5',
  'upsETrapsSeverityLevelDefinition' => 'EPPC-MIB::upsETrapsSeverityLevel',
  'upsETrapReceiverDescription' => '1.3.6.1.4.1.935.10.1.1.9.1.1.6',
  'upsETrapState' => '1.3.6.1.4.1.935.10.1.1.9.2',
  'upsETraps' => '1.3.6.1.4.1.935.10.1.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'EPPC-MIB'} = {
  'upsETrapType' => {
    '1' => 'none',
    '2' => 'rfc1628Trap',
    '3' => 'eppcTrap',
  },
  'upsEShutdownEventAction' => {
    '1' => 'disable',
    '2' => 'warning',
    '3' => 'shutdownClient',
    '4' => 'shutdownUPS',
  },
  'upsEEnvironmentHumidityHighStatus' => {
    '1' => 'enable',
    '2' => 'disable',
  },
  'upsETrapsSeverityLevel' => {
    '1' => 'informational',
    '2' => 'warning',
    '3' => 'severe',
  },
  'upsESystemStatus' => {
    '1' => 'power-on',
    '2' => 'stand-by',
    '3' => 'by-pass',
    '4' => 'line',
    '5' => 'battery',
    '6' => 'battery-test',
    '7' => 'fault',
    '8' => 'converter',
    '9' => 'eco',
    '10' => 'shutdown',
    '11' => 'on-booster',
    '12' => 'on-reducer',
    '13' => 'other',
  },
  'upsEBatteryTestStart' => {
    '1' => 'none',
    '2' => 'batteryTest10Sec',
    '3' => 'batteryTestUntilLow',
    '4' => 'batteryTestWithTime',
    '5' => 'cancelBatteryTest',
    '6' => 'clearBatteryInfo',
  },
  'upsEControlOutputOnOffControl' => {
    '1' => 'upsEOutputOff',
    '2' => 'upsEOutputOffCancel',
    '3' => 'upsESleep',
    '4' => 'none',
  },
  'upsEBatteryTestScheduleType' => {
    '1' => 'none',
    '2' => 'batteryTest10sec',
    '3' => 'batteryTestUntilLow',
    '4' => 'batteryTestWithTime',
  },
  'upsEWeeklyScheduleRestartDay' => {
    '1' => 'monday',
    '2' => 'tuesday',
    '3' => 'wednesday',
    '4' => 'thursday',
    '5' => 'friday',
    '6' => 'saturday',
    '7' => 'sunday',
    '8' => 'none',
  },
  'upsEEnvironmentTemperatureLowStatus' => {
    '1' => 'enable',
    '2' => 'disable',
  },
  'upsEWeeklyScheduleShutdownDay' => {
    '1' => 'monday',
    '2' => 'tuesday',
    '3' => 'wednesday',
    '4' => 'thursday',
    '5' => 'friday',
    '6' => 'saturday',
    '7' => 'sunday',
    '8' => 'none',
  },
  'upsEEnvironmentContactType' => {
    '1' => 'normallyOpen',
    '2' => 'normallyClosed',
    '3' => 'notUsed',
  },
  'upsEEnvironmentHumidityLowStatus' => {
    '1' => 'enable',
    '2' => 'disable',
  },
  'chargerModulesMode' => {
    '1' => 'powerOn',
    '2' => 'standyby',
    '3' => 'fault',
    '4' => 'shutdown',
    '5' => 'running',
    '6' => 'suicide',
    '7' => 'unknown',
  },
  'upsELoadSegment2State' => {
    '1' => 'off',
    '2' => 'on',
    '3' => 'off-pending',
    '4' => 'on-pending',
    '5' => 'not-support',
  },
  'upsEBatteryTestResult' => {
    '1' => 'idle',
    '2' => 'processing',
    '3' => 'noFailure',
    '4' => 'failureOrWarning',
    '5' => 'notPossible',
    '6' => 'testCancel',
  },
  'upsEBatteryTestScheduleDay' => {
    '1' => 'monday',
    '2' => 'tuesday',
    '3' => 'wednsday',
    '4' => 'thusday',
    '5' => 'friday',
    '6' => 'saturday',
    '7' => 'sunday',
    '8' => 'specialday',
    '9' => 'none',
  },
  'upsEBatteryStatus' => {
    '1' => 'unknown',
    '2' => 'batteryNormal',
    '3' => 'batteryLow',
    '4' => 'batteryDepleted',
    '5' => 'batteryDischarging',
    '6' => 'batteryFailure',
  },
  'upsEShutdownEvent' => {
    '1' => 'acFail',
    '2' => 'batteryLow',
    '3' => 'upsEOverLoad',
    '4' => 'upsEOverTemperature',
    '5' => 'upsEWeeklySchedule',
    '6' => 'upsESpecialSchedule',
    '7' => 'environmentTemperatureOverThreshold',
    '8' => 'environmentHumidityOverThreshold',
    '9' => 'environmentContact1Alarm',
    '10' => 'environmentContact2Alarm',
    '11' => 'belowCapacityLimit',
    '12' => 'belowRemainTimeLimit',
  },
  'upsEEnvironmentContactState' => {
    '1' => 'open',
    '2' => 'closed',
    '3' => 'openWithNotice',
    '4' => 'closedWithNotice',
  },
  'upsEEnvironmentTemperatureHighStatus' => {
    '1' => 'enable',
    '2' => 'disable',
  },
  'upsEModuleWorkingMode' => {
    '1' => 'power-on',
    '2' => 'stand-by',
    '3' => 'by-pass',
    '4' => 'line',
    '5' => 'battery',
    '6' => 'battery-test',
    '7' => 'fault',
    '8' => 'converter',
    '9' => 'eco',
    '10' => 'shutdown',
    '11' => 'on-booster',
    '12' => 'on-reducer',
    '13' => 'other',
  },
  'upsEBatteryABMStatus' => {
    '1' => 'charge',
    '2' => 'float',
    '3' => 'rest',
    '4' => 'discharge',
    '5' => 'disable',
  },
  'upsELoadSegment1State' => {
    '1' => 'off',
    '2' => 'on',
    '3' => 'off-pending',
    '4' => 'on-pending',
    '5' => 'not-support',
  },
};
