#!/bin/bash
PATH="$(env |grep "^PATH" |cut -f2 -d"=")"

TRUNK=$(/usr/sbin/asterisk -rx "iax2 show peers" | grep UNREACHABLE | awk '{print$1}'| grep [A-Za-z])

if [ -n "$TRUNK" ]
then
	/usr/sbin/asterisk -rx "module unload chan_iax2.so" >> /dev/null
	/usr/sbin/asterisk -rx "module load chan_iax2.so"  >> /dev/null
	sleep 1
	echo $TRUNK
else
	echo "1"
fi
