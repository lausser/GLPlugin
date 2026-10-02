package Monitoring::GLPlugin::SNMP::MibsAndOids::FIBERSTOREPRODUCTSMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'FIBERSTORE-PRODUCTS-MIB'} = {
  url => '',
  name => 'FIBERSTORE-PRODUCTS-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'FIBERSTORE-PRODUCTS-MIB'} =
    '1.3.6.1.4.1.52642.1';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'FIBERSTORE-PRODUCTS-MIB'} = {
    fsSystemInfo => '1.3.6.1.4.1.52642.1.1.1',
    fsMemTotal => '1.3.6.1.4.1.52642.1.1.1.5',
    fsMemFree => '1.3.6.1.4.1.52642.1.1.1.11',
    fsMemUsed => '1.3.6.1.4.1.52642.1.1.1.12',
    fsMemUsagePct => '1.3.6.1.4.1.52642.1.1.1.13.1.5',
    fsMemWarnThreshold => '1.3.6.1.4.1.52642.1.1.1.13.1.6',
    fsMemCritThreshold => '1.3.6.1.4.1.52642.1.1.1.13.1.7',
    fsCpuTable => '1.3.6.1.4.1.52642.1.1.9.13',
    fsCpuEntry => '1.3.6.1.4.1.52642.1.1.9.13.1',
    fsCpuUsage => '1.3.6.1.4.1.52642.1.1.9.13.1.2.0',
    fsDiskTable => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1',
    fsDiskEntry => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.1',
    fsDiskTotal => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.2',
    fsDiskFree => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.3',
    fsDiskMount => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.4',
    fsDiskDescr => '1.3.6.1.4.1.52642.1.1.5.1.1.1.1.6',

    # ---- S5850 (FSOS-DC) environmental extensions ----
    # Reverse-engineered from SNMP walks
    # Fan tray / rotor table, indexed as .<col>.1.<tray>.<rotor>
    fsFanTable         => '1.3.6.1.4.1.52642.1.37.1.1.1.1',
    fsFanEntry         => '1.3.6.1.4.1.52642.1.37.1.1.1.1',
    fsFanPresent       => '1.3.6.1.4.1.52642.1.37.1.1.1.1.1',
    fsFanTrayIndex     => '1.3.6.1.4.1.52642.1.37.1.1.1.1.2',
    fsFanRotorIndex    => '1.3.6.1.4.1.52642.1.37.1.1.1.1.3',
    fsFanStatus        => '1.3.6.1.4.1.52642.1.37.1.1.1.1.4',
    fsFanStatusDefinition => {
        '1' => 'ok',
        '2' => 'fault',
        '3' => 'not installed',
        '4' => 'unsupported',
    },
    fsFanSpeedPct      => '1.3.6.1.4.1.52642.1.37.1.1.1.1.5',

    # PSU table, indexed as .<col>.<psuIndex>
    fsPsuTable    => '1.3.6.1.4.1.52642.1.37.1.2.1',
    fsPsuEntry    => '1.3.6.1.4.1.52642.1.37.1.2.1',
    fsPsuPresent  => '1.3.6.1.4.1.52642.1.37.1.2.1.3',
    fsPsuPresentDefinition => {
        '1' => 'present',
        '2' => 'absent',
        '3' => 'not installed',
        '4' => 'unsupported',
    },
    fsPsuState    => '1.3.6.1.4.1.52642.1.37.1.2.1.4',
    fsPsuStateDefinition => {
        '1' => 'AC',
        '2' => 'DC',
        '3' => 'fault',
        '4' => 'not installed',
        '5' => 'unsupported',
    },
    fsPsuPowered  => '1.3.6.1.4.1.52642.1.37.1.2.1.7',
    fsPsuPoweredDefinition => {
        '1' => 'powered',
        '2' => 'noPower',
    },
    fsPsuCurrentPower => '1.3.6.1.4.1.52642.1.37.1.2.1.9',

    # Temperature sensor table
    fsTempTable         => '1.3.6.1.4.1.52642.1.37.1.3.1.4',
    fsTempEntry         => '1.3.6.1.4.1.52642.1.37.1.3.1.4.1',
    fsTempCurrent       => '1.3.6.1.4.1.52642.1.37.1.3.1.4.1.1',
    fsTempCriticalLimit => '1.3.6.1.4.1.52642.1.37.1.3.1.5.1.1',
    fsTempUpperLimit    => '1.3.6.1.4.1.52642.1.37.1.3.1.6.1.1',
    fsTempLowerLimit    => '1.3.6.1.4.1.52642.1.37.1.3.1.7.1.1',
};
