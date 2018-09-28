package Monitoring::GLPlugin::SNMP::MibsAndOids::HUAWEIMEMORYMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'HUAWEI-MEMORY-MIB'} = {
  url => '',
  name => 'HUAWEI-MEMORY-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'HUAWEI-MEMORY-MIB'} = {
    hwMemoryDevTable            => '1.3.6.1.4.1.2011.6.3.5',
    hwMemoryDevEntry            => '1.3.6.1.4.1.2011.6.3.5.1.1',
    hwMemoryDevModuleIndex      => '1.3.6.1.4.1.2011.6.3.5.1.1.1',
    hwMemoryDevSize             => '1.3.6.1.4.1.2011.6.3.5.1.1.2',
    hwMemoryDevFree             => '1.3.6.1.4.1.2011.6.3.5.1.1.3',
};

1;

__END__
