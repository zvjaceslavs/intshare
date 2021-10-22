#!/bin/sh
REMOTEHOST=$1
GETDATA=`curl -s http://$REMOTEHOST:8888/0/json | grep -Po "(?<=loadPercent\":).*\"loadPercentMax" | sed -e s/\"//g | sed -e s/%,loadPercentMax//`
echo "$GETDATA"
