package Monitoring::GLPlugin::SNMP::MibsAndOids::SYNOLOGYSERVICESMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'SYNOLOGY-SERVICES-MIB'} = {
  url => '',
  name => 'SYNOLOGY-SERVICES-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'SYNOLOGY-SERVICES-MIB'} =
  '1.3.6.1.4.1.6574.6';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'SYNOLOGY-SERVICES-MIB'} = {
  'synology' => '1.3.6.1.4.1.6574',
  'synologyService' => '1.3.6.1.4.1.6574.6',
  'synologyServiceTable' => '1.3.6.1.4.1.6574.6.1',
  'serviceEntry' => '1.3.6.1.4.1.6574.6.1.1',
  'serviceInfoIndex' => '1.3.6.1.4.1.6574.6.1.1.1',
  'serviceName' => '1.3.6.1.4.1.6574.6.1.1.2',
  'serviceUsers' => '1.3.6.1.4.1.6574.6.1.1.3',
  'synologyServiceConformance' => '1.3.6.1.4.1.6574.6.2',
  'synologyServiceCompliances' => '1.3.6.1.4.1.6574.6.2.1',
  'synologyServiceGroups' => '1.3.6.1.4.1.6574.6.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'SYNOLOGY-SERVICES-MIB'} = {
};
