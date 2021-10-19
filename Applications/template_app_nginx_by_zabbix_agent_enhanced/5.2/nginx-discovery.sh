#!/bin/bash

SERVERNAMELIST=`cat /etc/nginx/sites-enabled/* | sed -e 's/#.*$//g' | grep -F -e 'server_name ' | sed -e 's/server_name //g' -e 's/;//g' | tr ' ' '\n' | sort -u`
VHOSTCONFIG=`cat /etc/nginx/sites-enabled/* | sed -e 's/#.*$//g' | sed -z 's/\n/RETURN/g' | sed 's/RETURNserver/\nserver/g'`
if [ "$1" == "certificates" ] ; then

	for i in $SERVERNAMELIST; do
		if [ "$i" != "_" ] ; then
			CONFIG=`echo -e "$VHOSTCONFIG" | grep -F " $i" | sed 's/RETURN/\n/g'`
			PARSEDDOMAIN=`echo $i | sed -e 's/\*\./wildcard./g'`
			if [ -n "`echo -e "$CONFIG" | grep 'ssl_certificate ' |  awk '{print $2}' | sed -e 's/;//g'`" ]; then
				ZABBIXOUTPUT="${ZABBIXOUTPUT} {\"{#DOMAIN}\":\"${PARSEDDOMAIN}\"},"
			fi
		fi
	done

elif [ "$1" == "logs" ] ; then
	for i in $SERVERNAMELIST; do
		if [ "$i" != "_" ] ; then
			CONFIG=`echo -e "$VHOSTCONFIG" | grep -F " $i" | sed 's/RETURN/\n/g'`
			PARSEDDOMAIN=`echo $i | sed -e 's/\*\./wildcard./g'`
			LOGFILES=`echo -e "$CONFIG" | grep -e "access_log " | grep -E -v "access_log( |\t)*none" | awk '{print $2}' | sed -e 's/;//g'`
			for j in $LOGFILES; do
				ZABBIXOUTPUT="${ZABBIXOUTPUT} {\"{#DOMAIN}\":\"${PARSEDDOMAIN}\",\"{#PATH}\":\"${j}\"},"
			done
		fi
	done

elif [ "$1" == "domains" ] ; then
	for i in $SERVERNAMELIST; do
		if [ "$i" != "_" ] ; then
			PARSEDDOMAIN=`echo $i | sed -e 's/\*\./wildcard./g'`
			ZABBIXOUTPUT="${ZABBIXOUTPUT} {\"{#DOMAIN}\":\"${PARSEDDOMAIN}\"},"
		fi
	done

else
	echo -e "Usage:\n$0 certificates -> For certificates discovery\n$0 logs -> For logs files discovery\n$0 domains -> For domains discovery"
	exit
fi

echo "[${ZABBIXOUTPUT::-1}]"
