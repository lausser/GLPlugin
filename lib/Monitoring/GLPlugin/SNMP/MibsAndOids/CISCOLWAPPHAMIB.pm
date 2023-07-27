package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOLWAPPHAMIB;

#  -- CISCO-LWAPP-HA-MIB.my :
#  -- Jan 2012, Gayathri
#  --
#  -- Copyright (c) 2007, 2014-2015 by Cisco Systems, Inc.
#         LAST-UPDATED    "201201051150Z"
#  ...
#          REVISION      "201201241150Z"
#          DESCRIPTION
#                  "Initial version of this MIB module. "
#          ::= { ciscoMgmt 198888 }
#
#  ...und irgendwann taucht dann das hier auf. Einfach so.
#  Sowas kommt zufällig ans Tageslicht, weil ein check_nwc_health-Anwender
#  seinen WLC von 8.5.135.0 auf Version 8.10.121.0 updatet und dadurch
#  1.3.6.1.4.1.9.9.198888 durch 1.3.6.1.4.1.9.9.843 ersetzt wurde.
#
#  -- CISCO-LWAPP-HA-MIB.my :
#  -- Jan 2012, Gayathri        <--- Pappnase
#  --
#  -- Copyright (c) 2017-2018 by Cisco Systems, Inc.
#      LAST-UPDATED    "201703140000Z"
#  ...
#      REVISION        "201703140000Z"
#      DESCRIPTION
#          "Initial version of this MIB module."
#      ::= { ciscoMgmt 843 }
#

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-LWAPP-HA-MIB'} = {
  url => '',
  name => 'CISCO-LWAPP-HA-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-LWAPP-HA-MIB::2012'} =
    '1.3.6.1.4.1.9.9.198888';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-LWAPP-HA-MIB::2012'} = {
  ciscoLwappHaMIB => '1.3.6.1.4.1.9.9.198888',
  ciscoLwappHaMIBObjects => '1.3.6.1.4.1.9.9.198888.0',
  ciscoLwappHaGlobalConfig => '1.3.6.1.4.1.9.9.198888.0.1',
  cLHaApSsoConfig => '1.3.6.1.4.1.9.9.198888.0.1.1',
  cLHaPeerIpAddressType => '1.3.6.1.4.1.9.9.198888.0.1.2',
  cLHaPeerIpAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaPeerIpAddress => '1.3.6.1.4.1.9.9.198888.0.1.3',
  cLHaPeerIpAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaPeerIpAddressType)',
  cLHaServicePortPeerIpAddressType => '1.3.6.1.4.1.9.9.198888.0.1.4',
  cLHaServicePortPeerIpAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaServicePortPeerIpAddress => '1.3.6.1.4.1.9.9.198888.0.1.5',
  cLHaServicePortPeerIpAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaServicePortPeerIpAddressType)',
  cLHaServicePortPeerIpNetMaskType => '1.3.6.1.4.1.9.9.198888.0.1.6',
  cLHaServicePortPeerIpNetMaskTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaServicePortPeerIpNetMask => '1.3.6.1.4.1.9.9.198888.0.1.7',
  cLHaServicePortPeerIpNetMaskDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaServicePortPeerIpNetMaskType)',
  cLHaRedundancyIpAddressType => '1.3.6.1.4.1.9.9.198888.0.1.8',
  cLHaRedundancyIpAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaRedundancyIpAddress => '1.3.6.1.4.1.9.9.198888.0.1.9',
  cLHaRedundancyIpAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaRedundancyIpAddressType)',
  cLHaPeerMacAddress => '1.3.6.1.4.1.9.9.198888.0.1.10',
  cLHaVirtualMacAddress => '1.3.6.1.4.1.9.9.198888.0.1.11',
  cLHaPrimaryUnit => '1.3.6.1.4.1.9.9.198888.0.1.12',
  cLHaPrimaryUnitDefinition => 'SNMPv2-TC-v1-MIB::TruthValue',
  cLHaLinkEncryption => '1.3.6.1.4.1.9.9.198888.0.1.13',
  cLHaNetworkFailOver => '1.3.6.1.4.1.9.9.198888.0.1.14',
  cLHaNetworkFailOverDefinition => 'SNMPv2-TC-v1-MIB::TruthValue',
  cLHaRFStatusUnitIp => '1.3.6.1.4.1.9.9.198888.0.1.15',
  cLHaKATimeout => '1.3.6.1.4.1.9.9.198888.0.1.16',
  cLHaKARetryCount => '1.3.6.1.4.1.9.9.198888.0.1.17',
  cLHaGwRetryCount => '1.3.6.1.4.1.9.9.198888.0.1.18',
  cLHaPeerSearchTimeout => '1.3.6.1.4.1.9.9.198888.0.1.19',
  ciscoLwappHaNetworkConfig => '1.3.6.1.4.1.9.9.198888.0.2',
  cLHaNetworkRoutePeerConfigTable => '1.3.6.1.4.1.9.9.198888.0.2.1',
  cLHaNetworkRoutePeerConfigEntry => '1.3.6.1.4.1.9.9.198888.0.2.1.1',
  cLHaNetworkRoutePeerIPAddressType => '1.3.6.1.4.1.9.9.198888.0.2.1.1.1',
  cLHaNetworkRoutePeerIPAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaNetworkRoutePeerIPAddress => '1.3.6.1.4.1.9.9.198888.0.2.1.1.2',
  cLHaNetworkRoutePeerIPAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaNetworkRoutePeerIPAddressType)',
  cLHaNetworkRoutePeerIPNetmaskType => '1.3.6.1.4.1.9.9.198888.0.2.1.1.3',
  cLHaNetworkRoutePeerIPNetmaskTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaNetworkRoutePeerIPNetmask => '1.3.6.1.4.1.9.9.198888.0.2.1.1.4',
  cLHaNetworkRoutePeerIPNetmaskDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaNetworkRoutePeerIPNetmaskType)',
  cLHaNetworkRoutePeerGatewayType => '1.3.6.1.4.1.9.9.198888.0.2.1.1.5',
  cLHaNetworkRoutePeerGatewayTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaNetworkRoutePeerGateway => '1.3.6.1.4.1.9.9.198888.0.2.1.1.6',
  cLHaNetworkRoutePeerGatewayDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaNetworkRoutePeerGatewayType)',
  cLHaNetworkRoutePeerTransferStatus => '1.3.6.1.4.1.9.9.198888.0.2.1.1.7',
  cLHaNetworkRoutePeerTransferStatusDefinition => 'CISCO-LWAPP-HA-MIB::cLHaNetworkRoutePeerTransferStatus',
  cLHaNetworkRoutePeerRowStatus => '1.3.6.1.4.1.9.9.198888.0.2.1.1.8',
  ciscoLwappHaMIBNotifs => '1.3.6.1.4.1.9.9.198888.0.3',
  ciscoLwappHaNotificationVariable => '1.3.6.1.4.1.9.9.198888.0.4',
  cLHaSecondaryControllerUsageTrapType => '1.3.6.1.4.1.9.9.198888.0.4.1',
  cLHaSecondaryControllerUsageTrapTypeDefinition => 'CISCO-LWAPP-HA-MIB::cLHaSecondaryControllerUsageTrapType',
  cLHaSecondaryControllerUsageDayCounter => '1.3.6.1.4.1.9.9.198888.0.4.2',
  cLHaBulkSyncCompleteEventStr => '1.3.6.1.4.1.9.9.198888.0.4.3',
  cLHaPeerHotStandbyEventStr => '1.3.6.1.4.1.9.9.198888.0.4.4',
  ciscoLwappHaPeerStatisticsVariable => '1.3.6.1.4.1.9.9.198888.0.5',
  cLHaSystemStatistics => '1.3.6.1.4.1.9.9.198888.0.5.1',
  cLHaCpuStatistics => '1.3.6.1.4.1.9.9.198888.0.5.1.1',
  cLHaAllCpuUsage => '1.3.6.1.4.1.9.9.198888.0.5.1.1.1',
  cLHaPowerSupplyStatistics => '1.3.6.1.4.1.9.9.198888.0.5.1.2',
  cLHaPowerSupply1Present => '1.3.6.1.4.1.9.9.198888.0.5.1.2.1',
  cLHaPowerSupply1PresentDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPowerSupply1Present',
  cLHaPowerSupply1Operational => '1.3.6.1.4.1.9.9.198888.0.5.1.2.2',
  cLHaPowerSupply1OperationalDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPowerSupply1Operational',
  cLHaPowerSupply2Present => '1.3.6.1.4.1.9.9.198888.0.5.1.2.3',
  cLHaPowerSupply2PresentDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPowerSupply2Present',
  cLHaPowerSupply2Operational => '1.3.6.1.4.1.9.9.198888.0.5.1.2.4',
  cLHaPowerSupply2OperationalDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPowerSupply2Operational',
  cLHaMemoryStatistics => '1.3.6.1.4.1.9.9.198888.0.5.1.3',
  cLHaTotalSystemMemory => '1.3.6.1.4.1.9.9.198888.0.5.1.3.1',
  cLHaFreeSystemMemory => '1.3.6.1.4.1.9.9.198888.0.5.1.3.2',
  cLHaUsedSystemMemory => '1.3.6.1.4.1.9.9.198888.0.5.1.3.3',
  cLHaAllocatedFromRtos => '1.3.6.1.4.1.9.9.198888.0.5.1.3.4',
  cLHaChunksFree => '1.3.6.1.4.1.9.9.198888.0.5.1.3.5',
  cLHaMmappedRegions => '1.3.6.1.4.1.9.9.198888.0.5.1.3.6',
  cLHaSpaceInMmappedRegions => '1.3.6.1.4.1.9.9.198888.0.5.1.3.7',
  cLHaTotalAllocatedSpace => '1.3.6.1.4.1.9.9.198888.0.5.1.3.8',
  cLHaTotalNotInUseSpace => '1.3.6.1.4.1.9.9.198888.0.5.1.3.9',
  cLHaTopMostReleasableSpace => '1.3.6.1.4.1.9.9.198888.0.5.1.3.10',
  cLHaTotalAllocatedInclMmap => '1.3.6.1.4.1.9.9.198888.0.5.1.3.11',
  cLHaTotalUsedInclMmap => '1.3.6.1.4.1.9.9.198888.0.5.1.3.12',
  cLHaTotalFreeInclMmap => '1.3.6.1.4.1.9.9.198888.0.5.1.3.13',
  ciscoLwappHaStatisticsVariable => '1.3.6.1.4.1.9.9.198888.0.6',
  cLHaAvgPeerReachLatency => '1.3.6.1.4.1.9.9.198888.0.6.1',
  cLHaAvgGwReachLatency => '1.3.6.1.4.1.9.9.198888.0.6.2',
  cLHaBulkSyncStatus => '1.3.6.1.4.1.9.9.198888.0.6.3',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-LWAPP-HA-MIB::2012'} = {
  cLHaSecondaryControllerUsageTrapType => {
    '1' => 'usageStart',
    '2' => 'usageComplete',
    '3' => 'overUsage',
  },
  cLHaPowerSupply1Present => {
    '0' => 'false',
    '1' => 'true',
  },
  cLHaPowerSupply1Operational => {
    '0' => 'false',
    '1' => 'true',
  },
  cLHaPowerSupply2Present => {
    '0' => 'false',
    '1' => 'true',
  },
  cLHaPowerSupply2Operational => {
    '0' => 'false',
    '1' => 'true',
  },
  cLHaNetworkRoutePeerTransferStatus => {
    '1' => 'initiate',
    '2' => 'inProgress',
    '3' => 'success',
    '4' => 'failure',
    '5' => 'timeout',
  },
};


$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-LWAPP-HA-MIB::2017'} =
    '1.3.6.1.4.1.9.9.843';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-LWAPP-HA-MIB::2017'} = {
  ciscoLwappHaMIB => '1.3.6.1.4.1.9.9.843',
  ciscoLwappHaMIBNotifs => '1.3.6.1.4.1.9.9.843.0',
  ciscoLwappHaMIBObjects => '1.3.6.1.4.1.9.9.843.1',
  ciscoLwappHaGlobalConfig => '1.3.6.1.4.1.9.9.843.1.1',
  cLHaApSsoConfig => '1.3.6.1.4.1.9.9.843.1.1.1',
  cLHaPeerIpAddressType => '1.3.6.1.4.1.9.9.843.1.1.2',
  cLHaPeerIpAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaPeerIpAddress => '1.3.6.1.4.1.9.9.843.1.1.3',
  cLHaPeerIpAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaPeerIpAddressType)',
  cLHaServicePortPeerIpAddressType => '1.3.6.1.4.1.9.9.843.1.1.4',
  cLHaServicePortPeerIpAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaServicePortPeerIpAddress => '1.3.6.1.4.1.9.9.843.1.1.5',
  cLHaServicePortPeerIpAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaServicePortPeerIpAddressType)',
  cLHaServicePortPeerIpNetMaskType => '1.3.6.1.4.1.9.9.843.1.1.6',
  cLHaServicePortPeerIpNetMaskTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaServicePortPeerIpNetMask => '1.3.6.1.4.1.9.9.843.1.1.7',
  cLHaServicePortPeerIpNetMaskDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaServicePortPeerIpNetMaskType)',
  cLHaRedundancyIpAddressType => '1.3.6.1.4.1.9.9.843.1.1.8',
  cLHaRedundancyIpAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaRedundancyIpAddress => '1.3.6.1.4.1.9.9.843.1.1.9',
  cLHaRedundancyIpAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaRedundancyIpAddressType)',
  cLHaPeerMacAddress => '1.3.6.1.4.1.9.9.843.1.1.10',
  cLHaVirtualMacAddress => '1.3.6.1.4.1.9.9.843.1.1.11',
  cLHaPrimaryUnit => '1.3.6.1.4.1.9.9.843.1.1.12',
  cLHaPrimaryUnitDefinition => 'SNMPv2-TC-v1-MIB::TruthValue',
  cLHaLinkEncryption => '1.3.6.1.4.1.9.9.843.1.1.13',
  cLHaNetworkFailOver => '1.3.6.1.4.1.9.9.843.1.1.14',
  cLHaNetworkFailOverDefinition => 'SNMPv2-TC-v1-MIB::TruthValue',
  cLHaRFStatusUnitIp => '1.3.6.1.4.1.9.9.843.1.1.15',
  cLHaKATimeout => '1.3.6.1.4.1.9.9.843.1.1.16',
  cLHaKARetryCount => '1.3.6.1.4.1.9.9.843.1.1.17',
  cLHaGwRetryCount => '1.3.6.1.4.1.9.9.843.1.1.18',
  cLHaPeerSearchTimeout => '1.3.6.1.4.1.9.9.843.1.1.19',
  cLHaRFStatusUnitIpType => '1.3.6.1.4.1.9.9.843.1.1.20',
  ciscoLwappHaNetworkConfig => '1.3.6.1.4.1.9.9.843.1.2',
  cLHaNetworkRoutePeerConfigTable => '1.3.6.1.4.1.9.9.843.1.2.1',
  cLHaNetworkRoutePeerConfigEntry => '1.3.6.1.4.1.9.9.843.1.2.1.1',
  cLHaNetworkRoutePeerIPAddressType => '1.3.6.1.4.1.9.9.843.1.2.1.1.1',
  cLHaNetworkRoutePeerIPAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaNetworkRoutePeerIPAddress => '1.3.6.1.4.1.9.9.843.1.2.1.1.2',
  cLHaNetworkRoutePeerIPAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaNetworkRoutePeerIPAddressType)',
  cLHaNetworkRoutePeerIPNetmaskType => '1.3.6.1.4.1.9.9.843.1.2.1.1.3',
  cLHaNetworkRoutePeerIPNetmaskTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaNetworkRoutePeerIPNetmask => '1.3.6.1.4.1.9.9.843.1.2.1.1.4',
  cLHaNetworkRoutePeerIPNetmaskDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaNetworkRoutePeerIPNetmaskType)',
  cLHaNetworkRoutePeerGatewayType => '1.3.6.1.4.1.9.9.843.1.2.1.1.5',
  cLHaNetworkRoutePeerGatewayTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cLHaNetworkRoutePeerGateway => '1.3.6.1.4.1.9.9.843.1.2.1.1.6',
  cLHaNetworkRoutePeerGatewayDefinition => 'INET-ADDRESS-MIB::InetAddress(cLHaNetworkRoutePeerGatewayType)',
  cLHaNetworkRoutePeerTransferStatus => '1.3.6.1.4.1.9.9.843.1.2.1.1.7',
  cLHaNetworkRoutePeerTransferStatusDefinition => 'CISCO-LWAPP-HA-MIB::cLHaNetworkRoutePeerTransferStatus',
  cLHaNetworkRoutePeerRowStatus => '1.3.6.1.4.1.9.9.843.1.2.1.1.8',
  ciscoLwappHaNotificationVariable => '1.3.6.1.4.1.9.9.843.1.3',
  cLHaSecondaryControllerUsageTrapType => '1.3.6.1.4.1.9.9.843.1.3.1',
  cLHaSecondaryControllerUsageTrapTypeDefinition => 'CISCO-LWAPP-HA-MIB::cLHaSecondaryControllerUsageTrapType',
  cLHaSecondaryControllerUsageDayCounter => '1.3.6.1.4.1.9.9.843.1.3.2',
  cLHaBulkSyncCompleteEvent => '1.3.6.1.4.1.9.9.843.1.3.3',
  cLHaBulkSyncCompleteEventDefinition => 'CISCO-LWAPP-HA-MIB::cLHaBulkSyncCompleteEvent',
  cLHaPeerHotStandbyEvent => '1.3.6.1.4.1.9.9.843.1.3.4',
  cLHaPeerHotStandbyEventDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPeerHotStandbyEvent',
  ciscoLwappHaPeerStatisticsVariable => '1.3.6.1.4.1.9.9.843.1.4',
  ciscoLwappHaSystemStatistics => '1.3.6.1.4.1.9.9.843.1.4.1',
  ciscoLwappHaCpuStatistics => '1.3.6.1.4.1.9.9.843.1.4.1.1',
  cLHaAllCpuUsage => '1.3.6.1.4.1.9.9.843.1.4.1.1.1',
  ciscoLwappHaPowerSupplyStatistics => '1.3.6.1.4.1.9.9.843.1.4.1.2',
  cLHaPowerSupply1Present => '1.3.6.1.4.1.9.9.843.1.4.1.2.1',
  cLHaPowerSupply1PresentDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPowerSupply1Present',
  cLHaPowerSupply1Operational => '1.3.6.1.4.1.9.9.843.1.4.1.2.2',
  cLHaPowerSupply1OperationalDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPowerSupply1Operational',
  cLHaPowerSupply2Present => '1.3.6.1.4.1.9.9.843.1.4.1.2.3',
  cLHaPowerSupply2PresentDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPowerSupply2Present',
  cLHaPowerSupply2Operational => '1.3.6.1.4.1.9.9.843.1.4.1.2.4',
  cLHaPowerSupply2OperationalDefinition => 'CISCO-LWAPP-HA-MIB::cLHaPowerSupply2Operational',
  ciscoLwappHaMemoryStatistics => '1.3.6.1.4.1.9.9.843.1.4.1.3',
  cLHaTotalSystemMemory => '1.3.6.1.4.1.9.9.843.1.4.1.3.1',
  cLHaFreeSystemMemory => '1.3.6.1.4.1.9.9.843.1.4.1.3.2',
  cLHaUsedSystemMemory => '1.3.6.1.4.1.9.9.843.1.4.1.3.3',
  cLHaAllocatedFromRtos => '1.3.6.1.4.1.9.9.843.1.4.1.3.4',
  cLHaChunksFree => '1.3.6.1.4.1.9.9.843.1.4.1.3.5',
  cLHaMmappedRegions => '1.3.6.1.4.1.9.9.843.1.4.1.3.6',
  cLHaSpaceInMmappedRegions => '1.3.6.1.4.1.9.9.843.1.4.1.3.7',
  cLHaTotalAllocatedSpace => '1.3.6.1.4.1.9.9.843.1.4.1.3.8',
  cLHaTotalNotInUseSpace => '1.3.6.1.4.1.9.9.843.1.4.1.3.9',
  cLHaTopMostReleasableSpace => '1.3.6.1.4.1.9.9.843.1.4.1.3.10',
  cLHaTotalAllocatedInclMmap => '1.3.6.1.4.1.9.9.843.1.4.1.3.11',
  cLHaTotalUsedMmap => '1.3.6.1.4.1.9.9.843.1.4.1.3.12',
  cLHaTotalFreeInclMmap => '1.3.6.1.4.1.9.9.843.1.4.1.3.13',
  ciscoLwappHaStatisticsVariable => '1.3.6.1.4.1.9.9.843.1.5',
  cLHaAvgPeerReachLatency => '1.3.6.1.4.1.9.9.843.1.5.1',
  cLHaAvgGwReachLatency => '1.3.6.1.4.1.9.9.843.1.5.2',
  cLHaBulkSyncStatus => '1.3.6.1.4.1.9.9.843.1.5.3',
  ciscoLwappHaMIBConform => '1.3.6.1.4.1.9.9.843.2',
  ciscoLwappHaMIBCompliances => '1.3.6.1.4.1.9.9.843.2.1',
  ciscoLwappHaMIBGroups => '1.3.6.1.4.1.9.9.843.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-LWAPP-HA-MIB::2017'} = {
  cLHaNetworkRoutePeerTransferStatus => {
    '1' => 'initiate',
    '2' => 'inProgress',
    '3' => 'success',
    '4' => 'failure',
    '5' => 'timeout',
  },
  cLHaPeerHotStandbyEvent => {
    '0' => 'down',
    '1' => 'up',
  },
  cLHaBulkSyncCompleteEvent => {
    '1' => 'bulkSyncComplete',
  },
  cLHaSecondaryControllerUsageTrapType => {
    '1' => 'usageStart',
    '2' => 'usageComplete',
    '3' => 'overUsage',
  },
};
