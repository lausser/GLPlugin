package Monitoring::GLPlugin::SNMP::MibsAndOids::LEFTHANDNETWORKSNSMNTPMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'LEFTHAND-NETWORKS-NSM-NTP-MIB'} = {
  url => '',
  name => 'LEFTHAND-NETWORKS-NSM-NTP-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'LEFTHAND-NETWORKS-NSM-NTP-MIB'} =
  '1.3.6.1.4.1.9804.3.1.1.2.5';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'LEFTHAND-NETWORKS-NSM-NTP-MIB'} = {
  'lhnNsmNTPModule' => '1.3.6.1.4.1.9804.2.1.6',
  'lhnNsmNTPModuleConformance' => '1.3.6.1.4.1.9804.2.1.6.1',
  'lhnNsmNTPModuleCompliances' => '1.3.6.1.4.1.9804.2.1.6.1.1',
  'lhnNsmNTPModuleGroups' => '1.3.6.1.4.1.9804.2.1.6.1.2',
  'ntpCount' => '1.3.6.1.4.1.9804.3.1.1.2.5.1',
  'ntpTable' => '1.3.6.1.4.1.9804.3.1.1.2.5.2',
  'ntpEntry' => '1.3.6.1.4.1.9804.3.1.1.2.5.2.1',
  'ntpIndex' => '1.3.6.1.4.1.9804.3.1.1.2.5.2.1.1',
  'ntpPreferred' => '1.3.6.1.4.1.9804.3.1.1.2.5.2.1.2',
  'ntpServer' => '1.3.6.1.4.1.9804.3.1.1.2.5.2.1.3',
  'ntpRowStatus' => '1.3.6.1.4.1.9804.3.1.1.2.5.2.1.4',
  'timeGMTTime' => '1.3.6.1.4.1.9804.3.1.1.2.5.7',
  'timeTimeZone' => '1.3.6.1.4.1.9804.3.1.1.2.5.8',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'LEFTHAND-NETWORKS-NSM-NTP-MIB'} = {
};
