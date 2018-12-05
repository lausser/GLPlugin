package Monitoring::GLPlugin::SNMP::MibsAndOids::IBMTS4300MIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'IBM-TS4300-MIB'} = {
  url => '',
  name => 'IBM-TS4300-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'IBM-TS4300-MIB'} =
    '1.3.6.1.4.1.2.6.263.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'IBM-TS4300-MIB'} = {
  ibm => '1.3.6.1.4.1.2',
  ibmProd => '1.3.6.1.4.1.2.6',
  ibmTS4300 => '1.3.6.1.4.1.2.6.263',
  ibmTS4300MIB => '1.3.6.1.4.1.2.6.263.1',
  ibmTS4300MIBTraps => '1.3.6.1.4.1.2.6.263.1.0',
  ibmTS4300MIBAdmin => '1.3.6.1.4.1.2.6.263.1.1',
  ibmTS4300MIBObjects => '1.3.6.1.4.1.2.6.263.1.2',
  ibmTS4300MIBGroupMTMNLSN => '1.3.6.1.4.1.2.6.263.1.2.11',
  ibmTS4300MIBObjectsMTMNLSN => '1.3.6.1.4.1.2.6.263.1.2.11.1',
  ibmTS4300MIBGroupEvent => '1.3.6.1.4.1.2.6.263.1.2.21',
  ibmTS4300MIBObjectsEventCode => '1.3.6.1.4.1.2.6.263.1.2.21.1',
  ibmTS4300MIBObjectsEventDescription => '1.3.6.1.4.1.2.6.263.1.2.21.2',
  ibmTS4300MIBObjectsEventType => '1.3.6.1.4.1.2.6.263.1.2.21.3',
  ibmTS4300MIBObjectsEventTypeDefinition => 'IBM-TS4300-MIB::ibmTS4300MIBObjectsEventType',
  ibmTS4300MIBObjectsAdditionalInfo => '1.3.6.1.4.1.2.6.263.1.2.21.4',
  ibmTS4300MIBConformance => '1.3.6.1.4.1.2.6.263.1.3',
  ibmTS4300MIBCompliances => '1.3.6.1.4.1.2.6.263.1.3.1',
  ibmTS4300MIBGroups => '1.3.6.1.4.1.2.6.263.1.3.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'IBM-TS4300-MIB'} = {
  ibmTS4300MIBObjectsEventType => {
    '0' => 'unknown',
    '1' => 'error',
    '2' => 'warning',
    '3' => 'configuration',
    '4' => 'information',
  },
};
