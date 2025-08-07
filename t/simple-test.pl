#!/usr/bin/perl

use strict;
use warnings;
use Net::SNMP;

# Replace these with actual values as needed
my $host      = '127.0.0.1';    # Target SNMP-enabled device or localhost
my $community = 'public';       # Default SNMP community; change if needed

# SNMP sysUpTime OID
my $sysuptime_oid = '1.3.6.1.2.1.1.3.0';

# Open an SNMP session (v2c)
my ($session, $error) = Net::SNMP->session(
    -hostname  => $host,
    -community => $community,
    -version   => 'snmpv2c',
    -timeout   => 3,
);

if (!defined $session) {
    die "ERROR: $error\n";
}

# Perform the SNMP get-request
my $result = $session->get_request(-varbindlist => [$sysuptime_oid]);

if (!defined $result) {
    printf "SNMP GET Error: %s\n", $session->error();
    $session->close();
    exit 1;
}

printf "sysUpTime: %s\n", $result->{$sysuptime_oid};

$session->close();

