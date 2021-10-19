#!/usr/bin/perl

use strict;
no warnings;

my $server = $ARGV[0];
my $resource = $ARGV[1];

my $user = '<admin>';
my $pass = '<password>';
my $port = 6603;

my $maxadmin_cmd = '/usr/bin/maxadmin';
my $TIMEOUT = 15;  # we don't want to wait long for a response

exit(1) if not defined $server or not defined $resource;

my $curr_script = "$0";
$curr_script =~ s{.*/}{};

-x $maxadmin_cmd or
    die "$curr_script: Failed to find required tool: $maxadmin_cmd. Please or point to another location.";

alarm($TIMEOUT);

my $command = $maxadmin_cmd . ' -h ' . $server . ' -u ' . $user . ' -p "' . $pass . '" -P ' . $port . ' ' . "list " . $resource;

open (MAXSCALE, "$command 2>&1 |") or die "can't get data out of Maxscale: $!";

my $start_output = 0;

my $resource_type = $resource;
chop($resource_type);

my $resource_match = ucfirst("$resource_type Name");

if ($resource_type eq "listener") {
        $resource_match = "Service Name";
}

if ($resource_type eq "monitor") {
        $resource_match = "Monitor";
}

if ($resource_type eq "server") {
        $resource_match = "Server";
}

# Output data in JSON format:

print "{\n";
print "        \"data\":[\n";

my $flag = 0;

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
        if($flag eq 1) {
            print ",\n"; 
        }
        print "                {\n";
        print "                        \"{#CLASS}\":\"$resource_type\",\n";
        print "                        \"{#KEY}\":\"$data_row[0]\",\n";
        print "                        \"{#TYPE}\":\"character\"}";
        $flag = 1;
    }
}

print "]}\n";

close MAXSCALE;
