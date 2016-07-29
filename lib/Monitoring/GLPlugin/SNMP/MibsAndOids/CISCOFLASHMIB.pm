package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOFLASHMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-FLASH-MIB'} = {
  url => '',
  name => 'CISCO-FLASH-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-FLASH-MIB'} =
  '1.3.6.1.4.1.9.9.10';


$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-FLASH-MIB'} = {
  'ciscoFlashDevicesSupported'   => '1.3.6.1.4.1.9.9.10.1.1.1',
  'ciscoFlashPartitionTable'     => '1.3.6.1.4.1.9.9.10.1.1.4.1',
  'ciscoFlashPartitionEntry'     => '1.3.6.1.4.1.9.9.10.1.1.4.1.1',
  'ciscoFlashPartitionIndex'     => '1.3.6.1.4.1.9.9.10.1.1.4.1.1.1',
  'ciscoFlashPartitionSize'      => '1.3.6.1.4.1.9.9.10.1.1.4.1.1.4',
  'ciscoFlashPartitionFreeSpace' => '1.3.6.1.4.1.9.9.10.1.1.4.1.1.5',
  'ciscoFlashPartitionStatus'    => '1.3.6.1.4.1.9.9.10.1.1.4.1.1.8',
  'ciscoFlashPartitionName'      => '1.3.6.1.4.1.9.9.10.1.1.4.1.1.10',
};


1;

__END__
