#!/usr/bin/perl
#
# Get latest ASSP stats
#
use English '-no_match_vars'; use Getopt::Long qw(:config auto_version auto_help); use LWP::Simple;
# Set defaults
my $statsUrl = "http://127.0.0.1:55553"; 
my $sender = "zabbix_sender"; 
my $server = "localhost"; 
my $port = "10051"; 
my $host = "localhost"; 
my $tmpFile = "/tmp/zabbix_assp_stats.txt"; 
my $verbose = 0; 
my $sinceReset	= 0; 
my $senderLimit	= 25;
# Get command line options
$result = GetOptions(
        "statsurl=s"	=>	\$statsUrl,
        "sender=s" => \$sender,
        "server=s" => \$server,
        "port=i" => \$port,
        "host=s" => \$host,
        "tmpfile=s" => \$tmpFile,
        "sincereset!"	=>	\$sinceReset,
        "senderlimit=i"	=>	\$senderLimit,
        "verbose!"		=>	\$verbose ); 
my $arrayOffset = $sinceReset ? 1 : 0; 
my @pageContent = split("\n", get($statsUrl)); 

@sendfile = (
	["current_health_status","Current healthy status"],
	['proxy_uptime', 'ASSP Proxy Uptime', 1, '(\d\.\d+) days'],
	['non_local_mail_blocked', 'Non-Local Mail Blocked', 1, '(\d(\.\d+)?)%'],
	['cpu_usage', 'CPU Usage', 1, '(\d+\.\d+)%'],
	['concurrent_smtp_sessions', 'Concurrent SMTP Sessions', 1, '(\d+) \(\d+ max\)'],
	['concurrent_smtp_sessions_max', 'Concurrent SMTP Sessions', 1, '\d+ \((\d+) max\)'],
	["smtp_connections_received", "SMTP Connections Received"],
	["smtp_connections_accepted", "SMTP Connections Accepted"],
	["smtp_connections_rejected", "SMTP Connections Rejected"],
	["envelope_recipients_processed", "Envelope Recipients Processed"],
	["envelope_recipients_accepted", "Envelope Recipients Accepted"],
	["envelope_recipients_rejected", "Envelope Recipients Rejected"],
	["messages_processed", "Messages Processed", 2],
	["messages_passed", "Messages Passed"],
	["messages_rejected", "Messages Rejected"],
	["admin_connections_received", "Admin Connections Received"],
	["admin_connections_accepted", "Admin Connections Accepted"],
	["admin_connections_refused", "Admin Connections Rejected"],
	["stat_connections_received", "Stat Connections Received"],
	["stat_connections_accepted", "Stat Connections Accepted"],
	["stat_connections_refused", "Stat Connections Rejected"],
	["accepted_logged_smtp_connections", "Accepted Logged SMTP Connections"],
	["not_logged_smtp_connections", "Not Logged SMTP Connections"],
	["smtp_connection_limits", "SMTP Connection Limits"],
	["overall_limits", "Overall Limits"],
	["by_ip_limits", "By IP Limits"],
	["by_ip_frequency_limits", "By IP Frequency Limits"],
	["by_domain_ip_limits", "By Domain IP Limits"],
	["smtp_connections_timeout", "SMTP Connections Timeout"],
	["denied_smtp_connections", "Denied SMTP Connections"],
	["local_recipients_accepted", "Local Recipients Accepted"],
	["validated_recipients", "Validated Recipients"],
	["unchecked_recipients", "Unchecked Recipients"],
	["spam_lover_recipients", "Spam-Lover Recipients"],
	["remote_recipients_accepted", "Remote Recipients Accepted"],
	["whitelisted_recipients", "Whitelisted Recipients"],
	["not_whitelisted_recipients", "Not Whitelisted Recipients"],
	["noprocessed_recipients", "Noprocessed Recipients"],
	["email_reports", "Email Reports"],
	["spam_reports", "Spam Reports"],
	["ham_reports", "Ham Reports"],
	["whitelist_additions", "Whitelist Additions"],
	["whitelist_deletions", "Whitelist Deletions"],
	["redlist_additions", "Redlist Additions"],
	["redlist_deletions", "Redlist Deletions"],
	["local_recipients_rejected", "Local Recipients Rejected"],
	["nonexistent_recipients", "Nonexistent Recipients"],
	["delayed_recipients", "Delayed Recipients"],
	["delayed_late_recipients", "Delayed (Late) Recipients"],
	["delayed_expired_recipients", "Delayed (Expired) Recipients"],
	["embargoed_recipients", "Embargoed Recipients"],
	["spam_bucketed_recipients", "Spam Bucketed Recipients"],
	["remote_recipients_rejected", "Remote Recipients Rejected"],
	["relay_attempts_rejected", "Relay Attempts Rejected"],
	["bayesian_hams", "Bayesian Hams"],
	["whitelisted", "Whitelisted"],
	["local", "Local"],
	["noprocessing", "Noprocessing"],
	["spamlover_spams_passed", "Spamlover Spams Passed"],
	["bayesian_spams", "Bayesian Spams"],
	["domains_blacklisted", "Domains Blacklisted"],
	["helo_blacklisted", "HELO Blacklisted"],
	["helo_invalid", "HELO Invalid"],
	["helo_forged", "HELO Forged"],
	["missing_mx", "Missing MX"],
	["missing_ptr", "Missing PTR"],
	["invalid_ptr", "Invalid PTR"],
	["spam_collected_messages", "Spam Collected Messages"],
	["penalty_trap_messages", "Penalty Trap Messages"],
	["bad_attachments", "Bad Attachments"],
	["viruses_detected", "Viruses Detected"],
	["sender_regex", "Sender Regex"],
	["bomb_regex", "Bomb Regex"],
	["penalty_box", "Penalty Box"],
	["message_scoring", "Message Scoring"],
	["invalid_local_sender", "Invalid Local Sender"],
	["invalid_internal_mail", "Invalid Internal Mail"],
	["scripts", "Scripts"],
	["spf_failures", "SPF Failures"],
	['rbl_failures', 'RBL Failures'],
	['uribl_failures', 'URIBL Failures'],
	['max_errors_exceeded', 'Max Errors Exceeded'],
	['delayed', 'Delayed'],
	['empty_recipient', 'Empty Recipient'],
	['not_srs_signed_bounces', 'Not SRS Signed Bounces'],
);
	
my $files = write_tmpfile(@sendfile); 
if ($files > 1) {
	$i = 0;
	while ($i < $files) {
		send_file($tmpFile . $i);
		$i++;
	}
} else {
	send_file($tmpFile);
}

# exit here for debugging purposes - keeps output files from being removed
#exit 0;
if ($files > 1) {
	my $i = 0;
	while ($i < $files) {
		unlink($tmpFile . $i);
		$i++;
	}
} else {
	unlink($tmpFile);
}
exit 0; 

sub send_file {
	my $vv = ($verbose) ? " -vv" : "";
	system("$sender --zabbix-server '$server' --port '$port' -i '$_[0]'$vv");
}
sub write_tmpfile {
	my @array = @_;
	my $size = @array;
	
	my $remainder = $size % $senderLimit;
	my $files = ($size - $remainder) / $senderLimit;
	
	if ($remainder > 0) {
		$files++;
	}
	
	if ($files > 1) {
		my $i = 0;
		while ($i < $files) {
			unlink($tmpFile . $i);
			$i++;
		}
	} else {
		unlink($tmpFile);
	}
	
	$idx = 0;
	while($idx < $files) {
		
		if ($files > 1) {
			open(TMPFILE, ">>" . $tmpFile . $idx);
		} else {
			open(TMPFILE, ">>" . $tmpFile);
		}
		
		$id = 0;
		$aid = ($idx * $senderLimit);
		
		my $limit = $senderLimit;
		if (($remainder > 0) && ($idx == $files - 1)) {
			$limit = $remainder;
		}
		
		while ($id < $limit) {
			my $value = get_value($array[$aid][1], $array[$aid][2]);
			
			if ($array[$aid][3]) {
				$value = $1 if ($value =~ /$array[$aid][3]/g);
			}
			
			print TMPFILE "$host assp[$array[$aid][0]] " . $value . "\n";
			$id++;
			$aid++;
		}
		
		close(TMPFILE);
		
		$idx++;
	}
	
	return $files;
}
sub get_value {
	my $title = $_[0];
	my $searchOffset	= $_[1];
	
	if ($arrayOffset !~ /^\d+$/) {
		$arrayOffset = 0;
	}
	
	my @array = get_values($title, $searchOffset);
	
	my $result = $array[$arrayOffset];
	
	chomp($result);
	
	return $result;
}
sub get_values {
	my $line = $_[0] . " |";
	my $result = "";
	
	if ($_[1] =~ /^\d+$/) {
       	$result = $_[1];
    } else {
      	$result = 1;
    }
    
    my $content = $pageContent[get_line($line, $result)];
    
	my $string	= $1 if ($content =~ /(?i)^\Q${line}\E[\s]*(.+)[\s\n]*?$/g);
	
	return split(/\|/, $string);
}
sub get_line {
        my $needle = $_[0];
        my $result = "";
        if ($_[1] =~ /^\d+$/) {
        	$result = $_[1];
        } else {
        	$result = 1;
        }
        my $i = 0;
        my $match = 0;
        foreach (@pageContent) {
                if ($_ =~ m/(?i)\Q$needle\E/) {
                	$match++;
                	if ($match >= $result) {
                        return $i;
                    }
                }
                $i++;
        }
        return 0;
}
