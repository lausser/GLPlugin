package Monitoring::GLPlugin::SNMP::MibsAndOids::HUAWEIENERGYMNGTMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'HUAWEI-ENERGYMNGT-MIB'} = {
  url => '',
  name => 'HUAWEI-ENERGYMNGT-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'HUAWEI-ENERGYMNGT-MIB'} = {
    hwPowerConsumptionTable  => '1.3.6.1.4.1.2011.6.157',
    hwPowerConsumptionEntry  => '1.3.6.1.4.1.2011.6.157.1',
    hwPowerConsumption       => '1.3.6.1.4.1.2011.6.157.1.1',
    hwPowerStatPeriod        => '1.3.6.1.4.1.2011.6.157.1.2',

    hwAveragePower           => '1.3.6.1.4.1.2011.6.157.1.3',
    hwRatedPower             => '1.3.6.1.4.1.2011.6.157.1.4',
    hwCurrentPower           => '1.3.6.1.4.1.2011.6.157.1.6',
};

1;

__END__
