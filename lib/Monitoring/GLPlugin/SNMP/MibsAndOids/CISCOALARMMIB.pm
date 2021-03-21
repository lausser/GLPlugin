package Monitoring::GLPlugin::SNMP::MibsAndOids::CISCOALARMMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'CISCO-ALARM-MIB'} = {
  url  => 'https://mibs.observium.org/mib/CISCO-ALARM-MIB/',
  name => 'CISCO-ALARM-MIB'
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'CISCO-ALARM-MIB'} = 
  '1.3.6.1.4.1.9.9.869';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'CISCO-ALARM-MIB'} = {
  'coiAlarmActiveTable'                => '1.3.6.1.4.1.9.9.869.1.1.1',
  'coiAlarmActiveEntry'                => '1.3.6.1.4.1.9.9.869.1.1.1.1',
  'coiAlarmIndex'                      => '1.3.6.1.4.1.9.9.869.1.1.1.1.1',
  'coiAlarmServiceAffecting'           => '1.3.6.1.4.1.9.9.869.1.1.1.1.10',
  'coiAlarmServiceAffectingDefinition' => 'CISCO-ALARM-MIB::coiAlarmServiceAffecting',
  'coiAlarmDescription'                => '1.3.6.1.4.1.9.9.869.1.1.1.1.11',
  'coiAlarmObjectIfIndex'              => '1.3.6.1.4.1.9.9.869.1.1.1.1.2',
  'coiAlarmObjectEntPhyIndex'          => '1.3.6.1.4.1.9.9.869.1.1.1.1.3',
  'coiAlarmObjectName'                 => '1.3.6.1.4.1.9.9.869.1.1.1.1.4',
  'coiAlarmObjectType'                 => '1.3.6.1.4.1.9.9.869.1.1.1.1.5',
  'coiAlarmType'                       => '1.3.6.1.4.1.9.9.869.1.1.1.1.6',
  'coiAlarmTimeStamp'                  => '1.3.6.1.4.1.9.9.869.1.1.1.1.7',
  'coiAlarmSeverity'                   => '1.3.6.1.4.1.9.9.869.1.1.1.1.8',
  'coiAlarmSeverityDefinition'         => 'CISCO-ALARM-MIB::coiAlarmSeverity',
  'coiAlarmStatus'                     => '1.3.6.1.4.1.9.9.869.1.1.1.1.9',
  'coiAlarmStatusDefinition'           => 'CISCO-ALARM-MIB::coiAlarmStatus'
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'CISCO-ALARM-MIB'} = {
  'coiAlarmServiceAffecting' => {
    '0' => 'unknown',
    '1' => 'not_service_affecting',
    '2' => 'service_affecting'
  },
  'coiAlarmSeverity' => {
    '0' => 'unknown',
    '1' => 'not_reported',
    '2' => 'not_alarmed',
    '3' => 'minor',
    '4' => 'major',
    '5' => 'critical',
    '6' => 'severity_last'
  },
  'coiAlarmStatus' => {
    '0' => 'unknown',
    '1' => 'set',
    '2' => 'clear',
    '3' => 'suppress',
    '4' => 'last'
  }
};

1;

__END__
