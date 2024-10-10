package Monitoring::GLPlugin::SNMP::MibsAndOids::LIEBERTGPAGENTMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'LIEBERT-GP-AGENT-MIB'} = {
  url => '',
  name => 'LIEBERT-GP-AGENT-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'LIEBERT-GP-AGENT-MIB'} =
  # is not found in snmpwalk '1.3.6.1.4.1.476.1.42.1.2.1';
  # 1.3.6.1.4.1.476.1.42.2.1

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'LIEBERT-GP-AGENT-MIB'} = {
  'liebertAgentModule' => '1.3.6.1.4.1.476.1.42.1.2.1',
  'lgpAgentIdentManufacturer' => '1.3.6.1.4.1.476.1.42.2.1.1',
  'lgpAgentIdentModel' => '1.3.6.1.4.1.476.1.42.2.1.2',
  'lgpAgentIdentFirmwareVersion' => '1.3.6.1.4.1.476.1.42.2.1.3',
  'lgpAgentIdentSerialNumber' => '1.3.6.1.4.1.476.1.42.2.1.4',
  'lgpAgentIdentPartNumber' => '1.3.6.1.4.1.476.1.42.2.1.5',
  'lgpAgentConnectedDeviceCount' => '1.3.6.1.4.1.476.1.42.2.1.6',
  'lgpAgentEventNotifications' => '1.3.6.1.4.1.476.1.42.2.3.0',
  'lgpAgentEventNotificationsLegacy' => '1.3.6.1.4.1.476.1.42.2.3.0.0',
  'lgpAgentManagedDeviceTable' => '1.3.6.1.4.1.476.1.42.2.4.2',
  'lgpAgentManagedDeviceEntry' => '1.3.6.1.4.1.476.1.42.2.4.2.1',
  'lgpAgentDeviceIndex' => '1.3.6.1.4.1.476.1.42.2.4.2.1.1',
  'lgpAgentDeviceId' => '1.3.6.1.4.1.476.1.42.2.4.2.1.2',
  'lgpAgentDeviceManufacturer' => '1.3.6.1.4.1.476.1.42.2.4.2.1.3',
  'lgpAgentDeviceModel' => '1.3.6.1.4.1.476.1.42.2.4.2.1.4',
  'lgpAgentDeviceFirmwareVersion' => '1.3.6.1.4.1.476.1.42.2.4.2.1.5',
  'lgpAgentDeviceUnitNumber' => '1.3.6.1.4.1.476.1.42.2.4.2.1.6',
  'lgpAgentDeviceSerialNumber' => '1.3.6.1.4.1.476.1.42.2.4.2.1.7',
  'lgpAgentDeviceManufactureDate' => '1.3.6.1.4.1.476.1.42.2.4.2.1.8',
  'lgpAgentDeviceServiceContact' => '1.3.6.1.4.1.476.1.42.2.4.2.1.9',
  'lgpAgentDeviceServicePhoneNumber' => '1.3.6.1.4.1.476.1.42.2.4.2.1.10',
  'lgpAgentDeviceServiceAddrLine1' => '1.3.6.1.4.1.476.1.42.2.4.2.1.11',
  'lgpAgentDeviceServiceAddrLine2' => '1.3.6.1.4.1.476.1.42.2.4.2.1.12',
  'lgpAgentDeviceServiceAddrLine3' => '1.3.6.1.4.1.476.1.42.2.4.2.1.13',
  'lgpAgentDeviceServiceAddrLine4' => '1.3.6.1.4.1.476.1.42.2.4.2.1.14',
  'lgpAgentDeviceUnitName' => '1.3.6.1.4.1.476.1.42.2.4.2.1.15',
  'lgpAgentDeviceSiteIdentifier' => '1.3.6.1.4.1.476.1.42.2.4.2.1.16',
  'lgpAgentDeviceTagNumber' => '1.3.6.1.4.1.476.1.42.2.4.2.1.17',
  'lgpAgentDeviceOrderLine1' => '1.3.6.1.4.1.476.1.42.2.4.2.1.18',
  'lgpAgentDeviceOrderLine2' => '1.3.6.1.4.1.476.1.42.2.4.2.1.19',
  'lgpAgentReboot' => '1.3.6.1.4.1.476.1.42.2.5.1',
  'lgpAgentTelnetEnabled' => '1.3.6.1.4.1.476.1.42.2.5.2',
  'lgpAgentTelnetEnabledDefinition' => 'LIEBERT-GP-AGENT-MIB::lgpAgentTelnetEnabled',
  'lgpAgentVelocityServerEnabled' => '1.3.6.1.4.1.476.1.42.2.5.3',
  'lgpAgentVelocityServerEnabledDefinition' => 'LIEBERT-GP-AGENT-MIB::lgpAgentVelocityServerEnabled',
  'lgpAgentWebServerMode' => '1.3.6.1.4.1.476.1.42.2.5.4',
  'lgpAgentWebServerModeDefinition' => 'LIEBERT-GP-AGENT-MIB::lgpAgentWebServerMode',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'LIEBERT-GP-AGENT-MIB'} = {
  'lgpAgentWebServerMode' => {
    '0' => 'disabled',
    '1' => 'http',
    '2' => 'https',
  },
  'lgpAgentVelocityServerEnabled' => {
    '1' => 'yes',
    '2' => 'no',
  },
  'lgpAgentTelnetEnabled' => {
    '1' => 'yes',
    '2' => 'no',
  },
};
