package Monitoring::GLPlugin::SNMP::MibsAndOids::UCDDLMODMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'UCD-DLMOD-MIB'} = {
  url => '',
  name => 'UCD-DLMOD-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'UCD-DLMOD-MIB'} =
  '1.3.6.1.4.1.2021.13.14';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'UCD-DLMOD-MIB'} = {
  'ucdDlmodMIB' => '1.3.6.1.4.1.2021.13.14',
  'dlmodNextIndex' => '1.3.6.1.4.1.2021.13.14.1',
  'dlmodTable' => '1.3.6.1.4.1.2021.13.14.2',
  'dlmodEntry' => '1.3.6.1.4.1.2021.13.14.2.1',
  'dlmodIndex' => '1.3.6.1.4.1.2021.13.14.2.1.1',
  'dlmodName' => '1.3.6.1.4.1.2021.13.14.2.1.2',
  #'dlmodNameDefinition' => 'SNMPv2-TC::DisplayString',
  'dlmodPath' => '1.3.6.1.4.1.2021.13.14.2.1.3',
  #'dlmodPathDefinition' => 'SNMPv2-TC::DisplayString',
  'dlmodError' => '1.3.6.1.4.1.2021.13.14.2.1.4',
  #'dlmodErrorDefinition' => 'SNMPv2-TC::DisplayString',
  'dlmodStatus' => '1.3.6.1.4.1.2021.13.14.2.1.5',
  'dlmodStatusDefinition' => 'UCD-DLMOD-MIB::dlmodStatus',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'UCD-DLMOD-MIB'} = {
  'dlmodStatus' => {
    '1' => 'loaded',
    '2' => 'unloaded',
    '3' => 'error',
    '4' => 'load',
    '5' => 'unload',
    '6' => 'create',
    '7' => 'delete',
  },
};
