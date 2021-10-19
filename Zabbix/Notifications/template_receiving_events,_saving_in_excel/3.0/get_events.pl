#!/usr/bin/perl

#documentation
#https://www.zabbix.com/documentation/3.0/ru/manual/api/reference/event/get
#http://www.onlineconversion.com/unix_time.htm

#example:
#perl get_events.pl --d -2 --h -8

use strict;
use warnings;

use Excel::Writer::XLSX;
use JSON::RPC::Client;
use POSIX qw(strftime);
use Date::Calc qw(Add_Delta_DHMS Localtime);
use Time::Local;
use Getopt::Long;
use Data::Dumper;
use utf8;

binmode(STDOUT,':utf8');

#================================================================
#Constants
#================================================================
#ZABBIX
use constant ZABBIX_USER	=> 'Admin';
use constant ZABBIX_PASSWORD	=> 'zabbix';
use constant ZABBIX_SERVER	=> 'localhost';

#EXCEL
use constant PATH_FOR_SAVING	=> '/home/';

#DEBUG
use constant DEBUG		=> 0; #0 - False, 1 - True
use constant LIMIT		=> 15;

#================================================================
##Global variables
#================================================================
my $ZABBIX_AUTH_ID;
my %EVENTS;
my $FROM_TIME;
my $TILL_TIME;
my $DELTA_DAYS = 0;
my $DELTA_HOURS = 0;

my %EVENT_VALUE = (
		    0 => 'OK',
		    1 => 'PROBLEM'
);

my %COLOR_EVENT_VALUE = (
		    OK 		=> '#00AA00',
		    PROBLEM	=> '#DC0000'
);

my %EVENT_SOURCE = (
		    0 => 'Trigger',
		    1 => 'Discovery rule',
		    2 => 'Auto-registration',
		    3 => 'Internal event'
);

my %EVENT_ACKNOWLEDGED = (
		    0 => 'No',
		    1 => 'Yes'
);

my %TRIGGER_PRIORITY = (
		    0 => 'Not classified',
		    1 => 'Information',
		    2 => 'Warning',
		    3 => 'Average',
		    4 => 'High',
		    5 => 'Disaster'
);

my %COLOR_TRIGGER_PRIORITY = (
		    0 => '#97AAB3',	#Not classified
		    1 => '#7499FF',	#Information
		    2 => '#FFC859',	#Warning
		    3 => '#FFA059',	#Average
		    4 => '#E97659',	#High
		    5 => '#E45959'	#Disaster
);

#================================================================
main();

#================================================================
sub main
{
    system('clear');

    parse_argv();

    print "*** Start ***\n";

    if (zabbix_auth() != 0)
    {
	
	$FROM_TIME = get_delta_from_current_date();
	$TILL_TIME = get_current_epoch_time();

	print "From: $FROM_TIME | " . epoch_to_normal_date($FROM_TIME) . "\n" if DEBUG;
	print "Till: $TILL_TIME | " . epoch_to_normal_date($TILL_TIME) . "\n" if DEBUG;

	zabbix_get_events();
	zabbix_logout();
	save_to_excel('zabbix_report_events');
    }

    print "*** Done ***\n";
}

#================================================================
sub parse_argv
{
    GetOptions ('d=s' => \$DELTA_DAYS,
		'h=s' => \$DELTA_HOURS);
}

#================================================================
sub zabbix_auth
{
    my %data;

    $data{'jsonrpc'} = '2.0';
    $data{'method'} = 'user.login';
    $data{'params'}{'user'} = ZABBIX_USER;
    $data{'params'}{'password'} = ZABBIX_PASSWORD;
    $data{'id'} = 1;

    my $response = send_to_zabbix(\%data);

    if (!defined($response))
    {
	print "Authentication failed, zabbix server: " . ZABBIX_SERVER . "\n" if DEBUG;

	return 0;
    }

    $ZABBIX_AUTH_ID = $response->content->{'result'};

    if (!defined($ZABBIX_AUTH_ID)) 
    {
	print "Authentication failed, zabbix server: " . ZABBIX_SERVER . "\n" if DEBUG;

	return 0; 
    }

    print "Authentication successful. Auth ID: $ZABBIX_AUTH_ID\n" if DEBUG;

    undef $response;

    return 1;
}

#================================================================
sub zabbix_logout
{
    my %data;

    $data{'jsonrpc'} = '2.0';
    $data{'method'} = 'user.logout';
    $data{'params'} = [];
    $data{'auth'} = $ZABBIX_AUTH_ID;
    $data{'id'} = 1;

    my $response = send_to_zabbix(\%data);

    if (!defined($response))
    {
	print "Logout failed, zabbix server: " . ZABBIX_SERVER . "\n" if DEBUG;

	return 0;
    }

    print "Logout successful. Auth ID: $ZABBIX_AUTH_ID\n" if DEBUG;

    undef $response;
}


#================================================================
sub send_to_zabbix
{
    my $json = shift;

    my $response;

    my $url = "http://" . ZABBIX_SERVER . "/api_jsonrpc.php";

    my $client = new JSON::RPC::Client;

    $response = $client->call($url, $json);

    return $response;
}

#================================================================
sub zabbix_get_events
{
    my %data;

    $data{'jsonrpc'} = '2.0';
    $data{'method'} = 'event.get';

    #Possible values:
    #0 - event created by a trigger
    #1 - event created by a discovery rule
    #2 - event created by active agent auto-registration
    #3 - internal event
    $data{'source'} = 0;

    $data{'params'}{'output'} = 'extend';

    #Return only events that have been created after or at the given time
    $data{'params'}{'time_from'} = $FROM_TIME;

    #Return only events that have been created before or at the given time
    $data{'params'}{'time_till'} = $TILL_TIME;

    $data{'params'}{'sortorder'} = 'DESC'; #DESC or ASC

    #Sort the result by the given properties
    #Possible values are: eventid, objectid and clock
    $data{'params'}{'sortfield'} = ['clock', 'eventid'];

    #for debug
    $data{'params'}{'limit'} = LIMIT if DEBUG;

    $data{'auth'} = $ZABBIX_AUTH_ID;
    $data{'id'} = 1;

    my $response = send_to_zabbix(\%data);

    my $count = 0;
    foreach my $event(@{$response->content->{'result'}}) 
    {
	my $eventid = $event->{'eventid'};
	my $objectid = $event->{'objectid'};
	my $clock = $event->{'clock'}; #Time when the event was created
	my $value =  $EVENT_VALUE{$event->{'value'}};
	my $source = $EVENT_SOURCE{$event->{'source'}};
	my $acknowledged = $EVENT_ACKNOWLEDGED{$event->{'acknowledged'}}; #If set to true return only acknowledged events

	fill_events($count, $eventid, $objectid, $clock, $value, $source, $acknowledged);

	zabbix_get_trigger($count, $objectid, $eventid);

	$count++;

    }

    $EVENTS{'result'}{'total'} = $count;
}

#================================================================
sub zabbix_get_trigger
{
    my ($count, $objectid, $eventid) = @_;
    my %data;

    $data{'jsonrpc'} = '2.0';
    $data{'method'} = 'trigger.get';

    $data{'params'}{'output'} = 'extend';
    $data{'params'}{'triggerids'} = $objectid;
    $data{'params'}{'selectHosts'} = ['hostid', 'name', 'status'];

    $data{'auth'} = $ZABBIX_AUTH_ID;
    $data{'id'} = 1;

    my $response = send_to_zabbix(\%data);

    foreach my $trigger(@{$response->content->{'result'}})
    {
	my $triggerid = $trigger->{'triggerid'};
	my $description = $trigger->{'description'};
	my $comments = $trigger->{'comments'};

	#Severity of the trigger
	#Possible values are:
	#0 - (default) not classified;
	#1 - information;
	#2 - warning;
	#3 - average;
	#4 - high;
	#5 - disaster
	my $priority_name = $TRIGGER_PRIORITY{$trigger->{'priority'}};

	my $host;
	my $priority_number;
	foreach my $hosts(@{$trigger->{'hosts'}})
	{
	    $host = $hosts->{'name'};
	    $priority_number = $trigger->{'priority'};
	}

	fill_triggers($count, $eventid, $host, $description, $priority_name, $priority_number);
   }
}

#================================================================
sub get_date
{
    return strftime '%Y%m%d', localtime;
}

#================================================================
sub get_localtime
{
    my ($current_year, $current_month, $current_day, $current_hour, $current_min, $current_sec) = Localtime();

    return ($current_year-1900, $current_month-1, $current_day, $current_hour, $current_min, $current_sec);
}

#================================================================
sub get_current_epoch_time
{
    my ($current_year, $current_month, $current_day, $current_hour, $current_min, $current_sec) = get_localtime();

    return timegm($current_sec, $current_min, $current_hour, $current_day, $current_month, $current_year);
}

#================================================================
sub epoch_to_normal_date
{
    my $unix_time = shift;

    return gmtime($unix_time);
}

#================================================================
sub get_delta_from_current_date
{
    my ($current_year, $current_month, $current_day, $current_hour, $current_min, $current_sec) = get_localtime();

    my ($year, $month, $day, $hour, $min, $sec) = Add_Delta_DHMS($current_year, $current_month, $current_day, $current_hour, $current_min, $current_sec,
								$DELTA_DAYS, $DELTA_HOURS, 0, 0);

    my $date_unix = timegm($current_sec, $current_min, $hour, $day, $month, $year);

    return $date_unix;
}

#================================================================
sub fill_events
{
    my ($count, $eventid, $objectid, $clock, $value, $source, $acknowledged) = @_;

    $EVENTS{'result'}{'events'}[$count]{$eventid}{'objectid'} = $objectid;
    $EVENTS{'result'}{'events'}[$count]{$eventid}{'clock'} = epoch_to_normal_date($clock);
    $EVENTS{'result'}{'events'}[$count]{$eventid}{'value'} = $value;
    $EVENTS{'result'}{'events'}[$count]{$eventid}{'source'} = $source;
    $EVENTS{'result'}{'events'}[$count]{$eventid}{'acknowledged'} = $acknowledged;
}

#================================================================
sub fill_triggers
{
    my ($count, $eventid, $host, $description, $priority_name, $priority_number) = @_;

    $EVENTS{'result'}{'events'}[$count]{$eventid}{'host'} = $host;
    $EVENTS{'result'}{'events'}[$count]{$eventid}{'description'} = $description;
    $EVENTS{'result'}{'events'}[$count]{$eventid}{'priority_name'} = $priority_name;
    $EVENTS{'result'}{'events'}[$count]{$eventid}{'priority_number'} = $priority_number;
}

#================================================================
sub save_to_excel
{
    my $file = shift;

    my ($status_OK,
	$status_PROBLEM,
	$not_classified,
	$information,
	$warning,
	$average,
	$high,
	$disaster) = (0,0,0,0,0,0,0,0);

    my $workbook  = Excel::Writer::XLSX->new(PATH_FOR_SAVING . $file . '_' . get_date() . '.xlsx');

    my $worksheet_info = $workbook->add_worksheet('Information');
    my $worksheet = $workbook->add_worksheet('Report about events');

    $workbook->set_properties(
				title    => 'Report about events',
				author   => 'Zabbix',
				comments => "From: " . epoch_to_normal_date($FROM_TIME) . "\nTill: " . epoch_to_normal_date($TILL_TIME)
    );

    my $format_header = $workbook->add_format(border => 2);

    #Font for header
    $format_header->set_bold();
    $format_header->set_color('red');
    $format_header->set_size(14);
    $format_header->set_font('Cambria');

    $format_header->set_align('center');

    $format_header->set_bg_color('#FFFFCC');

    #Header
    $worksheet->write("A1", 'Time', $format_header);
    $worksheet->write("B1", 'Host', $format_header);
    $worksheet->write("C1", 'Description', $format_header);
    $worksheet->write("D1", 'Status', $format_header);
    $worksheet->write("E1", 'Severity', $format_header);
    $worksheet->write("F1", 'Ask', $format_header);

    $worksheet->freeze_panes(1, 0);

    #Font for data
    my $format_data = $workbook->add_format(border => 1);

    $format_data->set_color('black');
    $format_data->set_size(14);
    $format_data->set_font('Cambria');
    $format_data->set_text_wrap();

    $format_data->set_align('left');
    $format_data->set_align('vcenter');

    $worksheet->set_column('A:A', 45);
    $worksheet->set_column('B:B', 35);
    $worksheet->set_column('C:C', 100);
    $worksheet->set_column('D:D', 20);
    $worksheet->set_column('E:E', 30);
    $worksheet->set_column('F:F', 15);

    #Enable auto-filter
    $worksheet->autofilter('A1:F1');

    my $total = $EVENTS{'result'}{'total'};

    print "Total events: $total\n" if DEBUG;

    foreach my $result($EVENTS{'result'})
    {
	my $row = 0;
	foreach my $event(@{$result->{'events'}})
	{
	    print Dumper $event if DEBUG;

	    foreach my $eventid(keys $event)
	    {
		my $date = $event->{$eventid}->{'clock'};

		my $host = $event->{$eventid}->{'host'};

		my $description = $event->{$eventid}->{'description'};

		#Status
		my $status = $event->{$eventid}->{'value'};

		if ($status eq 'OK') { $status_OK++; }
		if ($status eq 'PROBLEM') { $status_PROBLEM++; }

		#Font for status
		my $format_status = $workbook->add_format(border => 1);

		$format_status->set_color($COLOR_EVENT_VALUE{$status});
		$format_status->set_size(14);
		$format_status->set_font('Cambria');
		$format_status->set_align('vcenter');

		#Priority
		my $priority_name = $event->{$eventid}->{'priority_name'};
		my $priority_number = $event->{$eventid}->{'priority_number'};

		if ($priority_number == 0) {$not_classified++;}
		if ($priority_number == 1) {$information++;}
		if ($priority_number == 2) {$warning++;}
		if ($priority_number == 3) {$average++;}
		if ($priority_number == 4) {$high++;}
		if ($priority_number == 5) {$disaster++;}

		#Font for priority
		my $format_priority = $workbook->add_format(border => 1);

		$format_priority->set_color('black');
		$format_priority->set_size(14);
		$format_priority->set_font('Cambria');
		$format_priority->set_text_wrap();
		$format_priority->set_align('vcenter');
		$format_priority->set_bg_color($COLOR_TRIGGER_PRIORITY{$priority_number});

		my $acknowledged = $event->{$eventid}->{'acknowledged'};

		$worksheet->write($row+1, 0, $date, $format_data);

		$worksheet->write($row+1, 1, $host, $format_data);

		$worksheet->write($row+1, 2, $description, $format_data);

		$worksheet->write($row+1, 3, $status, $format_status);

		$worksheet->write($row+1, 4, $priority_name, $format_priority);

		$worksheet->write($row+1, 5, $acknowledged, $format_data);
	    }
	$row++;
	}
    }

    #Information
    my $format_info = $workbook->add_format();
    $format_info->set_bold();
    $format_info->set_color('black');
    $format_info->set_size(14);
    $format_info->set_font('Cambria');
    $format_info->set_align('left');

    my $format_not_classified = $workbook->add_format();
    $format_not_classified->set_color('black');
    $format_not_classified->set_size(14);
    $format_not_classified->set_font('Cambria');
    $format_not_classified->set_bg_color($COLOR_TRIGGER_PRIORITY{0});

    my $format_information = $workbook->add_format();
    $format_information->set_color('black');
    $format_information->set_size(14);
    $format_information->set_font('Cambria');
    $format_information->set_bg_color($COLOR_TRIGGER_PRIORITY{1});

    my $format_warning = $workbook->add_format();
    $format_warning->set_color('black');
    $format_warning->set_size(14);
    $format_warning->set_font('Cambria');
    $format_warning->set_bg_color($COLOR_TRIGGER_PRIORITY{2});

    my $format_average = $workbook->add_format();
    $format_average->set_color('black');
    $format_average->set_size(14);
    $format_average->set_font('Cambria');
    $format_average->set_bg_color($COLOR_TRIGGER_PRIORITY{3});

    my $format_high = $workbook->add_format();
    $format_high->set_color('black');
    $format_high->set_size(14);
    $format_high->set_font('Cambria');
    $format_high->set_bg_color($COLOR_TRIGGER_PRIORITY{4});

    my $format_disaster = $workbook->add_format();
    $format_disaster->set_color('black');
    $format_disaster->set_size(14);
    $format_disaster->set_font('Cambria');
    $format_disaster->set_bg_color($COLOR_TRIGGER_PRIORITY{5});

    my $format_OK = $workbook->add_format();
    $format_OK->set_color('black');
    $format_OK->set_size(14);
    $format_OK->set_font('Cambria');
    $format_OK->set_bg_color($COLOR_EVENT_VALUE{'OK'});

    my $format_PROBLEM = $workbook->add_format();
    $format_PROBLEM->set_color('black');
    $format_PROBLEM->set_size(14);
    $format_PROBLEM->set_font('Cambria');
    $format_PROBLEM->set_bg_color($COLOR_EVENT_VALUE{'PROBLEM'});

    #
    $worksheet_info->set_column('A:A', 25);
    $worksheet_info->set_column('B:B', 40);

    $worksheet_info->write("A1", 'From:', $format_info);
    $worksheet_info->write("A2", 'Till:', $format_info);
    $worksheet_info->write("A4", 'Not classified:', $format_not_classified);
    $worksheet_info->write("A5", 'Information:', $format_information);
    $worksheet_info->write("A6", 'Warning:', $format_warning);
    $worksheet_info->write("A7", 'Average:', $format_average);
    $worksheet_info->write("A8", 'High:', $format_high);
    $worksheet_info->write("A9", 'Disaster:', $format_disaster);

    $worksheet_info->write("A11", 'OK:', $format_OK);
    $worksheet_info->write("A12", 'PROBLEM:', $format_PROBLEM);

    $worksheet_info->write(0, 1, scalar epoch_to_normal_date($FROM_TIME), $format_info);
    $worksheet_info->write(1, 1, scalar epoch_to_normal_date($TILL_TIME), $format_info);

    $worksheet_info->write(3, 1, $not_classified, $format_info);
    $worksheet_info->write(4, 1, $information, $format_info);
    $worksheet_info->write(5, 1, $warning, $format_info);
    $worksheet_info->write(6, 1, $average, $format_info);
    $worksheet_info->write(7, 1, $high, $format_info);
    $worksheet_info->write(8, 1, $disaster, $format_info);
    $worksheet_info->write(10, 1, $status_OK, $format_info);
    $worksheet_info->write(11, 1, $status_PROBLEM, $format_info);

    #Close
    $workbook->close;
}
