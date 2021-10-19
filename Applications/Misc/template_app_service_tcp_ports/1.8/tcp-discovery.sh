#!/bin/bash
usage(){ echo "Usage: ./$(basename $0) hostname. For example: ./$(basename $0) server1.example.com";}
if [ -z $1 ]; then usage; exit 1; fi
IFS=$'\n'
LIST=$(nmap -T5 -F ${1} | grep 'open')
echo -n '{"data":['
for s in $LIST; do
        PORT=$(echo $s | cut -d/ -f1)
        PROTO=$(echo $s | cut -d/ -f2 | awk '{sub(/[[:space:]].*/,""); print}')
        SERVICE=$(echo $s | awk '{print $3}')
        echo -n '{"{#PORT}":"'${PORT}'","{#PROTO}":"'${PROTO}'","{#SERVICE}":"'${SERVICE}'"},'
done |sed -e 's:\},$:\}:'
echo -n ']}'
unset IFS