#!/bin/sh
# AUTHOR	: Jerome Blion
# DESCRIPTION	: Allows to monitor UPSes managed by NUT
# PREREQUESITES	: UPS configured to reply to upsc <UPS>
#		  Zabbix 4.2 (because no "data" field in JSON output)
# I/O		: 
#	NONE	: Outputs JSON with all UPSes detected by upsc
#	UPS	: List all variables fetched from upsc -l <UPS>
#
# CREATION	: 22 Sep 2017
#
#############################################################################
# CHANGELOG
#############################################################################
# AUTHOR	  DATE		MODIFICATION
# J. BLion	22/09/2017	Creation
# J. Blion	10/12/2019	Migrated to Zabbix 4.4 (easier JSON)
# J. Blion	11/12/2019	Refactoring
#
#
#############################################################################

NUT_CMD=upsc

if [ -z "$1" ]
then
	$NUT_CMD -l 2>&1 | awk 'BEGIN{printf "["}; !/SSL/ {printf c"\n\t{\"{#UPSNAME}\":\""$1"\"}";c=","}; END{print "\n]"}'
else
	UPS=$1
	$NUT_CMD $UPS 2>&1 | grep -v SSL
fi

exit $?
