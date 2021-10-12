#!/usr/bin/perl
use strict;
use XML::Simple;


my $CMD="/home/paraccel/padb/rel/bin/cqi csm -v xml";
my $RES= `$CMD`;
my $xs=XML::Simple->new();
my $ref=$xs->XMLin($RES);
my @ary=@{$ref->{nodes}->{n}};

for(my $i=0;$i<=$#ary;$i++){
    if($ref->{nodes}->{n}->[$i]->{state} eq "UP"){$ref->{nodes}->{n}->[$i]->{state}=1;}else{$ref->{nodes}->{n}->[$i]->{state}=0;}
    print "$ref->{nodes}->{n}->[$i]->{addr_str} port:$ref->{nodes}->{n}->[$i]->{port} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} en_addr:$ref->{nodes}->{n}->[$i]->{en_addr} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} en_addr_str:$ref->{nodes}->{n}->[$i]->{en_addr_str} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} build:$ref->{nodes}->{n}->[$i]->{build} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} svn_tag:$ref->{nodes}->{n}->[$i]->{svn_tag} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} revision:$ref->{nodes}->{n}->[$i]->{revision} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} up_time:$ref->{nodes}->{n}->[$i]->{up_time} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} last_ping:$ref->{nodes}->{n}->[$i]->{last_ping} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} sync:$ref->{nodes}->{n}->[$i]->{sync} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} state:$ref->{nodes}->{n}->[$i]->{state} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} signal:$ref->{nodes}->{n}->[$i]->{signal} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} errno:$ref->{nodes}->{n}->[$i]->{errno} \n";
    print "$ref->{nodes}->{n}->[$i]->{addr_str} working:$ref->{nodes}->{n}->[$i]->{working} \n";
}
