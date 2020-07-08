package Monitoring::GLPlugin::SNMP::MibsAndOids::LEFTHANDNETWORKSNSMSTATUSMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'LEFTHAND-NETWORKS-NSM-STATUS-MIB'} = {
  url => '',
  name => 'LEFTHAND-NETWORKS-NSM-STATUS-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'LEFTHAND-NETWORKS-NSM-STATUS-MIB'} =
  '1.3.6.1.4.1.9804.3.1.1.2.99';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'LEFTHAND-NETWORKS-NSM-STATUS-MIB'} = {
  'lhnNsmStatusModule' => '1.3.6.1.4.1.9804.2.1.99',
  'lhnNsmStatusModuleConformance' => '1.3.6.1.4.1.9804.2.1.99.1',
  'lhnNsmStatusModuleCompliances' => '1.3.6.1.4.1.9804.2.1.99.1.1',
  'lhnNsmStatusModuleGroups' => '1.3.6.1.4.1.9804.2.1.99.1.2',
  'status' => '1.3.6.1.4.1.9804.3.1.1.2.99.1',
  'statusDefinition' => 'LEFTHAND-NETWORKS-NSM-STATUS-MIB::status',
  'statusMessage' => '1.3.6.1.4.1.9804.3.1.1.2.99.2',
  'statusSNMPD' => '1.3.6.1.4.1.9804.3.1.1.2.99.3',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'LEFTHAND-NETWORKS-NSM-STATUS-MIB'} = {
  'status' => {
    '1' => 'online',
    '2' => 'offline',
  },
};
