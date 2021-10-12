#!/bin/bash

DATE=$(date '+%Y-%m-%d %H:%M' -d  "1 hour ago")

PASS=$(awk -v DT="$DATE" '($1 " " $2) >= DT'   /var/log/asterisk/full | grep "Wrong password")

if [[ -n "$PASS" ]];
   then echo "0"
    else echo "1"
fi

