package Monitoring::GLPlugin::SNMP::MibsAndOids::KELVINPCOWEBLCPDXMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'KELVIN-PCOWEB-LCP-DX-MIB'} = {
  url => '',
  name => 'KELVIN-PCOWEB-LCP-DX-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'KELVIN-PCOWEB-LCP-DX-MIB'} =
    '1.3.6.1.4.1.9839.2.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'KELVIN-PCOWEB-LCP-DX-MIB'} = {
  'carel' => '1.3.6.1.4.1.9839',
  'systm' => '1.3.6.1.4.1.9839.1',
  'agentRelease' => '1.3.6.1.4.1.9839.1.1',
  'agentCode' => '1.3.6.1.4.1.9839.1.2',
  'instruments' => '1.3.6.1.4.1.9839.2',
  'pCOWebInfo' => '1.3.6.1.4.1.9839.2.0',
  'pCOStatusgroup' => '1.3.6.1.4.1.9839.2.0.10',
  'pCOId1-Status' => '1.3.6.1.4.1.9839.2.0.10.1',
  'pCOId1-StatusDefinition' => {
      0 => "offline",
      1 => "init",
      2 => "online",
  },
  'pCOErrorsNumbergroup' => '1.3.6.1.4.1.9839.2.0.11',
  'pCOId1-ErrorsNumber' => '1.3.6.1.4.1.9839.2.0.11.1',
  'kelvin-pCOWebMIB-LCP-DX' => '1.3.6.1.4.1.9839.2.1',
  'digitalObjects' => '1.3.6.1.4.1.9839.2.1.1',
  'din1' => '1.3.6.1.4.1.9839.2.1.1.1',
  'din2' => '1.3.6.1.4.1.9839.2.1.1.2',
  'din3' => '1.3.6.1.4.1.9839.2.1.1.3',
  'din4' => '1.3.6.1.4.1.9839.2.1.1.4',
  'din5' => '1.3.6.1.4.1.9839.2.1.1.5',
  'din6' => '1.3.6.1.4.1.9839.2.1.1.6',
  'din7' => '1.3.6.1.4.1.9839.2.1.1.7',
  'din8' => '1.3.6.1.4.1.9839.2.1.1.8',
  'din9' => '1.3.6.1.4.1.9839.2.1.1.9',
  'din10' => '1.3.6.1.4.1.9839.2.1.1.10',
  'dobj11' => '1.3.6.1.4.1.9839.2.1.1.11',
  'dobj12' => '1.3.6.1.4.1.9839.2.1.1.12',
  'dobj13' => '1.3.6.1.4.1.9839.2.1.1.13',
  'dobj14' => '1.3.6.1.4.1.9839.2.1.1.14',
  'dobj15' => '1.3.6.1.4.1.9839.2.1.1.15',
  'dobj16' => '1.3.6.1.4.1.9839.2.1.1.16',
  'dout1' => '1.3.6.1.4.1.9839.2.1.1.17',
  'dout2' => '1.3.6.1.4.1.9839.2.1.1.18',
  'dout3' => '1.3.6.1.4.1.9839.2.1.1.19',
  'dout4' => '1.3.6.1.4.1.9839.2.1.1.20',
  'dout5' => '1.3.6.1.4.1.9839.2.1.1.21',
  'dout6' => '1.3.6.1.4.1.9839.2.1.1.22',
  'dout7' => '1.3.6.1.4.1.9839.2.1.1.23',
  'dout8' => '1.3.6.1.4.1.9839.2.1.1.24',
  'dout9' => '1.3.6.1.4.1.9839.2.1.1.25',
  'dout10' => '1.3.6.1.4.1.9839.2.1.1.26',
  'dout11' => '1.3.6.1.4.1.9839.2.1.1.27',
  'dout12' => '1.3.6.1.4.1.9839.2.1.1.28',
  'bms-res-alarm' => '1.3.6.1.4.1.9839.2.1.1.29',
  'al-envelope' => '1.3.6.1.4.1.9839.2.1.1.30',
  'al-start-fail-lock' => '1.3.6.1.4.1.9839.2.1.1.31',
  'mal-start-failure-msk' => '1.3.6.1.4.1.9839.2.1.1.32',
  'mal-discharge-ht' => '1.3.6.1.4.1.9839.2.1.1.33',
  'dobj34' => '1.3.6.1.4.1.9839.2.1.1.34',
  'mal-dp-startup' => '1.3.6.1.4.1.9839.2.1.1.35',
  'mal-dp-lubrification-oil' => '1.3.6.1.4.1.9839.2.1.1.36',
  'mal-b1' => '1.3.6.1.4.1.9839.2.1.1.37',
  'mal-b2' => '1.3.6.1.4.1.9839.2.1.1.38',
  'mal-b3' => '1.3.6.1.4.1.9839.2.1.1.39',
  'mal-b4' => '1.3.6.1.4.1.9839.2.1.1.40',
  'mal-b5' => '1.3.6.1.4.1.9839.2.1.1.41',
  'mal-b6' => '1.3.6.1.4.1.9839.2.1.1.42',
  'mal-b7' => '1.3.6.1.4.1.9839.2.1.1.43',
  'mal-b8' => '1.3.6.1.4.1.9839.2.1.1.44',
  'mal-b9' => '1.3.6.1.4.1.9839.2.1.1.45',
  'mal-b10' => '1.3.6.1.4.1.9839.2.1.1.46',
  'mal-b11' => '1.3.6.1.4.1.9839.2.1.1.47',
  'mal-b12' => '1.3.6.1.4.1.9839.2.1.1.48',
  'analogObjects' => '1.3.6.1.4.1.9839.2.1.2',
  'b1-value' => '1.3.6.1.4.1.9839.2.1.2.1',
  'b2-value' => '1.3.6.1.4.1.9839.2.1.2.2',
  'b3-value' => '1.3.6.1.4.1.9839.2.1.2.3',
  'b4-value' => '1.3.6.1.4.1.9839.2.1.2.4',
  'b5-value' => '1.3.6.1.4.1.9839.2.1.2.5',
  'b6-value' => '1.3.6.1.4.1.9839.2.1.2.6',
  'b7-value' => '1.3.6.1.4.1.9839.2.1.2.7',
  'b8-value' => '1.3.6.1.4.1.9839.2.1.2.8',
  'b9-value' => '1.3.6.1.4.1.9839.2.1.2.9',
  'b10-value' => '1.3.6.1.4.1.9839.2.1.2.10',
  'b11-value' => '1.3.6.1.4.1.9839.2.1.2.11',
  'b12-value' => '1.3.6.1.4.1.9839.2.1.2.12',
  'evap-temp' => '1.3.6.1.4.1.9839.2.1.2.13',
  'cond-temp' => '1.3.6.1.4.1.9839.2.1.2.14',
  'aobj15' => '1.3.6.1.4.1.9839.2.1.2.15',
  'aobj16' => '1.3.6.1.4.1.9839.2.1.2.16',
  'aobj17' => '1.3.6.1.4.1.9839.2.1.2.17',
  'aobj18' => '1.3.6.1.4.1.9839.2.1.2.18',
  'aobj19' => '1.3.6.1.4.1.9839.2.1.2.19',
  'aobj20' => '1.3.6.1.4.1.9839.2.1.2.20',
  'medium-temp-out' => '1.3.6.1.4.1.9839.2.1.2.21',
  'medium-temp-in' => '1.3.6.1.4.1.9839.2.1.2.22',
  'rotor-speed-rps' => '1.3.6.1.4.1.9839.2.1.2.45',
  'motor-current' => '1.3.6.1.4.1.9839.2.1.2.46',
  'aobj47' => '1.3.6.1.4.1.9839.2.1.2.47',
  'setpoint-lcp' => '1.3.6.1.4.1.9839.2.1.2.48',
  'integerObjects' => '1.3.6.1.4.1.9839.2.1.3',
  'rotor-speed-hz' => '1.3.6.1.4.1.9839.2.1.3.1',
  'drive-status' => '1.3.6.1.4.1.9839.2.1.3.2',
  'error-code' => '1.3.6.1.4.1.9839.2.1.3.3',
  'drive-temp' => '1.3.6.1.4.1.9839.2.1.3.4',
  'bus-voltage' => '1.3.6.1.4.1.9839.2.1.3.5',
  'motor-voltage' => '1.3.6.1.4.1.9839.2.1.3.6',
  'power-req-0-1000-after-envelope' => '1.3.6.1.4.1.9839.2.1.3.7',
  'current-hour' => '1.3.6.1.4.1.9839.2.1.3.8',
  'current-minute' => '1.3.6.1.4.1.9839.2.1.3.9',
  'current-month' => '1.3.6.1.4.1.9839.2.1.3.10',
  'current-weekday' => '1.3.6.1.4.1.9839.2.1.3.11',
  'current-year' => '1.3.6.1.4.1.9839.2.1.3.12',
  'on-off-BMS' => '1.3.6.1.4.1.9839.2.1.3.13',
  'envelope-zone' => '1.3.6.1.4.1.9839.2.1.3.14',
  'ht-zone' => '1.3.6.1.4.1.9839.2.1.3.15',
  'cooling-capacity-after-envelope' => '1.3.6.1.4.1.9839.2.1.3.16',
  'valve-steps' => '1.3.6.1.4.1.9839.2.1.3.17',
  'y3-AOut3' => '1.3.6.1.4.1.9839.2.1.3.18',
  'current-day' => '1.3.6.1.4.1.9839.2.1.3.27',
  'fans-speed-percent' => '1.3.6.1.4.1.9839.2.1.3.28',
  'fans-speed-rpm' => '1.3.6.1.4.1.9839.2.1.3.29',
  'evd-valve-opening-percent' => '1.3.6.1.4.1.9839.2.1.3.30',
  'trapObjects' => '1.3.6.1.4.1.9839.2.1.100',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'KELVIN-PCOWEB-LCP-DX-MIB'} = {
};