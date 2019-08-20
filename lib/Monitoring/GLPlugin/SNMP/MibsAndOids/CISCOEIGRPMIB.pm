package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOEIGRPMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-EIGRP-MIB'} = {
  url => '',
  name => 'CISCO-EIGRP-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-EIGRP-MIB'} =
    '1.3.6.1.4.1.9.9.449';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-EIGRP-MIB'} = {
  ciscoEigrpMIB => '1.3.6.1.4.1.9.9.449',
  cEigrpMIBNotifications => '1.3.6.1.4.1.9.9.449.0',
  cEigrpMIBObjects => '1.3.6.1.4.1.9.9.449.1',
  cEigrpVpnInfo => '1.3.6.1.4.1.9.9.449.1.1',
  cEigrpVpnTable => '1.3.6.1.4.1.9.9.449.1.1.1',
  cEigrpVpnEntry => '1.3.6.1.4.1.9.9.449.1.1.1.1',
  cEigrpVpnId => '1.3.6.1.4.1.9.9.449.1.1.1.1.1',
  cEigrpVpnName => '1.3.6.1.4.1.9.9.449.1.1.1.1.2',
  cEigrpAsInfo => '1.3.6.1.4.1.9.9.449.1.2',
  cEigrpTraffStatsTable => '1.3.6.1.4.1.9.9.449.1.2.1',
  cEigrpTraffStatsEntry => '1.3.6.1.4.1.9.9.449.1.2.1.1',
  cEigrpAsNumber => '1.3.6.1.4.1.9.9.449.1.2.1.1.1',
  cEigrpNbrCount => '1.3.6.1.4.1.9.9.449.1.2.1.1.2',
  cEigrpHellosSent => '1.3.6.1.4.1.9.9.449.1.2.1.1.3',
  cEigrpHellosRcvd => '1.3.6.1.4.1.9.9.449.1.2.1.1.4',
  cEigrpUpdatesSent => '1.3.6.1.4.1.9.9.449.1.2.1.1.5',
  cEigrpUpdatesRcvd => '1.3.6.1.4.1.9.9.449.1.2.1.1.6',
  cEigrpQueriesSent => '1.3.6.1.4.1.9.9.449.1.2.1.1.7',
  cEigrpQueriesRcvd => '1.3.6.1.4.1.9.9.449.1.2.1.1.8',
  cEigrpRepliesSent => '1.3.6.1.4.1.9.9.449.1.2.1.1.9',
  cEigrpRepliesRcvd => '1.3.6.1.4.1.9.9.449.1.2.1.1.10',
  cEigrpAcksSent => '1.3.6.1.4.1.9.9.449.1.2.1.1.11',
  cEigrpAcksRcvd => '1.3.6.1.4.1.9.9.449.1.2.1.1.12',
  cEigrpInputQHighMark => '1.3.6.1.4.1.9.9.449.1.2.1.1.13',
  cEigrpInputQDrops => '1.3.6.1.4.1.9.9.449.1.2.1.1.14',
  cEigrpSiaQueriesSent => '1.3.6.1.4.1.9.9.449.1.2.1.1.15',
  cEigrpSiaQueriesRcvd => '1.3.6.1.4.1.9.9.449.1.2.1.1.16',
  cEigrpAsRouterIdType => '1.3.6.1.4.1.9.9.449.1.2.1.1.17',
  cEigrpAsRouterIdTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cEigrpAsRouterId => '1.3.6.1.4.1.9.9.449.1.2.1.1.18',
  cEigrpAsRouterIdDefinition => 'INET-ADDRESS-MIB::InetAddress(cEigrpAsRouterIdType)',
  cEigrpTopoRoutes => '1.3.6.1.4.1.9.9.449.1.2.1.1.19',
  cEigrpHeadSerial => '1.3.6.1.4.1.9.9.449.1.2.1.1.20',
  cEigrpNextSerial => '1.3.6.1.4.1.9.9.449.1.2.1.1.21',
  cEigrpXmitPendReplies => '1.3.6.1.4.1.9.9.449.1.2.1.1.22',
  cEigrpXmitDummies => '1.3.6.1.4.1.9.9.449.1.2.1.1.23',
  cEigrpTopologyInfo => '1.3.6.1.4.1.9.9.449.1.3',
  cEigrpTopoTable => '1.3.6.1.4.1.9.9.449.1.3.1',
  cEigrpTopoEntry => '1.3.6.1.4.1.9.9.449.1.3.1.1',
  cEigrpDestNetType => '1.3.6.1.4.1.9.9.449.1.3.1.1.1',
  cEigrpDestNetTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cEigrpDestNet => '1.3.6.1.4.1.9.9.449.1.3.1.1.2',
  cEigrpDestNetDefinition => 'INET-ADDRESS-MIB::InetAddress(cEigrpDestNetType)',
  cEigrpDestNetPrefixLen => '1.3.6.1.4.1.9.9.449.1.3.1.1.4',
  cEigrpActive => '1.3.6.1.4.1.9.9.449.1.3.1.1.5',
  cEigrpStuckInActive => '1.3.6.1.4.1.9.9.449.1.3.1.1.6',
  cEigrpDestSuccessors => '1.3.6.1.4.1.9.9.449.1.3.1.1.7',
  cEigrpFdistance => '1.3.6.1.4.1.9.9.449.1.3.1.1.8',
  cEigrpRouteOriginType => '1.3.6.1.4.1.9.9.449.1.3.1.1.9',
  cEigrpRouteOriginAddrType => '1.3.6.1.4.1.9.9.449.1.3.1.1.10',
  cEigrpRouteOriginAddrTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cEigrpRouteOriginAddr => '1.3.6.1.4.1.9.9.449.1.3.1.1.11',
  cEigrpRouteOriginAddrDefinition => 'INET-ADDRESS-MIB::InetAddress(cEigrpRouteOriginAddrType)',
  cEigrpNextHopAddressType => '1.3.6.1.4.1.9.9.449.1.3.1.1.12',
  cEigrpNextHopAddressTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cEigrpNextHopAddress => '1.3.6.1.4.1.9.9.449.1.3.1.1.13',
  cEigrpNextHopAddressDefinition => 'INET-ADDRESS-MIB::InetAddress(cEigrpNextHopAddressType)',
  cEigrpNextHopInterface => '1.3.6.1.4.1.9.9.449.1.3.1.1.14',
  cEigrpDistance => '1.3.6.1.4.1.9.9.449.1.3.1.1.15',
  cEigrpReportDistance => '1.3.6.1.4.1.9.9.449.1.3.1.1.16',
  cEigrpFdistanceWide => '1.3.6.1.4.1.9.9.449.1.3.1.1.17',
  cEigrpDistanceWide => '1.3.6.1.4.1.9.9.449.1.3.1.1.18',
  cEigrpReportDistanceWide => '1.3.6.1.4.1.9.9.449.1.3.1.1.19',
  cEigrpPeerInfo => '1.3.6.1.4.1.9.9.449.1.4',
  cEigrpPeerTable => '1.3.6.1.4.1.9.9.449.1.4.1',
  cEigrpPeerEntry => '1.3.6.1.4.1.9.9.449.1.4.1.1',
  cEigrpHandle => '1.3.6.1.4.1.9.9.449.1.4.1.1.1',
  cEigrpPeerAddrType => '1.3.6.1.4.1.9.9.449.1.4.1.1.2',
  cEigrpPeerAddrTypeDefinition => 'INET-ADDRESS-MIB::InetAddressType',
  cEigrpPeerAddr => '1.3.6.1.4.1.9.9.449.1.4.1.1.3',
  cEigrpPeerAddrDefinition => 'INET-ADDRESS-MIB::InetAddress(cEigrpPeerAddrType)',
  cEigrpPeerIfIndex => '1.3.6.1.4.1.9.9.449.1.4.1.1.4',
  cEigrpHoldTime => '1.3.6.1.4.1.9.9.449.1.4.1.1.5',
  cEigrpUpTime => '1.3.6.1.4.1.9.9.449.1.4.1.1.6',
  cEigrpUpTimeDefinition => 'CISCO-EIGRP-MIB::cEigrpUpTime',
  cEigrpSrtt => '1.3.6.1.4.1.9.9.449.1.4.1.1.7',
  cEigrpRto => '1.3.6.1.4.1.9.9.449.1.4.1.1.8',
  cEigrpPktsEnqueued => '1.3.6.1.4.1.9.9.449.1.4.1.1.9',
  cEigrpLastSeq => '1.3.6.1.4.1.9.9.449.1.4.1.1.10',
  cEigrpVersion => '1.3.6.1.4.1.9.9.449.1.4.1.1.11',
  cEigrpRetrans => '1.3.6.1.4.1.9.9.449.1.4.1.1.12',
  cEigrpRetries => '1.3.6.1.4.1.9.9.449.1.4.1.1.13',
  cEigrpInterfaceInfo => '1.3.6.1.4.1.9.9.449.1.5',
  cEigrpInterfaceTable => '1.3.6.1.4.1.9.9.449.1.5.1',
  cEigrpInterfaceEntry => '1.3.6.1.4.1.9.9.449.1.5.1.1',
  cEigrpPeerCount => '1.3.6.1.4.1.9.9.449.1.5.1.1.3',
  cEigrpXmitReliableQ => '1.3.6.1.4.1.9.9.449.1.5.1.1.4',
  cEigrpXmitUnreliableQ => '1.3.6.1.4.1.9.9.449.1.5.1.1.5',
  cEigrpMeanSrtt => '1.3.6.1.4.1.9.9.449.1.5.1.1.6',
  cEigrpPacingReliable => '1.3.6.1.4.1.9.9.449.1.5.1.1.7',
  cEigrpPacingUnreliable => '1.3.6.1.4.1.9.9.449.1.5.1.1.8',
  cEigrpMFlowTimer => '1.3.6.1.4.1.9.9.449.1.5.1.1.9',
  cEigrpPendingRoutes => '1.3.6.1.4.1.9.9.449.1.5.1.1.10',
  cEigrpHelloInterval => '1.3.6.1.4.1.9.9.449.1.5.1.1.11',
  cEigrpXmitNextSerial => '1.3.6.1.4.1.9.9.449.1.5.1.1.12',
  cEigrpUMcasts => '1.3.6.1.4.1.9.9.449.1.5.1.1.13',
  cEigrpRMcasts => '1.3.6.1.4.1.9.9.449.1.5.1.1.14',
  cEigrpUUcasts => '1.3.6.1.4.1.9.9.449.1.5.1.1.15',
  cEigrpRUcasts => '1.3.6.1.4.1.9.9.449.1.5.1.1.16',
  cEigrpMcastExcepts => '1.3.6.1.4.1.9.9.449.1.5.1.1.17',
  cEigrpCRpkts => '1.3.6.1.4.1.9.9.449.1.5.1.1.18',
  cEigrpAcksSuppressed => '1.3.6.1.4.1.9.9.449.1.5.1.1.19',
  cEigrpRetransSent => '1.3.6.1.4.1.9.9.449.1.5.1.1.20',
  cEigrpOOSrvcd => '1.3.6.1.4.1.9.9.449.1.5.1.1.21',
  cEigrpAuthMode => '1.3.6.1.4.1.9.9.449.1.5.1.1.22',
  cEigrpAuthModeDefinition => 'CISCO-EIGRP-MIB::cEigrpAuthMode',
  cEigrpAuthKeyChain => '1.3.6.1.4.1.9.9.449.1.5.1.1.23',
  cEigrpMIBConformance => '1.3.6.1.4.1.9.9.449.2',
  cEigrpMIBCompliances => '1.3.6.1.4.1.9.9.449.2.1',
  cEigrpMIBGroups => '1.3.6.1.4.1.9.9.449.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-EIGRP-MIB'} = {
  cEigrpAuthMode => {
    '1' => 'none',
    '2' => 'md5',
  },
  cEigrpUpTime => sub {
    my ($uptime) = @_;
    # If the up time is less than 24 hours, the number
    # of days will not be reflected and the string will
    # be formatted like this: 'hh:mm:ss', reflecting
    # hours, minutes, and seconds.
    #
    # If the up time is greater than 24 hours, EIGRP is
    # less precise and the minutes and seconds are not
    # reflected.  Instead only the days and hours are shown
    # and the string will be formatted like this: 'xxxdxxh'."
    #
    # Aha, und wie erklaerst du dir das hier????
    # 17w3d 6w5d 1y4w 
    if ($uptime =~ /(\d+)y(\d+)w/) {
      return $1 * 365*24*3600 + $2 * 7*24*3600;
    } elsif ($uptime =~ /(\d+)w(\d+)d/) {
      return $1 * 7*24*3600 + $2 * 24*3600;
    } elsif ($uptime =~ /(\d+)d(\d+)h/) {
      return $1 * 24*3600 + $2 * 3600;
    } elsif ($uptime =~ /(\d+):(\d+):(\d+)/) {
      return $1 * 3600 + $2 * 60 + $3;
    }
  },
};
