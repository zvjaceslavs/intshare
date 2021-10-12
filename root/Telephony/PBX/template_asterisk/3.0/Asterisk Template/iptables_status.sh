#!/bin/bash

/sbin/service iptables status >/dev/null 2>&1
if [ $? = 0 ]; then
    echo "1"
else
    echo "0"
fi

