#!/bin/bash

#Varibels
DATE=$(date +%d/%b/%Y:%H:%M -d  "1 minute ago")
ERR=$(grep -A99999999999999999  $DATE /var/log/httpd/ssl_access_log | grep "POST\|GET" | cut -f3 -d'"' | awk '{print$1}'| grep 404 |wc -l)



if [[ $ERR -ge "100" ]]; then
	echo "0"
else 
	echo "1"
fi
