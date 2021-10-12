#!/usr/bin/perl
use JSON qw(encode_json) ;
use strict;

my $FILE="/tmp/zabbix_mapr_dashboard";
my $req=$ARGV[0];
my $src;

open(F,$FILE) or die $!;
while (<F>){$src.=$_;}

my $json = new JSON;
my $json_text=$json->decode($src);
my $main_json='$json_text->{data}->[0]';

my @ary=split (/\./,$req);
my $req_json=$main_json;
foreach (0..$#ary){
    my $i=$_;
    $req_json.="->{$ary[$i]}";
}

my $res= eval $req_json || 0;
print "$res\n";
