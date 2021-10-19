#!/bin/bash
###############
##Check Mount##
###############
IP_CHECK=$(</etc/fstab awk '/^[^#]/ ' | grep -oE '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b')

if [[ -n $IP_CHECK ]]
	then
	grep $IP_CHECK /proc/mounts > /dev/null
	if [[ $? -ne 0 ]]
		then 
		echo "$IP_CHECK Not mounted"
		exit
		fi
	fi

MOUNT_FILE='/var/spool/asterisk/monitor'
STATE2=$(stat $MOUNT_FILE  2> /dev/null)

if [[ -z $STATE2 ]]
	then 
	echo "Cannot state monitor file!"
	exit
	fi

for i in $(</etc/fstab awk '/^[^#]/ && $2~/[/]/ && $3!~/devpts|sysfs|proc/{print $2}' | sort)
	do  
	df 2> /dev/null |grep -w $i > /dev/null
		if [[ $? -ne 0 ]]
			then
			NOT_MOUNTED="$i $NOT_MOUNTED"
			echo "$NOT_MOUNTED is NOT mounted!"
			exit
			fi
		done
echo "OK"
