#!/bin/bash
PATH="$(env |grep "^PATH" |cut -f2 -d"=")"

call=$(sudo /usr/sbin/asterisk -rx "core show channels" |awk '{print$1}' | awk 'NR==2')


if [[ call -eq '0'  ]]; 
        then echo "0"
        else echo "1"
fi
