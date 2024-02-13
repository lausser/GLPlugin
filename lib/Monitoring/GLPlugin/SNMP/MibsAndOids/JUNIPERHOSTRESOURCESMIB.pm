package Monitoring::GLPlugin::SNMP::MibsAndOids::JUNIPERHOSTRESOURCESMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'JUNIPER-HOSTRESOURCES-MIB'} = {
  url => '',
  name => 'JUNIPER-HOSTRESOURCES-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'JUNIPER-HOSTRESOURCES-MIB'} =
  '1.3.6.1.4.1.2636.3.31';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'JUNIPER-HOSTRESOURCES-MIB'} = {
  'jnxHostResourcesMIB' => '1.3.6.1.4.1.2636.3.31',
  'jnxHrStorage' => '1.3.6.1.4.1.2636.3.31.1',
  'jnxHrStorageTable' => '1.3.6.1.4.1.2636.3.31.1.1',
  'jnxHrStorageEntry' => '1.3.6.1.4.1.2636.3.31.1.1.1',
  'jnxHrStoragePercentUsed' => '1.3.6.1.4.1.2636.3.31.1.1.1.1',
  #'jnxHrStoragePercentUsedDefinition' => 'SNMPv2-SMI::Gauge32',
  'jnxHrSystem' => '1.3.6.1.4.1.2636.3.31.2',
  'jnxHrSystemOpenFiles' => '1.3.6.1.4.1.2636.3.31.2.1',
  #'jnxHrSystemOpenFilesDefinition' => 'SNMPv2-SMI::Gauge32',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'JUNIPER-HOSTRESOURCES-MIB'} = {
};
