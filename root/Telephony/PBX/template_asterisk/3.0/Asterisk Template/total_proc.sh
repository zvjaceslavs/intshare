#!/bin/bash

PROC=$( /bin/ps  -A | wc -l)

if [ $PROC -ge '205' ]
   then echo "0"
   else echo "1"
fi

