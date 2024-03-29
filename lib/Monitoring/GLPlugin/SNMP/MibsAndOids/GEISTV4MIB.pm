package Monitoring::GLPlugin::SNMP::MibsAndOids::GEISTV4MIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'GEIST-V4-MIB'} = {
  url => '',
  name => 'GEIST-V4-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'GEIST-V4-MIB'} =
  '1.3.6.1.4.1.21239.5.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'GEIST-V4-MIB'} = {
  'geist' => '1.3.6.1.4.1.21239',
  'blackbird' => '1.3.6.1.4.1.21239.5',
  'watchdog100' => '1.3.6.1.4.1.21239.5.1',
  'deviceInfo' => '1.3.6.1.4.1.21239.5.1.1',
  'productTitle' => '1.3.6.1.4.1.21239.5.1.1.1',
  'productVersion' => '1.3.6.1.4.1.21239.5.1.1.2',
  'productFriendlyName' => '1.3.6.1.4.1.21239.5.1.1.3',
  'productMacAddress' => '1.3.6.1.4.1.21239.5.1.1.4',
  'productUrl' => '1.3.6.1.4.1.21239.5.1.1.5',
  'deviceCount' => '1.3.6.1.4.1.21239.5.1.1.6',
  'temperatureUnits' => '1.3.6.1.4.1.21239.5.1.1.7',
  'temperatureUnitsDefinition' => 'GEIST-V4-MIB::temperatureUnits',
  'internalTable' => '1.3.6.1.4.1.21239.5.1.2',
  'internalEntry' => '1.3.6.1.4.1.21239.5.1.2.1',
  'internalIndex' => '1.3.6.1.4.1.21239.5.1.2.1.1',
  'internalSerial' => '1.3.6.1.4.1.21239.5.1.2.1.2',
  'internalName' => '1.3.6.1.4.1.21239.5.1.2.1.3',
  'internalAvail' => '1.3.6.1.4.1.21239.5.1.2.1.4',
  'internalAvailDefinition' => 'GEIST-V4-MIB::availability',
  'internalTemp' => '1.3.6.1.4.1.21239.5.1.2.1.5',
  'internalHumidity' => '1.3.6.1.4.1.21239.5.1.2.1.6',
  'internalDewPoint' => '1.3.6.1.4.1.21239.5.1.2.1.7',
  'tempSensorTable' => '1.3.6.1.4.1.21239.5.1.4',
  'tempSensorEntry' => '1.3.6.1.4.1.21239.5.1.4.1',
  'tempSensorIndex' => '1.3.6.1.4.1.21239.5.1.4.1.1',
  'tempSensorSerial' => '1.3.6.1.4.1.21239.5.1.4.1.2',
  'tempSensorName' => '1.3.6.1.4.1.21239.5.1.4.1.3',
  'tempSensorAvail' => '1.3.6.1.4.1.21239.5.1.4.1.4',
  'tempSensorAvailDefinition' => 'GEIST-V4-MIB::availability',
  'tempSensorTemp' => '1.3.6.1.4.1.21239.5.1.4.1.5',
  'airFlowSensorTable' => '1.3.6.1.4.1.21239.5.1.5',
  'airFlowSensorEntry' => '1.3.6.1.4.1.21239.5.1.5.1',
  'airFlowSensorIndex' => '1.3.6.1.4.1.21239.5.1.5.1.1',
  'airFlowSensorSerial' => '1.3.6.1.4.1.21239.5.1.5.1.2',
  'airFlowSensorName' => '1.3.6.1.4.1.21239.5.1.5.1.3',
  'airFlowSensorAvail' => '1.3.6.1.4.1.21239.5.1.5.1.4',
  'airFlowSensorAvailDefinition' => 'GEIST-V4-MIB::availability',
  'airFlowSensorTemp' => '1.3.6.1.4.1.21239.5.1.5.1.5',
  'airFlowSensorFlow' => '1.3.6.1.4.1.21239.5.1.5.1.6',
  'airFlowSensorHumidity' => '1.3.6.1.4.1.21239.5.1.5.1.7',
  'airFlowSensorDewPoint' => '1.3.6.1.4.1.21239.5.1.5.1.8',
  'dewPointSensorTable' => '1.3.6.1.4.1.21239.5.1.6',
  'dewPointSensorEntry' => '1.3.6.1.4.1.21239.5.1.6.1',
  'dewPointSensorIndex' => '1.3.6.1.4.1.21239.5.1.6.1.1',
  'dewPointSensorSerial' => '1.3.6.1.4.1.21239.5.1.6.1.2',
  'dewPointSensorName' => '1.3.6.1.4.1.21239.5.1.6.1.3',
  'dewPointSensorAvail' => '1.3.6.1.4.1.21239.5.1.6.1.4',
  'dewPointSensorAvailDefinition' => 'GEIST-V4-MIB::availability',
  'dewPointSensorTemp' => '1.3.6.1.4.1.21239.5.1.6.1.5',
  'dewPointSensorHumidity' => '1.3.6.1.4.1.21239.5.1.6.1.6',
  'dewPointSensorDewPoint' => '1.3.6.1.4.1.21239.5.1.6.1.7',
  'ccatSensorTable' => '1.3.6.1.4.1.21239.5.1.7',
  'ccatSensorEntry' => '1.3.6.1.4.1.21239.5.1.7.1',
  'ccatSensorIndex' => '1.3.6.1.4.1.21239.5.1.7.1.1',
  'ccatSensorSerial' => '1.3.6.1.4.1.21239.5.1.7.1.2',
  'ccatSensorName' => '1.3.6.1.4.1.21239.5.1.7.1.3',
  'ccatSensorAvail' => '1.3.6.1.4.1.21239.5.1.7.1.4',
  'ccatSensorAvailDefinition' => 'GEIST-V4-MIB::availability',
  'ccatSensorValue' => '1.3.6.1.4.1.21239.5.1.7.1.5',
  'ccatSensorType' => '1.3.6.1.4.1.21239.5.1.7.1.6',
  'ccatSensorDescription' => '1.3.6.1.4.1.21239.5.1.7.1.7',
  't3hdSensorTable' => '1.3.6.1.4.1.21239.5.1.8',
  't3hdSensorEntry' => '1.3.6.1.4.1.21239.5.1.8.1',
  't3hdSensorIndex' => '1.3.6.1.4.1.21239.5.1.8.1.1',
  't3hdSensorSerial' => '1.3.6.1.4.1.21239.5.1.8.1.2',
  't3hdSensorName' => '1.3.6.1.4.1.21239.5.1.8.1.3',
  't3hdSensorAvail' => '1.3.6.1.4.1.21239.5.1.8.1.4',
  't3hdSensorAvailDefinition' => 'GEIST-V4-MIB::availability',
  't3hdSensorIntName' => '1.3.6.1.4.1.21239.5.1.8.1.5',
  't3hdSensorIntTemp' => '1.3.6.1.4.1.21239.5.1.8.1.6',
  't3hdSensorIntHumidity' => '1.3.6.1.4.1.21239.5.1.8.1.7',
  't3hdSensorIntDewPoint' => '1.3.6.1.4.1.21239.5.1.8.1.8',
  't3hdSensorExtAAvail' => '1.3.6.1.4.1.21239.5.1.8.1.9',
  't3hdSensorExtAAvailDefinition' => 'GEIST-V4-MIB::availability',
  't3hdSensorExtAName' => '1.3.6.1.4.1.21239.5.1.8.1.10',
  't3hdSensorExtATemp' => '1.3.6.1.4.1.21239.5.1.8.1.11',
  't3hdSensorExtBAvail' => '1.3.6.1.4.1.21239.5.1.8.1.12',
  't3hdSensorExtBAvailDefinition' => 'GEIST-V4-MIB::availability',
  't3hdSensorExtBName' => '1.3.6.1.4.1.21239.5.1.8.1.13',
  't3hdSensorExtBTemp' => '1.3.6.1.4.1.21239.5.1.8.1.14',
  'thdSensorTable' => '1.3.6.1.4.1.21239.5.1.9',
  'thdSensorEntry' => '1.3.6.1.4.1.21239.5.1.9.1',
  'thdSensorIndex' => '1.3.6.1.4.1.21239.5.1.9.1.1',
  'thdSensorSerial' => '1.3.6.1.4.1.21239.5.1.9.1.2',
  'thdSensorName' => '1.3.6.1.4.1.21239.5.1.9.1.3',
  'thdSensorAvail' => '1.3.6.1.4.1.21239.5.1.9.1.4',
  'thdSensorAvailDefinition' => 'GEIST-V4-MIB::availability',
  'thdSensorTemp' => '1.3.6.1.4.1.21239.5.1.9.1.5',
  'thdSensorHumidity' => '1.3.6.1.4.1.21239.5.1.9.1.6',
  'thdSensorDewPoint' => '1.3.6.1.4.1.21239.5.1.9.1.7',
  'rpmSensorTable' => '1.3.6.1.4.1.21239.5.1.10',
  'rpmSensorEntry' => '1.3.6.1.4.1.21239.5.1.10.1',
  'rpmSensorIndex' => '1.3.6.1.4.1.21239.5.1.10.1.1',
  'rpmSensorSerial' => '1.3.6.1.4.1.21239.5.1.10.1.2',
  'rpmSensorName' => '1.3.6.1.4.1.21239.5.1.10.1.3',
  'rpmSensorAvail' => '1.3.6.1.4.1.21239.5.1.10.1.4',
  'rpmSensorAvailDefinition' => 'GEIST-V4-MIB::availability',
  'rpmSensorEnergy' => '1.3.6.1.4.1.21239.5.1.10.1.5',
  'rpmSensorVoltage' => '1.3.6.1.4.1.21239.5.1.10.1.6',
  'rpmSensorVoltageMax' => '1.3.6.1.4.1.21239.5.1.10.1.7',
  'rpmSensorVoltageMin' => '1.3.6.1.4.1.21239.5.1.10.1.8',
  'rpmSensorVoltagePeak' => '1.3.6.1.4.1.21239.5.1.10.1.9',
  'rpmSensorCurrent' => '1.3.6.1.4.1.21239.5.1.10.1.10',
  'rpmSensorRealPower' => '1.3.6.1.4.1.21239.5.1.10.1.11',
  'rpmSensorApparentPower' => '1.3.6.1.4.1.21239.5.1.10.1.12',
  'rpmSensorPowerFactor' => '1.3.6.1.4.1.21239.5.1.10.1.13',
  'rpmSensorOutlet1' => '1.3.6.1.4.1.21239.5.1.10.1.14',
  'rpmSensorOutlet1Definition' => 'GEIST-V4-MIB::outletstate',
  'rpmSensorOutlet2' => '1.3.6.1.4.1.21239.5.1.10.1.15',
  'rpmSensorOutlet2Definition' => 'GEIST-V4-MIB::outletstate',
  'a2dSensorTable' => '1.3.6.1.4.1.21239.5.1.11',
  'a2DSensorEntry' => '1.3.6.1.4.1.21239.5.1.11.1',
  'a2dSensorIndex' => '1.3.6.1.4.1.21239.5.1.11.1.1',
  'a2dSensorSerial' => '1.3.6.1.4.1.21239.5.1.11.1.2',
  'a2dSensorName' => '1.3.6.1.4.1.21239.5.1.11.1.3',
  'a2dSensorAvail' => '1.3.6.1.4.1.21239.5.1.11.1.4',
  'a2dSensorAvailDefinition' => 'GEIST-V4-MIB::availability',
  'a2dSensorValue' => '1.3.6.1.4.1.21239.5.1.11.1.5',
  'trap' => '1.3.6.1.4.1.21239.5.1.32767',
  'trapPrefix' => '1.3.6.1.4.1.21239.5.1.32767.0',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'GEIST-V4-MIB'} = {
  'temperatureUnits' => {
    0 => 'F',
    1 => 'C',
  },
  'availability' => {
    0 => 'Unavailable',
    1 => 'Available',
    2 => 'Partially Unavailable',
  },
  'outletstate' => {
    0 => 'off',
    1 => 'on',
  },
};
