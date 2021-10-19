#!/bin/bash

check=$(sudo -u asterisk /usr/sbin/asterisk -rx'show uptime' | awk -F": " '/Last reload/{print$2}')


if [ -z "$check" ]
then
	echo "Asterisk has not been reloaded yet"
else
	echo "$check"
fi
