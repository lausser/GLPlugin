package Monitoring::GLPlugin::SNMP::MibsAndOids::BAMSNMPMIB;

$Monitoring::GLPlugin::SNMP::MibsAndOids::origin->{'BAM-SNMP-MIB'} = {
  url => '',
  name => 'BAM-SNMP-MIB',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::mib_ids->{'BAM-SNMP-MIB'} =
    '1.3.6.1.4.1.13315.100.210';

$Monitoring::GLPlugin::SNMP::MibsAndOids::mibs_and_oids->{'BAM-SNMP-MIB'} = {
  'bam' => '1.3.6.1.4.1.13315.100.210',
  'app' => '1.3.6.1.4.1.13315.100.210.1',
  'common' => '1.3.6.1.4.1.13315.100.210.1.1',
  'version' => '1.3.6.1.4.1.13315.100.210.1.1.1',
  'startTime' => '1.3.6.1.4.1.13315.100.210.1.1.2',
  'startTimeDefinition' => 'MIB-2-MIB::DateAndTime',
  'notificationMessage' => '1.3.6.1.4.1.13315.100.210.1.1.3',
  'database' => '1.3.6.1.4.1.13315.100.210.1.2',
  'maxPoolSize' => '1.3.6.1.4.1.13315.100.210.1.2.1',
  'numConnections' => '1.3.6.1.4.1.13315.100.210.1.2.2',
  'deployer' => '1.3.6.1.4.1.13315.100.210.1.3',
  'serverCountInQueue' => '1.3.6.1.4.1.13315.100.210.1.3.1',
  'executingServerCount' => '1.3.6.1.4.1.13315.100.210.1.3.2',
  'numberOfTasks' => '1.3.6.1.4.1.13315.100.210.1.3.3',
  'eventNotification' => '1.3.6.1.4.1.13315.100.210.1.4',
  'queueCount' => '1.3.6.1.4.1.13315.100.210.1.4.1',
  'reconciliation' => '1.3.6.1.4.1.13315.100.210.1.5',
  'poolSize' => '1.3.6.1.4.1.13315.100.210.1.5.1',
  'scheduledDeployer' => '1.3.6.1.4.1.13315.100.210.1.6',
  'numOfTimers' => '1.3.6.1.4.1.13315.100.210.1.6.1',
  'running' => '1.3.6.1.4.1.13315.100.210.1.6.2',
  'scheduledTaskService' => '1.3.6.1.4.1.13315.100.210.1.7',
  'queueSize' => '1.3.6.1.4.1.13315.100.210.1.7.1',
  'replication' => '1.3.6.1.4.1.13315.100.210.1.8',
  'walFilesTotalSize' => '1.3.6.1.4.1.13315.100.210.1.8.1',
  'replicationNodeStatus' => '1.3.6.1.4.1.13315.100.210.1.8.2',
  'replicationNodeStatusDefinition' => 'BAM-SNMP-MIB::replicationNodeStatus',
  'replicationAverageLatency' => '1.3.6.1.4.1.13315.100.210.1.8.3',
  'replicationWarningThreshold' => '1.3.6.1.4.1.13315.100.210.1.8.4',
  'replicationBreakThreshold' => '1.3.6.1.4.1.13315.100.210.1.8.5',
  'replicationLatencyWarningThreshold' => '1.3.6.1.4.1.13315.100.210.1.8.6',
  'replicationLatencyCriticalThreshold' => '1.3.6.1.4.1.13315.100.210.1.8.7',
  'replicationStatusTable' => '1.3.6.1.4.1.13315.100.210.1.8.8',
  'replicationStatusEntry' => '1.3.6.1.4.1.13315.100.210.1.8.8.1',
  'hostname' => '1.3.6.1.4.1.13315.100.210.1.8.8.1.1',
  'ipv4Address' => '1.3.6.1.4.1.13315.100.210.1.8.8.1.2',
  'currentLatency' => '1.3.6.1.4.1.13315.100.210.1.8.8.1.3',
  'replicationHealth' => '1.3.6.1.4.1.13315.100.210.1.8.8.1.4',
  'replicationHealthDefinition' => 'BAM-SNMP-MIB::replicationHealth',
  'replicationRole' => '1.3.6.1.4.1.13315.100.210.1.8.8.1.5',
  'notification' => '1.3.6.1.4.1.13315.100.210.1.9',
  'messagesReceived' => '1.3.6.1.4.1.13315.100.210.1.9.1',
  'messagesAccepted' => '1.3.6.1.4.1.13315.100.210.1.9.2',
  'ackSent' => '1.3.6.1.4.1.13315.100.210.1.9.3',
  'messagesProcessed' => '1.3.6.1.4.1.13315.100.210.1.9.4',
  'dbBackup' => '1.3.6.1.4.1.13315.100.210.1.10',
  'lastSuccessfulBackupTime' => '1.3.6.1.4.1.13315.100.210.1.10.1',
  'lastSuccessfulBackupTimeDefinition' => 'MIB-2-MIB::DateAndTime',
  'lastSuccessfulRemoteBackupTime' => '1.3.6.1.4.1.13315.100.210.1.10.2',
  'lastSuccessfulRemoteBackupTimeDefinition' => 'MIB-2-MIB::DateAndTime',
  'jvm' => '1.3.6.1.4.1.13315.100.210.3',
  'freeMemory' => '1.3.6.1.4.1.13315.100.210.3.1',
  'maxMemory' => '1.3.6.1.4.1.13315.100.210.3.2',
  'gcTime' => '1.3.6.1.4.1.13315.100.210.3.3',
  'usageThresholdExceeded' => '1.3.6.1.4.1.13315.100.210.3.4',
  'activeThreadCount' => '1.3.6.1.4.1.13315.100.210.3.5',
  'traps' => '1.3.6.1.4.1.13315.100.210.255',
};

$Monitoring::GLPlugin::SNMP::MibsAndOids::definitions->{'BAM-SNMP-MIB'} = {
  'replicationNodeStatus' => {
    '0' => 'standalone',
    '1' => 'primary',
    '2' => 'standby',
  },
  'replicationHealth' => {
    '0' => 'Not Replicating',
    '1' => 'Initializing',
    '2' => 'Replicating',
  }
};
