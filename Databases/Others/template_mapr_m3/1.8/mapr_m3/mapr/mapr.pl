#!/usr/bin/perl
use JSON qw(encode_json) ;
use strict;

my $FILE="/tmp/zabbix_mapr_monitor";
my $req=$ARGV[0];
my $node=$ARGV[1];
my $src;

open(F,$FILE) or die $!;
while (<F>){$src.=$_;}

my $json = new JSON;
my $json_text=$json->decode($src);
my @ary=@{$json_text->{data}};

if($req eq "" and $node eq ""){
    my $JSON="{ \"data\":[";
    foreach (0..$#ary){
	my $i=$_;
	my $hostname = $json_text->{data}->[$i]->{hostname};
	if($i!=0){$JSON.=",";}
	$JSON.="{ \"{#NODE}\":\"$hostname\"}";
    }
    $JSON.="]}\n";
    print $JSON;
    exit;
}
if($req ne "" and $node ne ""){
    my $val;
    foreach (0..$#ary){
	my $i=$_;
	my $hostname = $json_text->{data}->[$i]->{hostname};
	if($hostname eq $node and $node ne "all"){
	    $val=$json_text->{data}->[$i]->{$req};
	}
	if($node eq "all"){
	    $val+=$json_text->{data}->[$i]->{$req};
	}
    }
    print "$val\n";
    exit;
}

