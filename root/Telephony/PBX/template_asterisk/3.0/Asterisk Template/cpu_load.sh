#!/bin/bash
PATH="$(env |grep "^PATH" |cut -f2 -d"=")"

CPU=`cat /proc/loadavg | awk '{print $1}'`

LOADMAX=4.00


if [[ "$CPU" >  "$LOADMAX" ]]
   then echo "0"
   else echo "1"
fi
