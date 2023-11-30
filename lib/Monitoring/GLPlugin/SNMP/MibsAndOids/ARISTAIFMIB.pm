package Monitoring::GLPlugin::SNMP::MibsAndOids::ARISTAIFMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'ARISTA-IF-MIB'} = {
  url => '',
  name => 'ARISTA-IF-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'ARISTA-IF-MIB'} =
  '1.3.6.1.4.1.30065.3.15';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'ARISTA-IF-MIB'} = {
  'aristaIfMIB' => '1.3.6.1.4.1.30065.3.15',
  'aristaIf' => '1.3.6.1.4.1.30065.3.15.1',
  'aristaIfTable' => '1.3.6.1.4.1.30065.3.15.1.1',
  'aristaIfEntry' => '1.3.6.1.4.1.30065.3.15.1.1.1',
  'aristaIfCounterLastUpdated' => '1.3.6.1.4.1.30065.3.15.1.1.1.1',
  #'aristaIfCounterLastUpdatedDefinition' => 'SNMPv2-SMI::TimeTicks',
  'aristaIfRateInterval' => '1.3.6.1.4.1.30065.3.15.1.1.1.2',
  #'aristaIfRateIntervalDefinition' => 'SNMPv2-SMI::TimeTicks',
  'aristaIfInPktRate' => '1.3.6.1.4.1.30065.3.15.1.1.1.3',
  #'aristaIfInPktRateDefinition' => 'SNMPv2-SMI::Gauge32',
  'aristaIfOutPktRate' => '1.3.6.1.4.1.30065.3.15.1.1.1.4',
  #'aristaIfOutPktRateDefinition' => 'SNMPv2-SMI::Gauge32',
  'aristaIfInOctetRate' => '1.3.6.1.4.1.30065.3.15.1.1.1.5',
  #'aristaIfInOctetRateDefinition' => 'HCNUM-TC::CounterBasedGauge64',
  'aristaIfOutOctetRate' => '1.3.6.1.4.1.30065.3.15.1.1.1.6',
  #'aristaIfOutOctetRateDefinition' => 'HCNUM-TC::CounterBasedGauge64',
  'aristaIfRatesLastUpdated' => '1.3.6.1.4.1.30065.3.15.1.1.1.7',
  #'aristaIfRatesLastUpdatedDefinition' => 'SNMPv2-SMI::TimeTicks',
  'aristaIfOperStatusChanges' => '1.3.6.1.4.1.30065.3.15.1.1.1.8',
  #'aristaIfOperStatusChangesDefinition' => 'SNMPv2-SMI::Counter32',
  'aristaIfInAclDrops' => '1.3.6.1.4.1.30065.3.15.1.1.1.9',
  #'aristaIfInAclDropsDefinition' => 'SNMPv2-SMI::Counter32',
  'aristaIfErrDisabledReason' => '1.3.6.1.4.1.30065.3.15.1.1.1.10',
  'aristaIfDot1xEapolPortDrops' => '1.3.6.1.4.1.30065.3.15.1.1.1.11',
  #'aristaIfDot1xEapolPortDropsDefinition' => 'SNMPv2-SMI::Counter32',
  'aristaIfDot1xEapolHostDrops' => '1.3.6.1.4.1.30065.3.15.1.1.1.12',
  #'aristaIfDot1xEapolHostDropsDefinition' => 'SNMPv2-SMI::Counter32',
  'aristaIfDot1xMbaHostDrops' => '1.3.6.1.4.1.30065.3.15.1.1.1.13',
  #'aristaIfDot1xMbaHostDropsDefinition' => 'SNMPv2-SMI::Counter32',
  'aristaIfConformance' => '1.3.6.1.4.1.30065.3.15.2',
  'aristaIfGroups' => '1.3.6.1.4.1.30065.3.15.2.1',
  'aristaIfCompliances' => '1.3.6.1.4.1.30065.3.15.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'ARISTA-IF-MIB'} = {
};
