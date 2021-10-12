#!/bin/sh
REMOTEHOST=$1
GETDATA=`curl -s http://$REMOTEHOST:8888/0/json | grep -Po "(?<=inVolt\":).*\"inFreq" | sed -e s/\"//g | sed -e s/V,inFreq//`
echo "$GETDATA"
