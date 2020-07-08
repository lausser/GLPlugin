package Monitoring::GLPlugin::SNMP::MibsAndOids::LEFTHANDNETWORKSNSMDNSMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'LEFTHAND-NETWORKS-NSM-DNS-MIB'} = {
  url => '',
  name => 'LEFTHAND-NETWORKS-NSM-DNS-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'LEFTHAND-NETWORKS-NSM-DNS-MIB'} =
  '1.3.6.1.4.1.9804.3.1.1.2.3';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'LEFTHAND-NETWORKS-NSM-DNS-MIB'} = {
  'lhnNsmDNSModule' => '1.3.6.1.4.1.9804.2.1.4',
  'lhnNsmDNSModuleConformance' => '1.3.6.1.4.1.9804.2.1.4.1',
  'lhnNsmDNSModuleCompliances' => '1.3.6.1.4.1.9804.2.1.4.1.1',
  'lhnNsmDNSModuleGroups' => '1.3.6.1.4.1.9804.2.1.4.1.2',
  'dnsNameserverCount' => '1.3.6.1.4.1.9804.3.1.1.2.3.1',
  'dnsMode' => '1.3.6.1.4.1.9804.3.1.1.2.3.2',
  'dnsModeDefinition' => 'LEFTHAND-NETWORKS-NSM-DNS-MIB::dnsMode',
  'dnsNameserverTable' => '1.3.6.1.4.1.9804.3.1.1.2.3.3',
  'dnsNameserverEntry' => '1.3.6.1.4.1.9804.3.1.1.2.3.3.1',
  'dnsIndex' => '1.3.6.1.4.1.9804.3.1.1.2.3.3.1.1',
  'dnsServer' => '1.3.6.1.4.1.9804.3.1.1.2.3.3.1.2',
  'dnsRowStatus' => '1.3.6.1.4.1.9804.3.1.1.2.3.3.1.3',
  'dnsDomainName' => '1.3.6.1.4.1.9804.3.1.1.2.3.4',
  'dnsSuffixCount' => '1.3.6.1.4.1.9804.3.1.1.2.3.5',
  'dnsSuffixTable' => '1.3.6.1.4.1.9804.3.1.1.2.3.6',
  'dnsSuffixEntry' => '1.3.6.1.4.1.9804.3.1.1.2.3.6.1',
  'dnsSuffixIndex' => '1.3.6.1.4.1.9804.3.1.1.2.3.6.1.1',
  'dnsSuffix' => '1.3.6.1.4.1.9804.3.1.1.2.3.6.1.2',
  'dnsSuffixRowStatus' => '1.3.6.1.4.1.9804.3.1.1.2.3.6.1.3',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'LEFTHAND-NETWORKS-NSM-DNS-MIB'} = {
  'dnsMode' => {
    '1' => 'static',
    '2' => 'auto',
  },
};
