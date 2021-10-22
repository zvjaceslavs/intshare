#!/usr/bin/speedy

use warnings;
use strict;
use LWP::UserAgent;
use LWP::Protocol::https;
use Digest::MD5 qw(md5_hex);
use XML::Simple;
use Data::Dumper;
use JSON;


$ENV{'PERL_LWP_SSL_VERIFY_HOSTNAME'} = 0; # No SSL cert verification

sub getHPP200Objects {
    my $ua = shift;
    my $sessionKey = shift;
    my $url = shift;
    my $objectName = shift;
    my $idName = shift;
    my $type = shift;
    my $zbxArray = shift;

    my $req = HTTP::Request->new(GET => $url);
    $req->header('sessionKey' => $sessionKey );
    $req->header('dataType' => 'api' );
    my $res = $ua->request($req);
    my $ref = XMLin($res->content, KeyAttr => "oid");
    foreach my $oid (values %{$ref->{OBJECT}}) {
        if ($oid->{name} eq $objectName) {
            my $reference;
            foreach my $entry (@{$oid->{PROPERTY}}) {
                if ($entry->{name} =~ /^($idName)$/) {
                    $reference = {'{#KEY}' => $entry->{content}, '{#CLASS}' => $type};
                    last;
                }
            }
            push @{$zbxArray}, {%{$reference}};
        }
    }
} 

sub getHPP2000StatObj {
 #print "Funktion";
    my $ua = shift;
    my $sessionKey = shift;
    my $url = shift;
    my $objectName = shift;
    my $idName = shift;
    my $id = shift;
    my $key = shift;
    my $req = HTTP::Request->new(GET => $url);
    $req->header('sessionKey' => $sessionKey );
    $req->header('dataType' => 'api' );
    my $res = $ua->request($req);
    my $ref = XMLin($res->content, KeyAttr => "oid");
    foreach my $oid (values %{$ref->{OBJECT}}) {
        if ($oid->{name} eq $objectName) {
#print Dumper(\$oid);
            my $reference;
            my $hashKey = {};
            #print $oid->{'PROPERTY'}[0]->{'content'};
            foreach my $entry (@{$oid->{PROPERTY}}) {
		
                if($entry->{name} eq $idName && $entry->{content} eq $id){
                    foreach my $entry2 (@{$oid->{PROPERTY}}) {
                        if($entry2->{name} eq $key){
                            print $entry2->{content};
				return;
                        }
                    }
                last;
                }
            }
        }
    }
}


sub logOut {
    my $ua = shift;
    my $sessionKey = shift;
    my $hostname = shift;    

    my $url = "https://$hostname/api/exit";
    my $req = HTTP::Request->new(GET => $url);
    $req->header('sessionKey' => $sessionKey );
    $req->header('dataType' => 'api' );
    $ua->request($req);
}

my $hostname = $ARGV[0] or die("Usage: hp-msa.pl <HOSTNAME> <USERNAME> <PASSWORD> [lld|stats]");
my $USERNAME = $ARGV[1] or die("Usage: hp-msa.pl <HOSTNAME> <USERNAME> <PASSWORD> [lld|stats]");
my $PASSWORD = $ARGV[2] or die("Usage: hp-msa.pl <HOSTNAME> <USERNAME> <PASSWORD> [lld|stats]");
my $function = $ARGV[3] || 'lld';

die("Usage: hp-msa.pl <HOSTNAME> <USERNAME> <PASSWORD> [lld|stats]") unless ($function =~ /^(lld|stats|data)$/);

sleep (int(rand(4)) + 1); #Random delay 1-5 seconds

my $md5_data = "${USERNAME}_${PASSWORD}";
my $md5_hash = md5_hex( $md5_data );

my $ua = LWP::UserAgent->new;
my $url = "https://$hostname/api/login/" . $md5_hash;
my $req = HTTP::Request->new(GET => $url);
my $res = $ua->request($req);

my $ref = XMLin($res->content);
my $sessionKey;

if (exists $ref->{OBJECT}->{PROPERTY}->{"return-code"} && $ref->{OBJECT}->{PROPERTY}->{"return-code"}->{content} == 1) {
    $sessionKey = $ref->{OBJECT}->{PROPERTY}->{"response"}->{content};
} else {
    die($ref->{OBJECT}->{PROPERTY}->{"response"}->{content});
}

if ($function eq 'lld') {
    my $zbxArray = [];
    if($ARGV[4] eq "disk"){
        getHPP200Objects ( $ua, $sessionKey, "https://$hostname/api/show/disks", "drive", "durable-id", "Disk", $zbxArray);
    }
    elsif($ARGV[4] eq "controller"){
        getHPP200Objects ( $ua, $sessionKey, "https://$hostname/api/show/controllers", "controllers", "controller-id", "Controller", $zbxArray);
    }
    elsif($ARGV[4] eq "volume"){
        getHPP200Objects ( $ua, $sessionKey, "https://$hostname/api/show/volumes", "volume", "volume-name", "Volume", $zbxArray);
    }
    elsif($ARGV[4] eq "vdisk"){
        getHPP200Objects ( $ua, $sessionKey, "https://$hostname/api/show/vdisks", "virtual-disk", "name", "Vdisk", $zbxArray);
    }
    elsif($ARGV[4] eq "enclosure"){
        getHPP200Objects ( $ua, $sessionKey, "https://$hostname/api/show/enclosures", "enclosures", "enclosure-id", "Enclosure", $zbxArray);
    }

    print to_json({data => $zbxArray} , { ascii => 1, pretty => 1 }) . "\n";

    logOut($ua, $sessionKey, $hostname);
} 
elsif($function eq "data") {
    if($ARGV[4] eq "disk"){
    	getHPP2000StatObj ( $ua, $sessionKey, "https://$hostname/api/show/disks", "drive", "durable-id", $ARGV[5], $ARGV[6]);
    }
    elsif($ARGV[4] eq "controller"){
       getHPP2000StatObj ( $ua, $sessionKey, "https://$hostname/api/show/controllers", "controllers", "controller-id", $ARGV[5], $ARGV[6]);
    }
    elsif($ARGV[4] eq "volume"){
       getHPP2000StatObj ( $ua, $sessionKey, "https://$hostname/api/show/volumes", "volume", "volume-name", $ARGV[5], $ARGV[6]);
    }
    elsif($ARGV[4] eq "vdisk"){
       getHPP2000StatObj ( $ua, $sessionKey, "https://$hostname/api/show/vdisks", "virtual-disk", "name", $ARGV[5], $ARGV[6]);
    }
    elsif($ARGV[4] eq "enclosure"){
       getHPP2000StatObj ( $ua, $sessionKey, "https://$hostname/api/show/enclosures", "enclosures", "enclosure-id", $ARGV[5], $ARGV[6]);
    }
    logOut($ua, $sessionKey, $hostname);
}
