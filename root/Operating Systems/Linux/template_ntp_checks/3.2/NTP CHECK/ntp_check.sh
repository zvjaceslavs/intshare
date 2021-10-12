#!/bin/bash
NTP_RANDOM=( \
"europe.pool.ntp.org"   \
"nl.pool.ntp.org"       \
"il.pool.ntp.org" 	\
"dk.pool.ntp.org" 	\
"es.pool.ntp.org" 	\
"de.pool.ntp.org" 	\
"it.pool.ntp.org" 	\
"fr.pool.ntp.org" 	\
"ch.pool.ntp.org" 	\
"ua.pool.ntp.org" 	\
"pl.pool.ntp.org" 	\
"fi.pool.ntp.org" 	\
"ro.pool.ntp.org" 	\
)

SERVER_MATCH=${NTP_RANDOM[ $(( RANDOM % ${#NTP_RANDOM[@]} )) ]}

NTP_PKG=$(rpm -qa | grep -w ntp)
FILE='/home/zabbix/ntp.log'
if [[ -z $NTP_PKG ]]
        then
        echo "NOT INSTALLED" | tee $FILE
        exit
        fi



NTP_STATUS=$(ntpstat  | cut -f 1 -d " " | tr -d ' \t\n\r\f')
NTP_SERVER=$(/sbin/ntpdate -q $SERVER_MATCH | tail -n1 | sed -n 's/.*offset //p'  | sed 's/sec//g'|  tr -d '-')
MIN_DELAY='60'


if [[ $NTP_STATUS != 'synchronised' ]] 
	then
	echo "unsynchronised" | tee $FILE
	exit
	fi

if [[ $NTP_SERVER  > $MIN_DELAY ]] 
	then 
	echo "offset more then 1 min" | tee $FILE
	exit
	fi

echo "OK" | tee $FILE
