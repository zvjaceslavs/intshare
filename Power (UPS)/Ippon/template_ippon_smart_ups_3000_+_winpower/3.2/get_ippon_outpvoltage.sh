#!/bin/sh
REMOTEHOST=$1
GETDATA=`curl -s http://$REMOTEHOST:8888/0/json | grep -Po "(?<=outVolt\":).*\"outFreq" | sed -e s/\"//g | sed -e s/V,outFreq//`
echo "$GETDATA"
