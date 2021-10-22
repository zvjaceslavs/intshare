#!/usr/bin/perl

use strict;
no warnings;

my $server = $ARGV[0];
my $resource = $ARGV[1];
my $key = $ARGV[2];

my $user = '<admin>';
my $pass = '<password>';
my $port = 6603;

my $maxadmin_cmd = '/usr/bin/maxadmin';
my $TIMEOUT = 15;  # we don't want to wait long for a response

exit(1) if not defined $server or not defined $resource or not defined $key;

my $curr_script = "$0";
$curr_script =~ s{.*/}{};

-x $maxadmin_cmd or
    die "$curr_script: Failed to find required tool: $maxadmin_cmd. Please or point to another location.";

alarm($TIMEOUT);

my $MAXADMIN_RESOURCE = '';
if ($resource eq 'srvconns') {
    $MAXADMIN_RESOURCE = 'servers';}
else {
    $MAXADMIN_RESOURCE =  $resource;
}

my $command = $maxadmin_cmd . ' -h ' . $server . ' -u ' . $user . ' -p "' . $pass . '" -P ' . $port . ' ' . "list " . $MAXADMIN_RESOURCE;

alarm($TIMEOUT);

open (MAXSCALE, "$command 2>&1 |") or die "can't get data out of Maxscale: $!";

my $start_output = 0;

my $resource_type = $MAXADMIN_RESOURCE;
chop($resource_type);

my $resource_match = ucfirst("$resource_type Name");

my $status_column = 0;
my $TOTAL_CONNS = 0;

if ($resource_type eq "listener") {
        $resource_match = "Service Name";
        $status_column = 4; # 5th column
}

if ($resource_type eq "monitor") {
        $resource_match = "Monitor";
        $status_column = 1; # 2nd column
}

if ($resource_type eq "server") {
        $resource_match = "Server";
        if ($resource eq "srvconns") {
            $status_column = 3; # 4th column
            $TOTAL_CONNS = 0; # Reset total counter
        } else {
            $status_column = 4; # 5th column
        }
}

# Output data:

while ( <MAXSCALE> ) {
    chomp;

    if ( /(Failed|Unable) to connect to MaxScale/ ) {
        printf "CRITICAL: $_\n";
    close(MAXSCALE);
        exit(2);
    }

    if ( ! /^$resource_match/ ) {
    } else {
    $start_output = 1;
    next;
    }
    if ($start_output) {
    next if (/--/ || $_ eq '');
        my @data_row = split('\|', $_);
        $data_row[0] =~ s/\s+$//;
        if ($data_row[0] eq $key) {
            $data_row[$status_column] =~ s/^\s+|\s+$//g;
            print $data_row[$status_column];
        }

        # This part handles the counter for Total Connections

        if ($key eq "TOTAL_CONNS") {
            if ($data_row[4] =~ /Running/) {
                $TOTAL_CONNS += $data_row[3];
            }
        }
    }
}

if ($key eq "TOTAL_CONNS") {
    print $TOTAL_CONNS;
}

close MAXSCALE;
