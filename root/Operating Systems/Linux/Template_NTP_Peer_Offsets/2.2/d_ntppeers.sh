#!/bin/bash

echo -e '{'
echo -e '\t"data":['
delim=""
ntpq -pn | grep -v -e 'jitter$' -e '^=*$' -e '\.LOCL\.' | sed 's:^.::' | cut -d\  -f 1 | while read i; do
	echo -e "\t\t${delim}{\"{#PEER}\":\"$i\"}"
	delim=","
done

echo -e '\t]'
echo -e '}'
