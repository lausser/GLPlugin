package Monitoring::GLPlugin::SNMP::MibsAndOids::SNMPV2TC;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'SNMPv2-TC'} = {
  url => '',
  name => 'SNMPv2-TC',
};

#$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'SNMPv2-TC'} =

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'SNMPv2-TC'} = {
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'SNMPv2-TC'} = {
  'RowStatus' => {
    '1' => 'active',
    '2' => 'notInService',
    '3' => 'notReady',
    '4' => 'createAndGo',
    '5' => 'createAndWait',
    '6' => 'destroy',
  },
  'StorageType' => {
    '1' => 'other',
    '2' => 'volatile',
    '3' => 'nonVolatile',
    '4' => 'permanent',
    '5' => 'readOnly',
  },
  'TruthValue' => {
    '1' => 'true',
    '2' => 'false',
  },
};
