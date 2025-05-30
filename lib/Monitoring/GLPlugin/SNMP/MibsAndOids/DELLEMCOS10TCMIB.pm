package Monitoring::GLPlugin::SNMP::MibsAndOids::DELLEMCOS10TCMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'DELLEMC-OS10-TC-MIB'} = {
  url => '',
  name => 'DELLEMC-OS10-TC-MIB',
};

#$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'DELLEMC-OS10-TC-MIB'} =

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'DELLEMC-OS10-TC-MIB'} = {
  'os10TextualConventionsMib' => '1.3.6.1.4.1.674.11000.5000.100.1',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'DELLEMC-OS10-TC-MIB'} = {
  'Os10SystemCardType' => {
    '0' => 'notPresent',
    '1' => 's6000on',
    '2' => 's4048on',
    '3' => 's4048Ton',
    '4' => 's3048on',
    '5' => 's6010on',
    '6' => 's4148Fon',
    '7' => 's4128Fon',
    '8' => 's4148Ton',
    '9' => 's4128Ton',
    '10' => 's4148FEon',
    '11' => 's4148Uon',
    '12' => 's4200on',
    '13' => 'mx5108Non',
    '14' => 'mx9116Non',
    '15' => 's5148Fon',
    '16' => 'z9100on',
    '17' => 's4248FBon',
    '18' => 's4248FBLon',
    '19' => 's4112Fon',
    '20' => 's4112Ton',
    '21' => 'z9264Fon',
    '22' => 'z9232Fon',
    '23' => 's5212Fon',
    '24' => 's5224Fon',
    '25' => 's5232Fon',
    '26' => 's5248Fon',
    '27' => 's5296Fon',
    '28' => 'z9332Fon',
    '29' => 'n3248TEon',
    '9999' => 'unknown',
  },
  'Os10InterfaceType' => {
    '1' => 'ethernetManagement',
    '2' => 'ethernet100M',
    '3' => 'ethernet1GB',
    '4' => 'ethernet1GBCopper',
    '5' => 'ethernet10GB',
    '6' => 'ethernet10GBCopper',
    '7' => 'ethernet25GB',
    '8' => 'ethernet50GB',
    '9' => 'ethernet40GB',
    '10' => 'ethernet100GB',
    '11' => 'fc',
  },
  'Os10ChassisDefType' => {
    '1' => 's6000on',
    '2' => 's4048on',
    '3' => 's4048Ton',
    '4' => 's3048on',
    '5' => 's6010on',
    '6' => 's4148Fon',
    '7' => 's4128Fon',
    '8' => 's4148Ton',
    '9' => 's4128Ton',
    '10' => 's4148FEon',
    '11' => 's4148Uon',
    '12' => 's4200on',
    '13' => 'mx5108Non',
    '14' => 'mx9116Non',
    '15' => 's5148Fon',
    '16' => 'z9100on',
    '17' => 's4248FBon',
    '18' => 's4248FBLon',
    '19' => 's4112Fon',
    '20' => 's4112Ton',
    '21' => 'z9264Fon',
    '22' => 'z9224Fon',
    '23' => 's5212Fon',
    '24' => 's5224Fon',
    '25' => 's5232Fon',
    '26' => 's5248Fon',
    '27' => 's5296Fon',
    '28' => 'z9332Fon',
    '29' => 'n3248TEon',
    '9999' => 'unknown',
  },
  'Os10CmnOperStatus' => {
    '1' => 'up',
    '2' => 'down',
    '3' => 'testing',
    '4' => 'unknown',
    '5' => 'dormant',
    '6' => 'notPresent',
    '7' => 'lowerLayerDown',
    '8' => 'failed',
  },
  'Os10DeviceType' => {
    '1' => 'chassis',
    '2' => 'stack',
    '3' => 'rpm',
    '4' => 'supervisor',
    '5' => 'linecard',
  },
  'Os10CardOperStatus' => {
    '1' => 'ready',
    '2' => 'cardMisMatch',
    '3' => 'cardProblem',
    '4' => 'diagMode',
    '5' => 'cardAbsent',
    '6' => 'offline',
  },
};
