package Monitoring::GLPlugin::SNMP::MibsAndOids::LEFTHANDNETWORKSNSMNETWORKMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'LEFTHAND-NETWORKS-NSM-NETWORK-MIB'} = {
  url => '',
  name => 'LEFTHAND-NETWORKS-NSM-NETWORK-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'LEFTHAND-NETWORKS-NSM-NETWORK-MIB'} =
  '1.3.6.1.4.1.9804.3.1.1.2.2';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'LEFTHAND-NETWORKS-NSM-NETWORK-MIB'} = {
  'lhnNsmNetworkModule' => '1.3.6.1.4.1.9804.2.1.3',
  'lhnNsmNetworkModuleConformance' => '1.3.6.1.4.1.9804.2.1.3.1',
  'lhnNsmNetworkModuleCompliances' => '1.3.6.1.4.1.9804.2.1.3.1.1',
  'lhnNsmNetworkModuleGroups' => '1.3.6.1.4.1.9804.2.1.3.1.2',
  'networkDeviceCount' => '1.3.6.1.4.1.9804.3.1.1.2.2.1',
  'networkDeviceTable' => '1.3.6.1.4.1.9804.3.1.1.2.2.2',
  'networkDeviceEntry' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1',
  'networkDeviceIndex' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1.1',
  'networkDeviceName' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1.6',
  'networkDeviceIpAddress' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1.7',
  'networkDeviceMask' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1.8',
  'networkDeviceDefaultGateway' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1.9',
  'networkDeviceMode' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1.10',
  'networkDeviceModeDefinition' => 'LEFTHAND-NETWORKS-NSM-NETWORK-MIB::networkDeviceMode',
  'networkDeviceStatus' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1.11',
  'networkDeviceRowStatus' => '1.3.6.1.4.1.9804.3.1.1.2.2.2.1.99',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'LEFTHAND-NETWORKS-NSM-NETWORK-MIB'} = {
  'networkDeviceMode' => {
    '1' => 'disabled',
    '2' => 'auto',
    '3' => 'static',
    '4' => 'slave',
  },
};
