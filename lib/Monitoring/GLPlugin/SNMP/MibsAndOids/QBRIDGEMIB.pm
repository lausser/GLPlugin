package Monitoring::GLPlugin::SNMP::MibsAndOids::QBRIDGEMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'Q-BRIDGE-MIB'} = {
  url => '',
  name => 'Q-BRIDGE-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'Q-BRIDGE-MIB'} =
  '1.3.6.1.2.1.17.7';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'Q-BRIDGE-MIB'} = {
  'qBridgeMIB' => '1.3.6.1.2.1.17.7',
  'qBridgeMIBObjects' => '1.3.6.1.2.1.17.7.1',
  'dot1qBase' => '1.3.6.1.2.1.17.7.1.1',
  'dot1qVlanVersionNumber' => '1.3.6.1.2.1.17.7.1.1.1',
  'dot1qVlanVersionNumberDefinition' => 'Q-BRIDGE-MIB::dot1qVlanVersionNumber',
  'dot1qMaxVlanId' => '1.3.6.1.2.1.17.7.1.1.2',
  'dot1qMaxSupportedVlans' => '1.3.6.1.2.1.17.7.1.1.3',
  'dot1qNumVlans' => '1.3.6.1.2.1.17.7.1.1.4',
  'dot1qGvrpStatus' => '1.3.6.1.2.1.17.7.1.1.5',
  'dot1qTp' => '1.3.6.1.2.1.17.7.1.2',
  'dot1qFdbTable' => '1.3.6.1.2.1.17.7.1.2.1',
  'dot1qFdbEntry' => '1.3.6.1.2.1.17.7.1.2.1.1',
  'dot1qFdbId' => '1.3.6.1.2.1.17.7.1.2.1.1.1',
  'dot1qFdbDynamicCount' => '1.3.6.1.2.1.17.7.1.2.1.1.2',
  'dot1qTpFdbTable' => '1.3.6.1.2.1.17.7.1.2.2',
  'dot1qTpFdbEntry' => '1.3.6.1.2.1.17.7.1.2.2.1',
  'dot1qTpFdbAddress' => '1.3.6.1.2.1.17.7.1.2.2.1.1',
  'dot1qTpFdbPort' => '1.3.6.1.2.1.17.7.1.2.2.1.2',
  'dot1qTpFdbStatus' => '1.3.6.1.2.1.17.7.1.2.2.1.3',
  'dot1qTpFdbStatusDefinition' => 'Q-BRIDGE-MIB::dot1qTpFdbStatus',
  'dot1qTpGroupTable' => '1.3.6.1.2.1.17.7.1.2.3',
  'dot1qTpGroupEntry' => '1.3.6.1.2.1.17.7.1.2.3.1',
  'dot1qTpGroupAddress' => '1.3.6.1.2.1.17.7.1.2.3.1.1',
  'dot1qTpGroupEgressPorts' => '1.3.6.1.2.1.17.7.1.2.3.1.2',
  'dot1qTpGroupLearnt' => '1.3.6.1.2.1.17.7.1.2.3.1.3',
  'dot1qForwardAllTable' => '1.3.6.1.2.1.17.7.1.2.4',
  'dot1qForwardAllEntry' => '1.3.6.1.2.1.17.7.1.2.4.1',
  'dot1qForwardAllPorts' => '1.3.6.1.2.1.17.7.1.2.4.1.1',
  'dot1qForwardAllStaticPorts' => '1.3.6.1.2.1.17.7.1.2.4.1.2',
  'dot1qForwardAllForbiddenPorts' => '1.3.6.1.2.1.17.7.1.2.4.1.3',
  'dot1qForwardUnregisteredTable' => '1.3.6.1.2.1.17.7.1.2.5',
  'dot1qForwardUnregisteredEntry' => '1.3.6.1.2.1.17.7.1.2.5.1',
  'dot1qForwardUnregisteredPorts' => '1.3.6.1.2.1.17.7.1.2.5.1.1',
  'dot1qForwardUnregisteredStaticPorts' => '1.3.6.1.2.1.17.7.1.2.5.1.2',
  'dot1qForwardUnregisteredForbiddenPorts' => '1.3.6.1.2.1.17.7.1.2.5.1.3',
  'dot1qStatic' => '1.3.6.1.2.1.17.7.1.3',
  'dot1qStaticUnicastTable' => '1.3.6.1.2.1.17.7.1.3.1',
  'dot1qStaticUnicastEntry' => '1.3.6.1.2.1.17.7.1.3.1.1',
  'dot1qStaticUnicastAddress' => '1.3.6.1.2.1.17.7.1.3.1.1.1',
  'dot1qStaticUnicastReceivePort' => '1.3.6.1.2.1.17.7.1.3.1.1.2',
  'dot1qStaticUnicastAllowedToGoTo' => '1.3.6.1.2.1.17.7.1.3.1.1.3',
  'dot1qStaticUnicastStatus' => '1.3.6.1.2.1.17.7.1.3.1.1.4',
  'dot1qStaticUnicastStatusDefinition' => 'Q-BRIDGE-MIB::dot1qStaticUnicastStatus',
  'dot1qStaticMulticastTable' => '1.3.6.1.2.1.17.7.1.3.2',
  'dot1qStaticMulticastEntry' => '1.3.6.1.2.1.17.7.1.3.2.1',
  'dot1qStaticMulticastAddress' => '1.3.6.1.2.1.17.7.1.3.2.1.1',
  'dot1qStaticMulticastReceivePort' => '1.3.6.1.2.1.17.7.1.3.2.1.2',
  'dot1qStaticMulticastStaticEgressPorts' => '1.3.6.1.2.1.17.7.1.3.2.1.3',
  'dot1qStaticMulticastForbiddenEgressPorts' => '1.3.6.1.2.1.17.7.1.3.2.1.4',
  'dot1qStaticMulticastStatus' => '1.3.6.1.2.1.17.7.1.3.2.1.5',
  'dot1qStaticMulticastStatusDefinition' => 'Q-BRIDGE-MIB::dot1qStaticMulticastStatus',
  'dot1qVlan' => '1.3.6.1.2.1.17.7.1.4',
  'dot1qVlanNumDeletes' => '1.3.6.1.2.1.17.7.1.4.1',
  'dot1qVlanCurrentTable' => '1.3.6.1.2.1.17.7.1.4.2',
  'dot1qVlanCurrentEntry' => '1.3.6.1.2.1.17.7.1.4.2.1',
  'dot1qVlanTimeMark' => '1.3.6.1.2.1.17.7.1.4.2.1.1',
  'dot1qVlanIndex' => '1.3.6.1.2.1.17.7.1.4.2.1.2',
  'dot1qVlanFdbId' => '1.3.6.1.2.1.17.7.1.4.2.1.3',
  'dot1qVlanCurrentEgressPorts' => '1.3.6.1.2.1.17.7.1.4.2.1.4',
  'dot1qVlanCurrentEgressPortsDefinition' => 'Q-BRIDGE-MIB::PortList',
  'dot1qVlanCurrentUntaggedPorts' => '1.3.6.1.2.1.17.7.1.4.2.1.5',
  'dot1qVlanCurrentUntaggedPortsDefinition' => 'Q-BRIDGE-MIB::PortList',
  'dot1qVlanStatus' => '1.3.6.1.2.1.17.7.1.4.2.1.6',
  'dot1qVlanStatusDefinition' => 'Q-BRIDGE-MIB::dot1qVlanStatus',
  'dot1qVlanCreationTime' => '1.3.6.1.2.1.17.7.1.4.2.1.7',
  'dot1qVlanStaticTable' => '1.3.6.1.2.1.17.7.1.4.3',
  'dot1qVlanStaticEntry' => '1.3.6.1.2.1.17.7.1.4.3.1',
  'dot1qVlanStaticName' => '1.3.6.1.2.1.17.7.1.4.3.1.1',
  'dot1qVlanStaticEgressPorts' => '1.3.6.1.2.1.17.7.1.4.3.1.2',
  'dot1qVlanForbiddenEgressPorts' => '1.3.6.1.2.1.17.7.1.4.3.1.3',
  'dot1qVlanStaticUntaggedPorts' => '1.3.6.1.2.1.17.7.1.4.3.1.4',
  'dot1qVlanStaticRowStatus' => '1.3.6.1.2.1.17.7.1.4.3.1.5',
  'dot1qNextFreeLocalVlanIndex' => '1.3.6.1.2.1.17.7.1.4.4',
  'dot1qPortVlanTable' => '1.3.6.1.2.1.17.7.1.4.5',
  'dot1qPortVlanEntry' => '1.3.6.1.2.1.17.7.1.4.5.1',
  'dot1qPvid' => '1.3.6.1.2.1.17.7.1.4.5.1.1',
  'dot1qPortAcceptableFrameTypes' => '1.3.6.1.2.1.17.7.1.4.5.1.2',
  'dot1qPortAcceptableFrameTypesDefinition' => 'Q-BRIDGE-MIB::dot1qPortAcceptableFrameTypes',
  'dot1qPortIngressFiltering' => '1.3.6.1.2.1.17.7.1.4.5.1.3',
  'dot1qPortGvrpStatus' => '1.3.6.1.2.1.17.7.1.4.5.1.4',
  'dot1qPortGvrpFailedRegistrations' => '1.3.6.1.2.1.17.7.1.4.5.1.5',
  'dot1qPortGvrpLastPduOrigin' => '1.3.6.1.2.1.17.7.1.4.5.1.6',
  'dot1qPortRestrictedVlanRegistration' => '1.3.6.1.2.1.17.7.1.4.5.1.7',
  'dot1qPortVlanStatisticsTable' => '1.3.6.1.2.1.17.7.1.4.6',
  'dot1qPortVlanStatisticsEntry' => '1.3.6.1.2.1.17.7.1.4.6.1',
  'dot1qTpVlanPortInFrames' => '1.3.6.1.2.1.17.7.1.4.6.1.1',
  'dot1qTpVlanPortOutFrames' => '1.3.6.1.2.1.17.7.1.4.6.1.2',
  'dot1qTpVlanPortInDiscards' => '1.3.6.1.2.1.17.7.1.4.6.1.3',
  'dot1qTpVlanPortInOverflowFrames' => '1.3.6.1.2.1.17.7.1.4.6.1.4',
  'dot1qTpVlanPortOutOverflowFrames' => '1.3.6.1.2.1.17.7.1.4.6.1.5',
  'dot1qTpVlanPortInOverflowDiscards' => '1.3.6.1.2.1.17.7.1.4.6.1.6',
  'dot1qPortVlanHCStatisticsTable' => '1.3.6.1.2.1.17.7.1.4.7',
  'dot1qPortVlanHCStatisticsEntry' => '1.3.6.1.2.1.17.7.1.4.7.1',
  'dot1qTpVlanPortHCInFrames' => '1.3.6.1.2.1.17.7.1.4.7.1.1',
  'dot1qTpVlanPortHCOutFrames' => '1.3.6.1.2.1.17.7.1.4.7.1.2',
  'dot1qTpVlanPortHCInDiscards' => '1.3.6.1.2.1.17.7.1.4.7.1.3',
  'dot1qLearningConstraintsTable' => '1.3.6.1.2.1.17.7.1.4.8',
  'dot1qLearningConstraintsEntry' => '1.3.6.1.2.1.17.7.1.4.8.1',
  'dot1qConstraintVlan' => '1.3.6.1.2.1.17.7.1.4.8.1.1',
  'dot1qConstraintSet' => '1.3.6.1.2.1.17.7.1.4.8.1.2',
  'dot1qConstraintType' => '1.3.6.1.2.1.17.7.1.4.8.1.3',
  'dot1qConstraintTypeDefinition' => 'Q-BRIDGE-MIB::dot1qConstraintType',
  'dot1qConstraintStatus' => '1.3.6.1.2.1.17.7.1.4.8.1.4',
  'dot1qConstraintSetDefault' => '1.3.6.1.2.1.17.7.1.4.9',
  'dot1qConstraintTypeDefault' => '1.3.6.1.2.1.17.7.1.4.10',
  'dot1qConstraintTypeDefaultDefinition' => 'Q-BRIDGE-MIB::dot1qConstraintTypeDefault',
  'dot1vProtocol' => '1.3.6.1.2.1.17.7.1.5',
  'dot1vProtocolGroupTable' => '1.3.6.1.2.1.17.7.1.5.1',
  'dot1vProtocolGroupEntry' => '1.3.6.1.2.1.17.7.1.5.1.1',
  'dot1vProtocolTemplateFrameType' => '1.3.6.1.2.1.17.7.1.5.1.1.1',
  'dot1vProtocolTemplateFrameTypeDefinition' => 'Q-BRIDGE-MIB::dot1vProtocolTemplateFrameType',
  'dot1vProtocolTemplateProtocolValue' => '1.3.6.1.2.1.17.7.1.5.1.1.2',
  'dot1vProtocolGroupId' => '1.3.6.1.2.1.17.7.1.5.1.1.3',
  'dot1vProtocolGroupRowStatus' => '1.3.6.1.2.1.17.7.1.5.1.1.4',
  'dot1vProtocolPortTable' => '1.3.6.1.2.1.17.7.1.5.2',
  'dot1vProtocolPortEntry' => '1.3.6.1.2.1.17.7.1.5.2.1',
  'dot1vProtocolPortGroupId' => '1.3.6.1.2.1.17.7.1.5.2.1.1',
  'dot1vProtocolPortGroupVid' => '1.3.6.1.2.1.17.7.1.5.2.1.2',
  'dot1vProtocolPortRowStatus' => '1.3.6.1.2.1.17.7.1.5.2.1.3',
  'qBridgeConformance' => '1.3.6.1.2.1.17.7.2',
  'qBridgeGroups' => '1.3.6.1.2.1.17.7.2.1',
  'qBridgeCompliances' => '1.3.6.1.2.1.17.7.2.2',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'Q-BRIDGE-MIB'} = {
  'dot1vProtocolTemplateFrameType' => {
    '1' => 'ethernet',
    '2' => 'rfc1042',
    '3' => 'snap8021H',
    '4' => 'snapOther',
    '5' => 'llcOther',
  },
  'dot1qVlanVersionNumber' => {
    '1' => 'version1',
  },
  'dot1qTpFdbStatus' => {
    '1' => 'other',
    '2' => 'invalid',
    '3' => 'learned',
    '4' => 'self',
    '5' => 'mgmt',
  },
  'dot1qConstraintType' => {
    '1' => 'independent',
    '2' => 'shared',
  },
  'dot1qConstraintTypeDefault' => {
    '1' => 'independent',
    '2' => 'shared',
  },
  'dot1qStaticUnicastStatus' => {
    '1' => 'other',
    '2' => 'invalid',
    '3' => 'permanent',
    '4' => 'deleteOnReset',
    '5' => 'deleteOnTimeout',
  },
  'dot1qStaticMulticastStatus' => {
    '1' => 'other',
    '2' => 'invalid',
    '3' => 'permanent',
    '4' => 'deleteOnReset',
    '5' => 'deleteOnTimeout',
  },
  'dot1qPortAcceptableFrameTypes' => {
    '1' => 'admitAll',
    '2' => 'admitOnlyVlanTagged',
  },
  'dot1qVlanStatus' => {
    '1' => 'other',
    '2' => 'permanent',
    '3' => 'dynamicGvrp',
  },
  'PortList' => sub {
    my ($portlist) = @_;
    my @ports = ();
    my @octets = unpack("C*", $portlist);
    my $octetnumber = 0;
    foreach my $octet (@octets) {
      # octet represents ports $octetnumber*8+(1..8)
      my $index = 1;
      while ($octet) {
        next unless $octet & 0x80;
        push(@ports, $octetnumber * 8 + $index);
      } continue {
        ++$index;
        $octet = ($octet << 1) & 0xff;
      }
    } continue {
      ++$octetnumber;
    }
    @ports = do { my %seen; map { $seen{$_}++ ? () : $_ } @ports };
    return \@ports;
  },
};
