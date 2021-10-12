#!/bin/bash

umask 002

if [ "$1" == "" ]
    then
    echo "SCRIPT?"
    exit
fi

LOG="/tmp/wraper.log"
DAY=`date +%d.%m.%Y_%H-%M-%S`


PSAX=`ps ax| grep $1 | grep -v "grep $1" | grep -v "$0 $1"| wc -l`

if [ "$PSAX" == "0" ] ; then
    $1 $2
else

    DAY2=`date +%d.%m.%Y_%H-%M-%S`
    echo "$DAY $DAY2 NO $PSAX $1 $2" >> $LOG
fi
