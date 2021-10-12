#!/bin/bash
PATH="$(env |grep "^PATH" |cut -f2 -d"=")"

call=$(/usr/sbin/asterisk -rx "core show channels" |grep "active call"|awk '{print$1}')

echo "$call"
