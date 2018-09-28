package Monitoring::GLPlugin::SNMP::MibsAndOids::HUAWEICPUMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'HUAWEI-CPU-MIB'} = {
  url => '',
  name => 'HUAWEI-CPU-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'HUAWEI-CPU-MIB'} = {
    hwCpuDevTable            => '1.3.6.1.4.1.2011.6.3.4',
    hwCpuDevEntry            => '1.3.6.1.4.1.2011.6.3.4.1',
    hwCpuDevIndex            => '1.3.6.1.4.1.2011.6.3.4.1.1',
    hwCpuDevDuty             => '1.3.6.1.4.1.2011.6.3.4.1.2',
};

1;

__END__
