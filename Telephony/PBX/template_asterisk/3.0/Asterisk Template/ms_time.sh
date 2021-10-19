#!/bin/bash
PATH="$(env |grep "^PATH" |cut -f2 -d"=")"


MS=$(sudo /usr/sbin/asterisk -rx "sip show peers" | grep OK | grep -oP '\(\K[^\)]+' | sed 's/ms//g' | sort -n | awk '$1>199')
LOG=$(for i in $(/usr/sbin/asterisk -rx "sip show peers" | grep OK | grep -oP '\(\K[^\)]+' | sed 's/ms//g' | sort -n | awk '$1>199'); do /usr/sbin/asterisk -rx "sip show peers" | grep OK | grep $i; done)
DATE=$(date +"%m-%d-%y %H:%M:%S")


if [[ -n "$MS" ]];
 then echo "0"
 echo $DATE  "the problematic exts are : " $LOG>> /var/log/messages
 else echo "1"

fi
