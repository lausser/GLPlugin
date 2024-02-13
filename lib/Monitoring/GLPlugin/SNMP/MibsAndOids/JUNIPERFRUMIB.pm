package Monitoring::GLPlugin::SNMP::MibsAndOids::JUNIPERFRUMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'JUNIPER-FRU-MIB'} = {
  url => '',
  name => 'JUNIPER-FRU-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'JUNIPER-FRU-MIB'} =
  '1.3.6.1.4.1.2636.3.74.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'JUNIPER-FRU-MIB'} = {
  'jnxFruMib' => '1.3.6.1.4.1.2636.3.74.1',
  'jnxFruCfg' => '1.3.6.1.4.1.2636.3.74.1.1',
  'jnxFruCfgTable' => '1.3.6.1.4.1.2636.3.74.1.1.1',
  'jnxFruCfgEntry' => '1.3.6.1.4.1.2636.3.74.1.1.1.1',
  'jnxFruCfgContentsIndex' => '1.3.6.1.4.1.2636.3.74.1.1.1.1.1',
  'jnxFruCfgL1Index' => '1.3.6.1.4.1.2636.3.74.1.1.1.1.2',
  'jnxFruCfgL2Index' => '1.3.6.1.4.1.2636.3.74.1.1.1.1.3',
  'jnxFruCfgL3Index' => '1.3.6.1.4.1.2636.3.74.1.1.1.1.4',
  'jnxFruCfgType' => '1.3.6.1.4.1.2636.3.74.1.1.1.1.5',
  'jnxFruCfgAdminState' => '1.3.6.1.4.1.2636.3.74.1.1.1.1.6',
  'jnxFruCfgAdminStateDefinition' => 'JUNIPER-FRU-MIB::JnxFruAdminStates',
  'jnxFruCfgOperState' => '1.3.6.1.4.1.2636.3.74.1.1.1.1.7',
  'jnxFruCfgOperStateDefinition' => 'JUNIPER-FRU-MIB::JnxFruOperStates',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'JUNIPER-FRU-MIB'} = {
  'JnxFruOperStates' => {
    '1' => 'unEquipped',
    '2' => 'init',
    '3' => 'normal',
    '4' => 'mismatched',
    '5' => 'fault',
    '6' => 'swul',
  },
  'JnxFruAdminStates' => {
    '1' => 'inService',
    '2' => 'outOfService',
  },
  'JnxFruOperStates' => {
    '1' => 'unEquipped',
    '2' => 'init',
    '3' => 'normal',
    '4' => 'mismatched',
    '5' => 'fault',
    '6' => 'swul',
  },
  'JnxFruAdminStates' => {
    '1' => 'inService',
    '2' => 'outOfService',
  },
};
