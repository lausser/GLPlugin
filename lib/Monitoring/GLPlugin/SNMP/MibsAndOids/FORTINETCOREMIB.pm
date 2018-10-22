package Monitoring::GLPlugin::SNMP::MibsAndOids::FORTINETCOREMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'FORTINET-CORE-MIB'} = {
  url => '',
  name => 'FORTINET-CORE-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'FORTINET-CORE-MIB'} =
    '1.3.6.1.4.1.12356.100';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'FORTINET-CORE-MIB'} = {
  fortinet => '1.3.6.1.4.1.12356',
  fnCoreMib => '1.3.6.1.4.1.12356.100',
  fnCommon => '1.3.6.1.4.1.12356.100.1',
  fnSystem => '1.3.6.1.4.1.12356.100.1.1',
  fnSysSerial => '1.3.6.1.4.1.12356.100.1.1.1',
  fnMgmt => '1.3.6.1.4.1.12356.100.1.2',
  fnMgmtLanguage => '1.3.6.1.4.1.12356.100.1.2.1',
  fnMgmtLanguageDefinition => 'FORTINET-CORE-MIB::FnLanguage',
  fnAdmin => '1.3.6.1.4.1.12356.100.1.2.100',
  fnAdminNumber => '1.3.6.1.4.1.12356.100.1.2.100.1',
  fnAdminTable => '1.3.6.1.4.1.12356.100.1.2.100.2',
  fnAdminEntry => '1.3.6.1.4.1.12356.100.1.2.100.2.1',
  fnAdminIndex => '1.3.6.1.4.1.12356.100.1.2.100.2.1.1',
  fnAdminName => '1.3.6.1.4.1.12356.100.1.2.100.2.1.2',
  fnAdminAddrType => '1.3.6.1.4.1.12356.100.1.2.100.2.1.3',
  fnAdminAddr => '1.3.6.1.4.1.12356.100.1.2.100.2.1.4',
  fnAdminMask => '1.3.6.1.4.1.12356.100.1.2.100.2.1.5',
  fnTraps => '1.3.6.1.4.1.12356.100.1.3',
  fnTrapsPrefix => '1.3.6.1.4.1.12356.100.1.3.0',
  fnTrapObjects => '1.3.6.1.4.1.12356.100.1.3.1',
  fnGenTrapMsg => '1.3.6.1.4.1.12356.100.1.3.1.1',
  fnMIBConformance => '1.3.6.1.4.1.12356.100.10',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'FORTINET-CORE-MIB'} = {
  FnIndex => {
  },
  FnBoolState => {
    '1' => 'disabled',
    '2' => 'enabled',
  },
  FnLanguage => {
    '1' => 'english',
    '2' => 'simplifiedChinese',
    '3' => 'japanese',
    '4' => 'korean',
    '5' => 'spanish',
    '6' => 'traditionalChinese',
    '7' => 'french',
    '8' => 'portuguese',
    '255' => 'undefined',
  },
  FnSessionProto => {
    '0' => 'ip',
    '1' => 'icmp',
    '2' => 'igmp',
    '4' => 'ipip',
    '6' => 'tcp',
    '8' => 'egp',
    '12' => 'pup',
    '17' => 'udp',
    '22' => 'idp',
    '41' => 'ipv6',
    '46' => 'rsvp',
    '47' => 'gre',
    '50' => 'esp',
    '51' => 'ah',
    '89' => 'ospf',
    '103' => 'pim',
    '108' => 'comp',
    '255' => 'raw',
  },
};
