package Monitoring::GLPlugin::SNMP::MibsAndOids::HPICFCHASSIS;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'HP-ICF-CHASSIS'} = {
  url => '',
  name => 'HP-ICF-CHASSIS',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'HP-ICF-CHASSIS'} =
  '1.3.6.1.4.1.11.2.14.11.1.2.6';
# sensor-table, because lots of oids will be superseeded by std. entity-mib
# However, the hpicfSensorTable will still be valid.

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'HP-ICF-CHASSIS'} = {
  hpicfChassisMib => '1.3.6.1.4.1.11.2.14.10.2.3',
  hpicfChassisConformance => '1.3.6.1.4.1.11.2.14.10.2.3.1',
  hpicfChassisCompliances => '1.3.6.1.4.1.11.2.14.10.2.3.1.1',
  hpicfChassisGroups => '1.3.6.1.4.1.11.2.14.10.2.3.1.2',
  hpicfChassis => '1.3.6.1.4.1.11.2.14.11.1.2',
  hpicfChassisId => '1.3.6.1.4.1.11.2.14.11.1.2.1',
  hpicfChassisNumSlots => '1.3.6.1.4.1.11.2.14.11.1.2.2',
  hpicfSlotTable => '1.3.6.1.4.1.11.2.14.11.1.2.3',
  hpicfSlotEntry => '1.3.6.1.4.1.11.2.14.11.1.2.3.1',
  hpicfSlotIndex => '1.3.6.1.4.1.11.2.14.11.1.2.3.1.1',
  hpicfSlotObjectId => '1.3.6.1.4.1.11.2.14.11.1.2.3.1.2',
  hpicfSlotLastChange => '1.3.6.1.4.1.11.2.14.11.1.2.3.1.3',
  hpicfSlotDescr => '1.3.6.1.4.1.11.2.14.11.1.2.3.1.4',
  hpicfEntityTable => '1.3.6.1.4.1.11.2.14.11.1.2.4',
  hpicfEntityEntry => '1.3.6.1.4.1.11.2.14.11.1.2.4.1',
  hpicfEntityIndex => '1.3.6.1.4.1.11.2.14.11.1.2.4.1.1',
  hpicfEntityFunction => '1.3.6.1.4.1.11.2.14.11.1.2.4.1.2',
  hpicfEntityObjectId => '1.3.6.1.4.1.11.2.14.11.1.2.4.1.3',
  hpicfEntityDescr => '1.3.6.1.4.1.11.2.14.11.1.2.4.1.4',
  hpicfEntityTimestamp => '1.3.6.1.4.1.11.2.14.11.1.2.4.1.5',
  hpicfSlotMapTable => '1.3.6.1.4.1.11.2.14.11.1.2.5',
  hpicfSlotMapEntry => '1.3.6.1.4.1.11.2.14.11.1.2.5.1',
  hpicfSlotMapSlot => '1.3.6.1.4.1.11.2.14.11.1.2.5.1.1',
  hpicfSlotMapEntity => '1.3.6.1.4.1.11.2.14.11.1.2.5.1.2',
  hpicfSensorTable => '1.3.6.1.4.1.11.2.14.11.1.2.6',
  hpicfSensorEntry => '1.3.6.1.4.1.11.2.14.11.1.2.6.1',
  hpicfSensorIndex => '1.3.6.1.4.1.11.2.14.11.1.2.6.1.1',
  hpicfSensorObjectId => '1.3.6.1.4.1.11.2.14.11.1.2.6.1.2',
  hpicfSensorNumber => '1.3.6.1.4.1.11.2.14.11.1.2.6.1.3',
  hpicfSensorStatus => '1.3.6.1.4.1.11.2.14.11.1.2.6.1.4',
  hpicfSensorStatusDefinition => 'HP-ICF-CHASSIS::hpicfSensorStatus',
  hpicfSensorWarnings => '1.3.6.1.4.1.11.2.14.11.1.2.6.1.5',
  hpicfSensorFailures => '1.3.6.1.4.1.11.2.14.11.1.2.6.1.6',
  hpicfSensorDescr => '1.3.6.1.4.1.11.2.14.11.1.2.6.1.7',
  hpicfChassisAddrTable => '1.3.6.1.4.1.11.2.14.11.1.2.7',
  hpicfChassisAddrEntry => '1.3.6.1.4.1.11.2.14.11.1.2.7.1',
  hpicfChasAddrType => '1.3.6.1.4.1.11.2.14.11.1.2.7.1.1',
  hpicfChasAddrTypeDefinition => 'HP-ICF-CHASSIS::hpicfChasAddrType',
  hpicfChasAddrAddress => '1.3.6.1.4.1.11.2.14.11.1.2.7.1.2',
  hpicfChasAddrEntity => '1.3.6.1.4.1.11.2.14.11.1.2.7.1.3',
  hpChassisTemperature => '1.3.6.1.4.1.11.2.14.11.1.2.8',
  hpSystemAirTempTable => '1.3.6.1.4.1.11.2.14.11.1.2.8.1',
  hpSystemAirTempEntry => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1',
  hpSystemAirSensor => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.1',
  hpSystemAirName => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.2',
  hpSystemAirCurrentTemp => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.3',
  hpSystemAirMaxTemp => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.4',
  hpSystemAirMinTemp => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.5',
  hpSystemAirOverTemp => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.6',
  hpSystemAirOverTempDefinition => 'HP-ICF-CHASSIS::hpSystemAirOverTemp',
  hpSystemAirThresholdTemp => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.7',
  hpSystemAirAvgTemp => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.8',
  hpSystemAirEntPhysicalIndex => '1.3.6.1.4.1.11.2.14.11.1.2.8.1.1.9',
  hpicfFanTrayType => '1.3.6.1.4.1.11.2.14.11.1.2.9',
  hpicfFanTrayTypeDefinition => 'HP-ICF-CHASSIS::hpicfFanTrayType',
  hpicfOpacityShieldInstalled => '1.3.6.1.4.1.11.2.14.11.1.2.10',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'HP-ICF-CHASSIS'} = {
  hpicfFanTrayType => {
    '1' => 'standard',
    '2' => 'highPerformance',
  },
  hpicfSensorStatus => {
    '1' => 'unknown',
    '2' => 'bad',
    '3' => 'warning',
    '4' => 'good',
    '5' => 'notPresent',
  },
  hpicfChasAddrType => {
    '1' => 'ipAddr',
    '2' => 'ipxAddr',
    '3' => 'macAddr',
  },
  hpSystemAirOverTemp => {
    '1' => 'yes',
    '2' => 'no',
  },
};
