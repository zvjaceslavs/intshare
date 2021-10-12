#!/bin/bash


temp=$(ps -A | grep asterisk)

if [ -n "$temp" ]
then
	echo "1"
else
	echo "0"
fi
