package Monitoring::GLPlugin::SNMP::MibsAndOids::OPENBSDMIB;

# OPENBSD-PF-MIB
# pfMIBObjects

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'OPENBSD-PF-MIB'} = {
  url => '',
  name => 'OPENBSD-PF-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'OPENBSD-PF-MIB'} =
  '1.3.6.1.4.1.30155.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'OPENBSD-PF-MIB'} = {
  # openBSD.pfMIBObjects.pfInfo
  pfRunning => '1.3.6.1.4.1.30155.1.1.1',
  pfRuntime => '1.3.6.1.4.1.30155.1.1.2',
  pfDebug => '1.3.6.1.4.1.30155.1.1.3',
  pfDebugDefinition => 'OPENBSD-PF-MIB::pfDebug',
  pfHostid => '1.3.6.1.4.1.30155.1.1.4',
  # openBSD.pfMIBObjects.pfCounters
  pfCntMatch => '1.3.6.1.4.1.30155.1.2.1',
  pfCntBadOffset => '1.3.6.1.4.1.30155.1.2.2',
  pfCntFragment => '1.3.6.1.4.1.30155.1.2.3',
  pfCntShort => '1.3.6.1.4.1.30155.1.2.4',
  pfCntNormalize => '1.3.6.1.4.1.30155.1.2.5',
  pfCntMemory => '1.3.6.1.4.1.30155.1.2.6',
  pfCntTimestamp => '1.3.6.1.4.1.30155.1.2.7',
  pfCntCongestion => '1.3.6.1.4.1.30155.1.2.8',
  pfCntIpOption => '1.3.6.1.4.1.30155.1.2.9',
  pfCntProtoCksum => '1.3.6.1.4.1.30155.1.2.10',
  pfCntStateMismatch => '1.3.6.1.4.1.30155.1.2.11',
  pfCntStateInsert => '1.3.6.1.4.1.30155.1.2.12',
  pfCntStateLimit => '1.3.6.1.4.1.30155.1.2.13',
  pfCntSrcLimit => '1.3.6.1.4.1.30155.1.2.14',
  pfCntSynproxy => '1.3.6.1.4.1.30155.1.2.15',
  pfCntTranslate => '1.3.6.1.4.1.30155.1.2.16',
  pfCntNoRoute => '1.3.6.1.4.1.30155.1.2.17',
  # openBSD.pfMIBObjects.pfStateTable
  pfStateCount => '1.3.6.1.4.1.30155.1.3.1',
  pfStateSearches => '1.3.6.1.4.1.30155.1.3.2',
  pfStateInserts => '1.3.6.1.4.1.30155.1.3.3',
  pfStateRemovals => '1.3.6.1.4.1.30155.1.3.4',
  # openBSD.pfMIBObjects.pfLogInterface
  pfLogIfName => '1.3.6.1.4.1.30155.1.4.1',
  pfLogIfBytesIn => '1.3.6.1.4.1.30155.1.4.2',
  pfLogIfBytesout => '1.3.6.1.4.1.30155.1.4.3',
  pfLogIfPktsInPass => '1.3.6.1.4.1.30155.1.4.4',
  pfLogIfPktsInDrop => '1.3.6.1.4.1.30155.1.4.5',
  pfLogIfPktsOutPass => '1.3.6.1.4.1.30155.1.4.6',
  pfLogIfPktsOutDrop => '1.3.6.1.4.1.30155.1.4.7',
  pfLogIf6BytesIn => '1.3.6.1.4.1.30155.1.4.8',
  pfLogIf6BytesOut => '1.3.6.1.4.1.30155.1.4.9',
  pfLogIf6PktsInPass => '1.3.6.1.4.1.30155.1.4.10',
  pfLogIf6PktsInDrop => '1.3.6.1.4.1.30155.1.4.11',
  pfLogIf6PktsOutPass => '1.3.6.1.4.1.30155.1.4.12',
  pfLogIf6PktsOutDrop => '1.3.6.1.4.1.30155.1.4.13',
  # openBSD.pfMIBObjects.pfSrcTracking
  pfSrcTrackCount => '1.3.6.1.4.1.30155.1.5.1',
  pfSrcTrackSearches => '1.3.6.1.4.1.30155.1.5.2',
  pfSrcTrackInserts => '1.3.6.1.4.1.30155.1.5.3',
  pfSrcTrackRemovals => '1.3.6.1.4.1.30155.1.5.4',
  # openBSD.pfMIBObjects.pfLimits
  pfLimitStates => '1.3.6.1.4.1.30155.1.6.1',
  pfLimitSourceNodes => '1.3.6.1.4.1.30155.1.6.2',
  pfLimitFragments => '1.3.6.1.4.1.30155.1.6.3',
  pfLimitMaxTables => '1.3.6.1.4.1.30155.1.6.4',
  pfLimitMaxTablesEntries => '1.3.6.1.4.1.30155.1.6.5',
  # openBSD.pfMIBObjects.pfTimeouts
  pfTimeoutTcpFirst => '1.3.6.1.4.1.30155.1.7.1',
  pfTimeoutTcpOpening => '1.3.6.1.4.1.30155.1.7.2',
  pfTimeoutTcpEstablished => '1.3.6.1.4.1.30155.1.7.3',
  pfTimeoutTcpClosing => '1.3.6.1.4.1.30155.1.7.4',
  pfTimeoutFinWait => '1.3.6.1.4.1.30155.1.7.5',
  pfTimeoutClosed => '1.3.6.1.4.1.30155.1.7.6',
  pfTimeoutUdpFirst => '1.3.6.1.4.1.30155.1.7.7',
  pfTimeoutUdpSingle => '1.3.6.1.4.1.30155.1.7.8',
  pfTimeoutUdpMultiple => '1.3.6.1.4.1.30155.1.7.9',
  pfTimeoutIcmpFirst => '1.3.6.1.4.1.30155.1.7.10',
  pfTimeoutIcmpError => '1.3.6.1.4.1.30155.1.7.11',
  pfTimeoutOtherFirst => '1.3.6.1.4.1.30155.1.7.12',
  pfTimeoutOtherSingle => '1.3.6.1.4.1.30155.1.7.13',
  pfTimeoutOtherMultiple => '1.3.6.1.4.1.30155.1.7.14',
  pfTimeoutFragment => '1.3.6.1.4.1.30155.1.7.15',
  pfTimeoutInterval => '1.3.6.1.4.1.30155.1.7.16',
  pfTimeoutAdaptiveStart => '1.3.6.1.4.1.30155.1.7.17',
  pfTimeoutAdaptiveEnd => '1.3.6.1.4.1.30155.1.7.18',
  pfTimeoutSrcTrack => '1.3.6.1.4.1.30155.1.7.19',
  # openBSD.pfMIBObjects.pfInterfaces
  pfIfNumber => '1.3.6.1.4.1.30155.1.8.1',
  pfIfTable => '1.3.6.1.4.1.30155.1.8.128',
  pfIfEntry => '1.3.6.1.4.1.30155.1.8.128.1',
  pfIfIndex => '1.3.6.1.4.1.30155.1.8.128.1.1',
  pfIfDescr => '1.3.6.1.4.1.30155.1.8.128.1.2',
  pfIfType => '1.3.6.1.4.1.30155.1.8.128.1.3',
  pfIfRefs => '1.3.6.1.4.1.30155.1.8.128.1.4',
  pfIfRules => '1.3.6.1.4.1.30155.1.8.128.1.5',
  pfIfIn4PassPkts => '1.3.6.1.4.1.30155.1.8.128.1.6',
  pfIfIn4PassBytes => '1.3.6.1.4.1.30155.1.8.128.1.7',
  pfIfIn4BlockPkts => '1.3.6.1.4.1.30155.1.38.128.1.8',
  pfIfIn4BlockBytes => '1.3.6.1.4.1.30155.1.8.128.1.9',
  pfIfOut4PassPkts => '1.3.6.1.4.1.30155.1.8.128.1.10',
  pfIfOut4PassBytes => '1.3.6.1.4.1.30155.1.8.128.1.11',
  pfIfOut4BlockPkts => '1.3.6.1.4.1.30155.1.8.128.1.12',
  pfIfOut4BlockBytes => '1.3.6.1.4.1.30155.1.8.128.1.13',
  pfIfIn6PassPkts => '1.3.6.1.4.1.30155.1.8.128.1.14',
  pfIfIn6PassBytes => '1.3.6.1.4.1.30155.1.8.128.1.15',
  pfIfIn6BlockPkts => '1.3.6.1.4.1.30155.1.8.128.1.16',
  pfIfIn6BlockBytes => '1.3.6.1.4.1.30155.1.8.128.1.17',
  pfIfOut6PassPkts => '1.3.6.1.4.1.30155.1.8.128.1.18',
  pfIfOut6PassBytes => '1.3.6.1.4.1.30155.1.8.128.1.19',
  pfIfOut6BlockPkts => '1.3.6.1.4.1.30155.1.8.128.1.20',
  pfIfOut6BlockBytes => '1.3.6.1.4.1.30155.1.8.128.1.21',
  # openBSD.pfMIBObjects.pfTables
  pfTblNumber => '1.3.6.1.4.1.30155.1.9.1',
  pfTblTable => '1.3.6.1.4.1.30155.1.9.128',
  pfTblEntry => '1.3.6.1.4.1.30155.1.9.128.1',
  pfTblIndex => '1.3.6.1.4.1.30155.1.9.128.1.1',
  pfTblName => '1.3.6.1.4.1.30155.1.9.128.1.2',
  pfTblAddresses => '1.3.6.1.4.1.30155.1.9.128.1.3',
  pfTblAnchors => '1.3.6.1.4.1.30155.1.9.128.1.4',
  pfTblRulesRefs => '1.3.6.1.4.1.30155.1.9.128.1.5',
  pfTblEvalsMatch => '1.3.6.1.4.1.30155.1.9.128.1.6',
  pfTblEvalsNoMatch => '1.3.6.1.4.1.30155.1.9.128.1.7',
  pfTblInPassPkts => '1.3.6.1.4.1.30155.1.9.128.1.8',
  pfTblInPassBytes => '1.3.6.1.4.1.30155.1.9.128.1.9',
  pfTblInBlockPkts => '1.3.6.1.4.1.30155.1.9.128.1.10',
  pfTblInBlockBytes => '1.3.6.1.4.1.30155.1.9.128.1.11',
  pfTblInXPassPkts => '1.3.6.1.4.1.30155.1.9.128.1.12',
  pfTblInXPassBytes => '1.3.6.1.4.1.30155.1.9.128.1.13',
  pfTblOutPassPkts => '1.3.6.1.4.1.30155.1.9.128.1.14',
  pfTblOutPassBytes => '1.3.6.1.4.1.30155.1.9.128.1.15',
  pfTblOutBlockPkts => '1.3.6.1.4.1.30155.1.9.128.1.16',
  pfTblOutBlockBytes => '1.3.6.1.4.1.30155.1.9.128.1.17',
  pfTblOutXPassPkts => '1.3.6.1.4.1.30155.1.9.128.1.18',
  pfTblOutXPassBytes => '1.3.6.1.4.1.30155.1.9.128.1.19',
  pfTblStatsCleared => '1.3.6.1.4.1.30155.1.9.128.1.20',
  pfTblInMatchPkts => '1.3.6.1.4.1.30155.1.9.128.1.21',
  pfTblInMatchBytes => '1.3.6.1.4.1.30155.1.9.128.1.22',
  pfTblOutMatchPkts => '1.3.6.1.4.1.30155.1.9.128.1.23',
  pfTblOutMatchBytes => '1.3.6.1.4.1.30155.1.9.128.1.24',
  pfTblAddrTable => '1.3.6.1.4.1.30155.1.9.129',
  pfTblAddrEntry => '1.3.6.1.4.1.30155.1.9.129.1',
  pfTblAddrTblIndex => '1.3.6.1.4.1.30155.1.9.129.1.1',
  pfTblAddrNet => '1.3.6.1.4.1.30155.1.9.129.1.2',
  pfTblAddrMask => '1.3.6.1.4.1.30155.1.9.129.1.3',
  pfTblAddrCleared => '1.3.6.1.4.1.30155.1.9.129.1.4',
  pfTblAddrBlockPkts => '1.3.6.1.4.1.30155.1.9.129.1.5',
  pfTblAddrBlockBytes => '1.3.6.1.4.1.30155.1.9.129.1.6',
  pfTblAddrPassPkts => '1.3.6.1.4.1.30155.1.9.129.1.7',
  pfTblAddrPassBytes => '1.3.6.1.4.1.30155.1.9.129.1.8',
  pfTblAddrOutBlockPkts => '1.3.6.1.4.1.30155.1.9.129.1.9',
  pfTblAddrOutBlockBytes => '1.3.6.1.4.1.30155.1.9.129.1.10',
  pfTblAddrOutPassPkts => '1.3.6.1.4.1.30155.1.9.129.1.11',
  pfTblAddrOutPassBytes => '1.3.6.1.4.1.30155.1.9.129.1.12',
  pfTblAddrInMatchPkts => '1.3.6.1.4.1.30155.1.9.129.1.13',
  pfTblAddrInMatchBytes => '1.3.6.1.4.1.30155.1.9.129.1.14',
  pfTblAddrOutMatchPkts => '1.3.6.1.4.1.30155.1.9.129.1.15',
  pfTblAddrOutMatchBytes => '1.3.6.1.4.1.30155.1.9.129.1.16',
  # openBSD.pfMIBObjects.pfLabels
  pfLabelNumber => '.1.3.6.1.4.1.30155.1.10.1',
  pfLabelTable => '.1.3.6.1.4.1.30155.1.10.128',
  pfLabelEntry => '.1.3.6.1.4.1.30155.1.10.128.1',
  pfLabelIndex => '.1.3.6.1.4.1.30155.1.10.128.1.1',
  pfLabelName => '.1.3.6.1.4.1.30155.1.10.128.1.2',
  pfLabelEvals => '.1.3.6.1.4.1.30155.1.10.128.1.3',
  pfLabelPkts => '.1.3.6.1.4.1.30155.1.10.128.1.4',
  pfLabelBytes => '.1.3.6.1.4.1.30155.1.10.128.1.5',
  pfLabelInPkts => '.1.3.6.1.4.1.30155.1.10.128.1.6',
  pfLabelInBytes => '.1.3.6.1.4.1.30155.1.10.128.1.7',
  pfLabelOutPkts => '.1.3.6.1.4.1.30155.1.10.128.1.8',
  pfLabelOutBytes => '.1.3.6.1.4.1.30155.1.10.128.1.9',
  pfLabelTotalStates => '.1.3.6.1.4.1.30155.1.10.128.1.10',
  # openBSD.pfMIBObjects.pfsyncStats
  pfsyncIpPktsRecv => '1.3.6.1.4.1.30155.1.11.1',
  pfsyncIp6PktsRecv => '1.3.6.1.4.1.30155.1.11.2',
  pfsyncPktDiscardsForBadInterface => '1.3.6.1.4.1.30155.1.11.3',
  pfsyncPktDiscardsForBadTtl => '1.3.6.1.4.1.30155.1.11.4',
  pfsyncPktShorterThanHeader => '1.3.6.1.4.1.30155.1.11.5',
  pfsyncPktDiscardsForBadVersion => '1.3.6.1.4.1.30155.1.11.6',
  pfsyncPktDiscardsForBadAction => '1.3.6.1.4.1.30155.1.11.7',
  pfsyncPktDiscardsForBadBadAuth => '1.3.6.1.4.1.30155.1.11.8',
  pfsyncPktDiscardsForBadValues => '1.3.6.1.4.1.30155.1.11.9',
  pfsyncPktDiscardsForStaleState => '1.3.6.1.4.1.30155.1.11.10',
  pfsyncPktDiscardsForBadValues => '1.3.6.1.4.1.30155.1.11.11',
  pfsyncPktDiscardsForBadState => '1.3.6.1.4.1.30155.1.11.12',
  pfsyncIpPktsSent => '1.3.6.1.4.1.30155.1.11.13',
  pfsyncIp6PktsSent => '1.3.6.1.4.1.30155.1.11.14',
  pfsyncNoMemory => '1.3.6.1.4.1.30155.1.11.15',
  pfsyncOutputErrors => '1.3.6.1.4.1.30155.1.11.16',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'OPENBSD-PF-MIB'} = {
  pfDebug => {
    '0' => 'emerg',
    '1' => 'alert',
    '2' => 'crit',
    '3' => 'err',
    '4' => 'warning',
    '5' => 'notice',
    '6' => 'info',
    '7' => 'debug',
  },
};

# OPENBSD-SENSORS-MIB
# sensorsMIBObjects

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'OPENBSD-SENSORS-MIB'} = {
  url => '',
  name => 'OPENBSD-SENSORS-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'OPENBSD-SENSORS-MIB'} =
  '1.3.6.1.4.1.30155.2';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'OPENBSD-SENSORS-MIB'} = {
  # openBSD.sensorMIBObjects
  sensorNumber => '1.3.6.1.4.1.30155.2.1.1',
  sensorTable => '1.3.6.1.4.1.30155.2.1.2',
  sensorEntry => '1.3.6.1.4.1.30155.2.1.2.1',
  sensorIndex => '1.3.6.1.4.1.30155.2.1.2.1.1',
  sensorDescr => '1.3.6.1.4.1.30155.2.1.2.1.2',
  sensorType => '1.3.6.1.4.1.30155.2.1.2.1.3',
  sensorDevice => '1.3.6.1.4.1.30155.2.1.2.1.4',
  sensorValue => '1.3.6.1.4.1.30155.2.1.2.1.5',
  sensorUnits => '1.3.6.1.4.1.30155.2.1.2.1.6',
  sensorStatus => '1.3.6.1.4.1.30155.2.1.2.1.7',
  sensorStatusDefinition => 'OPENBSD-SENSORS-MIB::sensorStatus',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'OPENBSD-SENSORS-MIB'} = {
  sensorStatus => {
    '0' => 'unspecified',
    '1' => 'ok',
    '2' => 'warn',
    '3' => 'critical',
    '4' => 'unknown',
  },
};

# OPENBSD-MEM-MIB
# memMIBObjects

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'OPENBSD-MEM-MIB'} = {
  url => '',
  name => 'OPENBSD-MEM-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'OPENBSD-MEM-MIB'} =
  '1.3.6.1.4.1.30155.5';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'OPENBSD-MEM-MIB'} = {
  # openBSD.memMIBObjects
  memMIBVersion => '1.3.6.1.4.1.30155.5.1',
  memIfTable => '1.3.6.1.4.1.30155.5.2',
  memIfEntry => '1.3.6.1.4.1.30155.5.2.1',
  memIfIndex => '1.3.6.1.2.1.2.2.1.1',
  memIfName => '1.3.6.1.4.1.30155.5.2.1.1',
  memIfLiveLocks => '1.3.6.1.4.1.30155.5.2.1.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'OPENBSD-MEM-MIB'} = {
};

# OPENBSD-CARP-MIB
# carpMIBObjects

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'OPENBSD-CARP-MIB'} = {
  url => '',
  name => 'OPENBSD-CARP-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'OPENBSD-CARP-MIB'} =
  '1.3.6.1.4.1.30155.6';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'OPENBSD-CARP-MIB'} = {
  # openBSD.carpMIBObjects.carpSysctl
  carpAllow => '1.3.6.1.4.1.30155.6.1.1',
  carpPreempt => '1.3.6.1.4.1.30155.6.1.2',
  carpLog => '1.3.6.1.4.1.30155.6.1.3',
  # openBSD.carpMIBObjects.carpSysctl
  carpIfNumber => '1.3.6.1.4.1.30155.6.2.1',
  carpIfTable => '1.3.6.1.4.1.30155.6.2.2',
  carpIfEntry => '1.3.6.1.4.1.30155.6.2.2.1',
  carpIfIndex => '1.3.6.1.4.1.30155.6.2.2.1.1',
  carpIfDescr => '1.3.6.1.4.1.30155.6.2.2.1.2',
  carpIfVhid => '1.3.6.1.4.1.30155.6.2.2.1.3',
  carpIfDev => '1.3.6.1.4.1.30155.6.2.2.1.4',
  carpIfAdvbase => '1.3.6.1.4.1.30155.6.2.2.1.5',
  carpIfAdvskew => '1.3.6.1.4.1.30155.6.2.2.1.6',
  carpIfState => '1.3.6.1.4.1.30155.6.2.2.1.7',
  carpIfStateDefinition => 'OPENBSD-CARP-MIB::carpIfState',
  # openBSD.carpMIBObjects.carpSysctl
  carpIpPktsRecv => '1.3.6.1.4.1.30155.6.3.1',
  carpIp6PktsRecv => '1.3.6.1.4.1.30155.6.3.2',
  carpPktDiscardsForBadInterface => '1.3.6.1.4.1.30155.6.3.3',
  carpPktDiscardsForWrongTtl => '1.3.6.1.4.1.30155.6.3.4',
  carpPktShorterThanHeader => '1.3.6.1.4.1.30155.6.3.5',
  carpPktDiscardsForBadChecksum => '1.3.6.1.4.1.30155.6.3.6',
  carpPktDiscardsForBadVersion => '1.3.6.1.4.1.30155.6.3.7',
  carpPktDiscardsForTooShort => '1.3.6.1.4.1.30155.6.3.8',
  carpPktDiscardsForBadAuth => '1.3.6.1.4.1.30155.6.3.9',
  carpPktDiscardsForBadVhid => '1.3.6.1.4.1.30155.6.3.10',
  carpPktDiscardsForBadAddressList => '1.3.6.1.4.1.30155.6.3.11',
  carpIpPktsSent => '1.3.6.1.4.1.30155.6.3.12',
  carpIp6PktsSent => '1.3.6.1.4.1.30155.6.3.13',
  carpNoMemory => '1.3.6.1.4.1.30155.6.3.14',
  carpTransitionsToMaster => '1.3.6.1.4.1.30155.6.3.15',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'OPENBSD-CARP-MIB'} = {
  carpIfState => {
    '0' => 'init',
    '1' => 'backup',
    '2' => 'master',
  },
};

