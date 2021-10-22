#!/bin/bash

###############
#Get disk info#
###############

if [[ "$1" == "diskinfo" ]];then
 DSKINFO=$2
 DSKINFO1=$3
 STRING1="Slot Number: $DSKINFO -Device Id: $DSKINFO1"
 MEGACLI1="/opt/MegaRAID/MegaCli/MegaCli64"
 DISKS1=`sudo /opt/MegaRAID/MegaCli/MegaCli64 -PDlist -aALL -NoLog | egrep 'Slot|Device Id|state' | awk '/Slot/{if (x)print x;x="";}{x=(!x)?$0:x" -"$0;}END{print x;}' | sed 's/Firmware state://g'`
 DISKS2=`echo "$DISKS1" | grep "$STRING1" | cut -d "-" -f "3" |sed 's/ //' `
  
  if [[ "$DISKS2" ]];then
   echo $DISKS2
  fi
fi

###############
#Run discovery#
###############

if [[ "$1" == "disk" ]];then
MEGACLI="/usr/local/sbin/MegaCli64"
B=0
DISKS=`$MEGACLI -PDlist -aALL -NoLog | egrep 'Slot|Device Id' | awk '/Slot/{if (x)print x;x="";}{x=(!x)?$0:x" -"$0;}END{print x;}' | sed 's/Firmware state://g' | sed 's/ //g'`

#################
#Clean json file#
#################

echo "" > /etc/zabbix/scripts/info.json

##################
#Update json file#
##################

A=`echo "$DISKS" |wc -l`
echo  '{ "data":[' >> /etc/zabbix/scripts/info.json
for i in ${DISKS[@]};do
 FORMAT=`echo $i | cut -d "-" -f "1-2"`
  while IFS= read -r LINE;do
   SLOTNUMBER=`echo "$LINE" | cut -d "-" -f "1" | egrep -o '[0-9]{1,4}'`
   DEVICEID=`echo "$LINE" | cut -d "-" -f "2" | egrep -o '[0-9]{1,4}'`
  done <<< $FORMAT
 JSON_STR='{"{#SLOTN}":"'"$SLOTNUMBER"'","{#DEVID}":"'"$DEVICEID"'"}'
 B=$((B+1))
 echo  "$JSON_STR" >> /etc/zabbix/scripts/info.json
  if [[ $B -lt $A ]];then
     echo  "," >> /etc/zabbix/scripts/info.json
  else
     echo  "]}" >> /etc/zabbix/scripts/info.json
  fi
done
fi
