package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOFIREWALLMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-FIREWALL-MIB'} = {
  url => '',
  name => 'CISCO-FIREWALL-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-FIREWALL-MIB'} = {
  'cfwConnectionStatTable' => '1.3.6.1.4.1.9.9.147.1.2.2.2',
  'cfwConnectionStatEntry' => '1.3.6.1.4.1.9.9.147.1.2.2.2.1',
  'cfwConnectionStatService' => '1.3.6.1.4.1.9.9.147.1.2.2.2.1.1',
  'cfwConnectionStatServiceDefinition' => 'CISCO-FIREWALL-MIB::Services',
  'cfwConnectionStatType' => '1.3.6.1.4.1.9.9.147.1.2.2.2.1.2',
  'cfwConnectionStatDescription' => '1.3.6.1.4.1.9.9.147.1.2.2.2.1.3',
  'cfwConnectionStatCount' => '1.3.6.1.4.1.9.9.147.1.2.2.2.1.4',
  'cfwConnectionStatValue' => '1.3.6.1.4.1.9.9.147.1.2.2.2.1.5',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-FIREWALL-MIB'} = {
  'Services' => {
    '1' => 'otherFWService',
    '2' => 'fileXferFtp',
    '3' => 'fileXferTftp',
    '4' => 'fileXferFtps',
    '5' => 'loginTelnet',
    '6' => 'loginRlogin',
    '7' => 'loginTelnets',
    '8' => 'remoteExecSunRPC',
    '9' => 'remoteExecMSRPC',
    '10' => 'remoteExecRsh',
    '11' => 'remoteExecXserver',
    '12' => 'webHttp',
    '13' => 'webHttps',
    '14' => 'mailSmtp',
    '15' => 'multimediaStreamworks',
    '16' => 'multimediaH323',
    '17' => 'multimediaNetShow',
    '18' => 'multimediaVDOLive',
    '19' => 'multimediaRealAV',
    '20' => 'multimediaRTSP',
    '21' => 'dbOracle',
    '22' => 'dbMSsql',
    '23' => 'contInspProgLang',
    '24' => 'contInspUrl',
    '25' => 'directoryNis',
    '26' => 'directoryDns',
    '27' => 'directoryNetbiosns',
    '28' => 'directoryNetbiosdgm',
    '29' => 'directoryNetbiosssn',
    '30' => 'directoryWins',
    '31' => 'qryWhois',
    '32' => 'qryFinger',
    '33' => 'qryIdent',
    '34' => 'fsNfsStatus',
    '35' => 'fsNfs',
    '36' => 'fsCifs',
    '37' => 'protoIcmp',
    '38' => 'protoTcp',
    '39' => 'protoUdp',
    '40' => 'protoIp',
    '41' => 'protoSnmp',
  },
};

1;

__END__
