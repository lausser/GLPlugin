package Monitoring::GLPlugin::SNMP::MibsAndOids::JUNIPERPOWERSUPPLYUNITMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'JUNIPER-POWER-SUPPLY-UNIT-MIB'} = {
  url => '',
  name => 'JUNIPER-POWER-SUPPLY-UNIT-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'JUNIPER-POWER-SUPPLY-UNIT-MIB'} =
  '1.3.6.1.4.1.2636.3.58.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'JUNIPER-POWER-SUPPLY-UNIT-MIB'} = {
  'jnxPsuMIB' => '1.3.6.1.4.1.2636.3.58.1',
  'jnxPsuNotifications' => '1.3.6.1.4.1.2636.3.58.1.1',
  'jnxPsuObjects' => '1.3.6.1.4.1.2636.3.58.1.2',
  'jnxPsuScalars' => '1.3.6.1.4.1.2636.3.58.1.2.1',
  'jnxPsuAvailableDeviceCount' => '1.3.6.1.4.1.2636.3.58.1.2.1.1',
  'jnxPsuAvailableAveragePowerSupply' => '1.3.6.1.4.1.2636.3.58.1.2.1.2',
  'jnxPsuAvailableMaxPowerSupply' => '1.3.6.1.4.1.2636.3.58.1.2.1.3',
  'jnxPsuRedundancy' => '1.3.6.1.4.1.2636.3.58.1.2.1.4',
  'jnxPsuRedundancyDefinition' => 'JUNIPER-POWER-SUPPLY-UNIT-MIB::jnxPsuRedundancy',
  'jnxPsuChassisPowerReserved' => '1.3.6.1.4.1.2636.3.58.1.2.1.5',
  'jnxPsuChassisPowerAllocated' => '1.3.6.1.4.1.2636.3.58.1.2.1.6',
  'jnxPsuRedundantPowerAvailable' => '1.3.6.1.4.1.2636.3.58.1.2.1.7',
  'jnxPsuTotalPowerAvailable' => '1.3.6.1.4.1.2636.3.58.1.2.1.8',
  'jnxPsuChassisPowerConsumed' => '1.3.6.1.4.1.2636.3.58.1.2.1.9',
  'jnxPsuTemperatureInflow' => '1.3.6.1.4.1.2636.3.58.1.2.1.10',
  'jnxPsuTemperatureOutflow' => '1.3.6.1.4.1.2636.3.58.1.2.1.11',
  'jnxPsuTemperatureInflowSamples' => '1.3.6.1.4.1.2636.3.58.1.2.1.12',
  'jnxPsuTemperatureOutflowSamples' => '1.3.6.1.4.1.2636.3.58.1.2.1.13',
  'jnxPsuTable' => '1.3.6.1.4.1.2636.3.58.1.2.2',
  'jnxPsuEntry' => '1.3.6.1.4.1.2636.3.58.1.2.2.1',
  'jnxPsuAvgPower' => '1.3.6.1.4.1.2636.3.58.1.2.2.1.1',
  'jnxPsuMaxPower' => '1.3.6.1.4.1.2636.3.58.1.2.2.1.2',
  'jnxPsuMode' => '1.3.6.1.4.1.2636.3.58.1.2.2.1.3',
  'jnxPsuModeDefinition' => 'JUNIPER-POWER-SUPPLY-UNIT-MIB::jnxPsuMode',
  'jnxPsuOutletCount' => '1.3.6.1.4.1.2636.3.58.1.2.2.1.4',
  'jnxPsuEnvironmentTable' => '1.3.6.1.4.1.2636.3.58.1.2.3',
  'jnxPsuEnvironmentEntry' => '1.3.6.1.4.1.2636.3.58.1.2.3.1',
  'jnxPsuThermalValue' => '1.3.6.1.4.1.2636.3.58.1.2.3.1.1',
  'jnxPsuHumidityValue' => '1.3.6.1.4.1.2636.3.58.1.2.3.1.2',
  'jnxPsuOutletTable' => '1.3.6.1.4.1.2636.3.58.1.2.4',
  'jnxPsuOutletEntry' => '1.3.6.1.4.1.2636.3.58.1.2.4.1',
  'jnxPsuOutletName' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.1',
  'jnxPsuOutletDescription' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.2',
  'jnxPsuOutletAvgPower' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.3',
  'jnxPsuOutletMaxPower' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.4',
  'jnxPsuOutletCurrent' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.5',
  'jnxPsuOutletStatus' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.8',
  'jnxPsuOutletStatusDefinition' => 'JUNIPER-POWER-SUPPLY-UNIT-MIB::jnxPsuOutletStatus',
  'jnxPsuOutletVoltage' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.9',
  'jnxPsuOutletPowerFactorValue' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.10',
  'jnxPsuOutletPowerConsumed' => '1.3.6.1.4.1.2636.3.58.1.2.4.1.11',
  'jnxPsuFpcPowerTable' => '1.3.6.1.4.1.2636.3.58.1.2.5',
  'jnxPsuFpcPowerEntry' => '1.3.6.1.4.1.2636.3.58.1.2.5.1',
  'jnxPsuFpcPowerPriority' => '1.3.6.1.4.1.2636.3.58.1.2.5.1.1',
  'jnxPsuFpcPowerAllocated' => '1.3.6.1.4.1.2636.3.58.1.2.5.1.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'JUNIPER-POWER-SUPPLY-UNIT-MIB'} = {
  'jnxPsuRedundancy' => {
    '1' => 'nPlusNRedundancy',
    '2' => 'nPlusOneRedundancy',
    '3' => 'none',
  },
  'jnxPsuMode' => {
    '1' => 'single',
    '3' => 'three',
  },
  'jnxPsuOutletStatus' => {
    '0' => 'off',
    '1' => 'on',
  },
};
