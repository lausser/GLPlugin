package Monitoring::GLPlugin::SNMP::MibsAndOids::FIBERSTOREPRODUCTSMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'FIBERSTORE-PRODUCTS-MIB'} = {
  url => '',
  name => 'FIBERSTORE-PRODUCTS-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'FIBERSTORE-PRODUCTS-MIB'} =
    '1.3.6.1.4.1.52642.1.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'FIBERSTORE-PRODUCTS-MIB'} = {
    fsSystemInfo => '1.3.6.1.4.1.52642.1.1.1',
    fsMemTotal => '1.3.6.1.4.1.52642.1.1.1.5',
    fsMemUsed => '1.3.6.1.4.1.52642.1.1.1.11',
    fsMemFree => '1.3.6.1.4.1.52642.1.1.1.12',
    fsMemUsagePct => '1.3.6.1.4.1.52642.1.1.1.13.1.5',
    fsMemWarnThreshold => '1.3.6.1.4.1.52642.1.1.1.13.1.6',
    fsMemCritThreshold => '1.3.6.1.4.1.52642.1.1.1.13.1.7',
    fsCpuTable => '1.3.6.1.4.1.52642.1.1.2',
    fsCpuEntry => '1.3.6.1.4.1.52642.1.1.2.1',
    fsCpuCount => '1.3.6.1.4.1.52642.1.1.2.1.0',
    fsCpuUsage => '1.3.6.1.4.1.52642.1.1.2.11',
    fsDiskTable => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1',
    fsDiskEntry => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.1',
    fsDiskTotal => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.2',
    fsDiskUsed => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.3',
    fsDiskMount => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.4',
    fsDiskDescr => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.6',
};
