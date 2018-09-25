package Monitoring::GLPlugin::SNMP::MibsAndOids::THREEPARMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'THREEPARMIB'} = {
  url => '',
  name => 'THREEPARMIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'THREEPARMIB'} =
    '1.3.6.1.4.1.12925';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'THREEPARMIB'} = {
  threepar => '1.3.6.1.4.1.12925',
  inserv => '1.3.6.1.4.1.12925.1',
  inservAgentCaps => '1.3.6.1.4.1.12925.1.4',
  inservAgentCapability => '1.3.6.1.4.1.12925.1.4.1',
  alertTable => '1.3.6.1.4.1.12925.1.7',
  alertEntry => '1.3.6.1.4.1.12925.1.7.1',
  index => '1.3.6.1.4.1.12925.1.7.1.1',
  severity => '1.3.6.1.4.1.12925.1.7.1.2',
  severityDefinition => 'ThreeParMIB::severity',
  timeOccurred => '1.3.6.1.4.1.12925.1.7.1.3',
  nodeID => '1.3.6.1.4.1.12925.1.7.1.4',
  component => '1.3.6.1.4.1.12925.1.7.1.5',
  details => '1.3.6.1.4.1.12925.1.7.1.6',
  id => '1.3.6.1.4.1.12925.1.7.1.7',
  messageCode => '1.3.6.1.4.1.12925.1.7.1.8',
  state => '1.3.6.1.4.1.12925.1.7.1.9',
  stateDefinition => 'ThreeParMIB::state',
  serialNumber => '1.3.6.1.4.1.12925.1.7.1.10',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'THREEPARMIB'} = {
  state => {
    '0' => 'undefined',
    '1' => 'new',
    '2' => 'acknowledged',
    '3' => 'fixed',
    '4' => 'removed',
    '5' => 'autofixed',
  },
  severity => {
    '0' => 'fatal',
    '1' => 'critical',
    '2' => 'major',
    '3' => 'minor',
    '4' => 'degraded',
    '5' => 'info',
    '6' => 'debug',
  },
};
