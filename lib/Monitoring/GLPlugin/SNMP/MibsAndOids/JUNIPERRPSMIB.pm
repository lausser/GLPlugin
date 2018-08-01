package Monitoring::GLPlugin::SNMP::MibsAndOids::JUNIPERRPSMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'JUNIPER-RPS-MIB'} = {
  url => '',
  name => 'JUNIPER-RPS-MIB',
};

#$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'JUNIPER-RPS-MIB'} =

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'JUNIPER-RPS-MIB'} = {
  jnxRPSMIBObjects => '1.3.6.1.4.1.2636.3.40.1.6.1',
  jnxRPSVersionTable => '1.3.6.1.4.1.2636.3.40.1.6.1.1',
  jnxRPSVersionEntry => '1.3.6.1.4.1.2636.3.40.1.6.1.1.1',
  jnxRPSSerialNumber => '1.3.6.1.4.1.2636.3.40.1.6.1.1.1.1',
  jnxRPSModel => '1.3.6.1.4.1.2636.3.40.1.6.1.1.1.2',
  jnxRPSFirmwareVersion => '1.3.6.1.4.1.2636.3.40.1.6.1.1.1.3',
  jnxRPSUBootVersion => '1.3.6.1.4.1.2636.3.40.1.6.1.1.1.4',
  jnxRPSStatusTable => '1.3.6.1.4.1.2636.3.40.1.6.1.2',
  jnxRPSStatusEntry => '1.3.6.1.4.1.2636.3.40.1.6.1.2.1',
  jnxRPSFanStatus => '1.3.6.1.4.1.2636.3.40.1.6.1.2.1.1',
  jnxRPSFanStatusDefinition => 'JUNIPER-RPS-MIB::JnxRPSStatus',
  jnxRPSSystemStatus => '1.3.6.1.4.1.2636.3.40.1.6.1.2.1.2',
  jnxRPSSystemStatusDefinition => 'JUNIPER-RPS-MIB::JnxRPSStatus',
  jnxRPSPowerSupplyTable => '1.3.6.1.4.1.2636.3.40.1.6.1.3',
  jnxRPSPowerSupplyEntry => '1.3.6.1.4.1.2636.3.40.1.6.1.3.1',
  jnxRPSPowerSupplyIndex => '1.3.6.1.4.1.2636.3.40.1.6.1.3.1.1',
  jnxRPSPowerSupplySlotId => '1.3.6.1.4.1.2636.3.40.1.6.1.3.1.2',
  jnxRPSPowerSupplyStatus => '1.3.6.1.4.1.2636.3.40.1.6.1.3.1.3',
  jnxRPSPowerSupplyDescription => '1.3.6.1.4.1.2636.3.40.1.6.1.3.1.4',
  jnxRPSLedPortStatusTable => '1.3.6.1.4.1.2636.3.40.1.6.1.4',
  jnxRPSLedPortStatusEntry => '1.3.6.1.4.1.2636.3.40.1.6.1.4.1',
  jnxRPSLedPortIndex => '1.3.6.1.4.1.2636.3.40.1.6.1.4.1.1',
  jnxRPSLedPortStatus => '1.3.6.1.4.1.2636.3.40.1.6.1.4.1.2',
  jnxRPSPortStatusTable => '1.3.6.1.4.1.2636.3.40.1.6.1.5',
  jnxRPSPortStatusEntry => '1.3.6.1.4.1.2636.3.40.1.6.1.5.1',
  jnxRPSPortIndex => '1.3.6.1.4.1.2636.3.40.1.6.1.5.1.1',
  jnxRPSPortId => '1.3.6.1.4.1.2636.3.40.1.6.1.5.1.2',
  jnxRPSPortStatus => '1.3.6.1.4.1.2636.3.40.1.6.1.5.1.3',
  jnxRPSPortPriority => '1.3.6.1.4.1.2636.3.40.1.6.1.5.1.4',
  jnxRPSPortPowerRequested => '1.3.6.1.4.1.2636.3.40.1.6.1.5.1.5',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'JUNIPER-RPS-MIB'} = {
  JnxRPSStatus => {
    '0' => 'green',
    '1' => 'red',
    '2' => 'amber',
    '3' => 'green-blink',
    '4' => 'red-blink',
    '5' => 'amber-blink',
    '6' => 'off',
  },
};
