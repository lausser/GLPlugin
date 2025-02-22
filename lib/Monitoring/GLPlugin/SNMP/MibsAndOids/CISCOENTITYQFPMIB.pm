package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOENTITYQFPMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-ENTITY-QFP-MIB'} = {
  url => '',
  name => 'CISCO-ENTITY-QFP-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-ENTITY-QFP-MIB'} =
  '1.3.6.1.4.1.9.9.715';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-ENTITY-QFP-MIB'} = {
  'ciscoEntityQfpMIB' => '1.3.6.1.4.1.9.9.715',
  'ciscoEntityQfpMIBNotifs' => '1.3.6.1.4.1.9.9.715.0',
  'ciscoEntityQfpMIBObjects' => '1.3.6.1.4.1.9.9.715.1',
  'ciscoEntityQfp' => '1.3.6.1.4.1.9.9.715.1.1',
  'ceqfpSystemTable' => '1.3.6.1.4.1.9.9.715.1.1.1',
  'ceqfpSystemEntry' => '1.3.6.1.4.1.9.9.715.1.1.1.1',
  'ceqfpSystemTrafficDirection' => '1.3.6.1.4.1.9.9.715.1.1.1.1.1',
  'ceqfpSystemTrafficDirectionDefinition' => 'CISCO-ENTITY-QFP-MIB::ceqfpSystemTrafficDirection',
  'ceqfpSystemState' => '1.3.6.1.4.1.9.9.715.1.1.1.1.2',
  'ceqfpSystemStateDefinition' => 'CISCO-ENTITY-QFP-MIB::ceqfpSystemState',
  'ceqfpNumberSystemLoads' => '1.3.6.1.4.1.9.9.715.1.1.1.1.3',
  #'ceqfpNumberSystemLoadsDefinition' => 'SNMPv2-SMI::Counter32',
  'ceqfpSystemLastLoadTime' => '1.3.6.1.4.1.9.9.715.1.1.1.1.4',
  #'ceqfpSystemLastLoadTimeDefinition' => 'SNMPv2-TC::DateAndTime',
  'ceqfpFiveSecondUtilAlgo' => '1.3.6.1.4.1.9.9.715.1.1.2',
  'ceqfpFiveSecondUtilAlgoDefinition' => 'CISCO-ENTITY-QFP-MIB::ceqfpFiveSecondUtilAlgo',
  'ceqfpOneMinuteUtilAlgo' => '1.3.6.1.4.1.9.9.715.1.1.3',
  'ceqfpOneMinuteUtilAlgoDefinition' => 'CISCO-ENTITY-QFP-MIB::ceqfpOneMinuteUtilAlgo',
  'ceqfpFiveMinutesUtilAlgo' => '1.3.6.1.4.1.9.9.715.1.1.4',
  'ceqfpFiveMinutesUtilAlgoDefinition' => 'CISCO-ENTITY-QFP-MIB::ceqfpFiveMinutesUtilAlgo',
  'ceqfpSixtyMinutesUtilAlgo' => '1.3.6.1.4.1.9.9.715.1.1.5',
  'ceqfpSixtyMinutesUtilAlgoDefinition' => 'CISCO-ENTITY-QFP-MIB::ceqfpSixtyMinutesUtilAlgo',
  'ceqfpUtilizationTable' => '1.3.6.1.4.1.9.9.715.1.1.6',
  'ceqfpUtilizationEntry' => '1.3.6.1.4.1.9.9.715.1.1.6.1',
  'ceqfpUtilTimeInterval' => '1.3.6.1.4.1.9.9.715.1.1.6.1.1',
  'ceqfpUtilTimeIntervalDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpTimeInterval',
  'ceqfpUtilInputPriorityPktRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.2',
  #'ceqfpUtilInputPriorityPktRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpPacketRate',
  'ceqfpUtilInputPriorityBitRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.3',
  #'ceqfpUtilInputPriorityBitRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpBitRate',
  'ceqfpUtilInputNonPriorityPktRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.4',
  #'ceqfpUtilInputNonPriorityPktRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpPacketRate',
  'ceqfpUtilInputNonPriorityBitRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.5',
  #'ceqfpUtilInputNonPriorityBitRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpBitRate',
  'ceqfpUtilInputTotalPktRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.6',
  #'ceqfpUtilInputTotalPktRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpPacketRate',
  'ceqfpUtilInputTotalBitRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.7',
  #'ceqfpUtilInputTotalBitRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpBitRate',
  'ceqfpUtilOutputPriorityPktRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.8',
  #'ceqfpUtilOutputPriorityPktRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpPacketRate',
  'ceqfpUtilOutputPriorityBitRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.9',
  #'ceqfpUtilOutputPriorityBitRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpBitRate',
  'ceqfpUtilOutputNonPriorityPktRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.10',
  #'ceqfpUtilOutputNonPriorityPktRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpPacketRate',
  'ceqfpUtilOutputNonPriorityBitRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.11',
  #'ceqfpUtilOutputNonPriorityBitRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpBitRate',
  'ceqfpUtilOutputTotalPktRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.12',
  #'ceqfpUtilOutputTotalPktRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpPacketRate',
  'ceqfpUtilOutputTotalBitRate' => '1.3.6.1.4.1.9.9.715.1.1.6.1.13',
  #'ceqfpUtilOutputTotalBitRateDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpBitRate',
  'ceqfpUtilProcessingLoad' => '1.3.6.1.4.1.9.9.715.1.1.6.1.14',
  'ceqfpMemoryResourceTable' => '1.3.6.1.4.1.9.9.715.1.1.7',
  'ceqfpMemoryResourceEntry' => '1.3.6.1.4.1.9.9.715.1.1.7.1',
  'ceqfpMemoryResType' => '1.3.6.1.4.1.9.9.715.1.1.7.1.1',
  'ceqfpMemoryResTypeDefinition' => 'CISCO-ENTITY-QFP-MIB::CiscoQfpMemoryResource',
  'ceqfpMemoryResTotal' => '1.3.6.1.4.1.9.9.715.1.1.7.1.2',
  #'ceqfpMemoryResTotalDefinition' => 'SNMPv2-SMI::Gauge32',
  'ceqfpMemoryResInUse' => '1.3.6.1.4.1.9.9.715.1.1.7.1.3',
  #'ceqfpMemoryResInUseDefinition' => 'SNMPv2-SMI::Gauge32',
  'ceqfpMemoryResFree' => '1.3.6.1.4.1.9.9.715.1.1.7.1.4',
  #'ceqfpMemoryResFreeDefinition' => 'SNMPv2-SMI::Gauge32',
  'ceqfpMemoryResLowFreeWatermark' => '1.3.6.1.4.1.9.9.715.1.1.7.1.5',
  #'ceqfpMemoryResLowFreeWatermarkDefinition' => 'SNMPv2-SMI::Gauge32',
  'ceqfpMemoryResRisingThreshold' => '1.3.6.1.4.1.9.9.715.1.1.7.1.6',
  'ceqfpMemoryResFallingThreshold' => '1.3.6.1.4.1.9.9.715.1.1.7.1.7',
  'ceqfpMemoryResTotalOvrflw' => '1.3.6.1.4.1.9.9.715.1.1.7.1.8',
  #'ceqfpMemoryResTotalOvrflwDefinition' => 'SNMPv2-SMI::Gauge32',
  'ceqfpMemoryHCResTotal' => '1.3.6.1.4.1.9.9.715.1.1.7.1.9',
  #'ceqfpMemoryHCResTotalDefinition' => 'HCNUM-TC::CounterBasedGauge64',
  'ceqfpMemoryResInUseOvrflw' => '1.3.6.1.4.1.9.9.715.1.1.7.1.10',
  #'ceqfpMemoryResInUseOvrflwDefinition' => 'SNMPv2-SMI::Gauge32',
  'ceqfpMemoryHCResInUse' => '1.3.6.1.4.1.9.9.715.1.1.7.1.11',
  #'ceqfpMemoryHCResInUseDefinition' => 'HCNUM-TC::CounterBasedGauge64',
  'ceqfpMemoryResFreeOvrflw' => '1.3.6.1.4.1.9.9.715.1.1.7.1.12',
  #'ceqfpMemoryResFreeOvrflwDefinition' => 'SNMPv2-SMI::Gauge32',
  'ceqfpMemoryHCResFree' => '1.3.6.1.4.1.9.9.715.1.1.7.1.13',
  #'ceqfpMemoryHCResFreeDefinition' => 'HCNUM-TC::CounterBasedGauge64',
  'ceqfpMemoryResLowFreeWatermarkOvrflw' => '1.3.6.1.4.1.9.9.715.1.1.7.1.14',
  #'ceqfpMemoryResLowFreeWatermarkOvrflwDefinition' => 'SNMPv2-SMI::Gauge32',
  'ceqfpMemoryHCResLowFreeWatermark' => '1.3.6.1.4.1.9.9.715.1.1.7.1.15',
  #'ceqfpMemoryHCResLowFreeWatermarkDefinition' => 'HCNUM-TC::CounterBasedGauge64',
  'ceqfpThroughputTable' => '1.3.6.1.4.1.9.9.715.1.1.8',
  'ceqfpThroughputEntry' => '1.3.6.1.4.1.9.9.715.1.1.8.1',
  'ceqfpThroughputLicensedBW' => '1.3.6.1.4.1.9.9.715.1.1.8.1.1',
  #'ceqfpThroughputLicensedBWDefinition' => 'SNMPv2-SMI::Counter64',
  'ceqfpThroughputLevel' => '1.3.6.1.4.1.9.9.715.1.1.8.1.2',
  'ceqfpThroughputLevelDefinition' => 'CISCO-ENTITY-QFP-MIB::ceqfpThroughputLevel',
  'ceqfpThroughputInterval' => '1.3.6.1.4.1.9.9.715.1.1.8.1.3',
  'ceqfpThroughputThreshold' => '1.3.6.1.4.1.9.9.715.1.1.8.1.4',
  'ceqfpThroughputAvgRate' => '1.3.6.1.4.1.9.9.715.1.1.8.1.5',
  #'ceqfpThroughputAvgRateDefinition' => 'SNMPv2-SMI::Counter64',
  'ciscoEntityQfpNotif' => '1.3.6.1.4.1.9.9.715.1.2',
  'ceqfpMemoryResThreshNotifEnabled' => '1.3.6.1.4.1.9.9.715.1.2.1',
  'ceqfpMemoryResThreshNotifEnabledDefinition' => 'SNMPv2-TC::TruthValue',
  'ceqfpMemoryResCurrentRisingThresh' => '1.3.6.1.4.1.9.9.715.1.2.2',
  'ceqfpMemoryResCurrentFallingThresh' => '1.3.6.1.4.1.9.9.715.1.2.3',
  'ceqfpThroughputNotifEnabled' => '1.3.6.1.4.1.9.9.715.1.2.4',
  'ceqfpThroughputNotifEnabledDefinition' => 'SNMPv2-TC::TruthValue',
  'ciscoEntityQfpMIBConform' => '1.3.6.1.4.1.9.9.715.2',
  'ciscoEntityQfpMIBCompliances' => '1.3.6.1.4.1.9.9.715.2.1',
  'ciscoEntityQfpMIBGroups' => '1.3.6.1.4.1.9.9.715.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-ENTITY-QFP-MIB'} = {
  'ceqfpOneMinuteUtilAlgo' => {
    '1' => 'unknown',
    '2' => 'fiveSecSMA',
  },
  'CiscoQfpTimeInterval' => {
    '1' => 'fiveSeconds',
    '2' => 'oneMinute',
    '3' => 'fiveMinutes',
    '4' => 'sixtyMinutes',
  },
  'ceqfpFiveMinutesUtilAlgo' => {
    '1' => 'unknown',
    '2' => 'fiveSecSMA',
  },
  'ceqfpSystemTrafficDirection' => {
    '1' => 'none',
    '2' => 'ingress',
    '3' => 'egress',
    '4' => 'both',
  },
  'CiscoQfpMemoryResource' => {
    '1' => 'dram',
  },
  'ceqfpFiveSecondUtilAlgo' => {
    '1' => 'unknown',
    '2' => 'fiveSecSample',
  },
  'ceqfpThroughputLevel' => {
    '1' => 'normal',
    '2' => 'warning',
    '3' => 'exceed',
  },
  'ceqfpSixtyMinutesUtilAlgo' => {
    '1' => 'unknown',
    '2' => 'fiveSecSMA',
  },
  'ceqfpSystemState' => {
    '1' => 'unknown',
    '2' => 'reset',
    '3' => 'init',
    '4' => 'active',
    '5' => 'activeSolo',
    '6' => 'standby',
    '7' => 'hotStandby',
  },
  'CiscoQfpTimeInterval' => {
    '1' => 'fiveSeconds',
    '2' => 'oneMinute',
    '3' => 'fiveMinutes',
    '4' => 'sixtyMinutes',
  },
  'CiscoQfpMemoryResource' => {
    '0' => 'scheise',
    '1' => 'dram',
  },
};
