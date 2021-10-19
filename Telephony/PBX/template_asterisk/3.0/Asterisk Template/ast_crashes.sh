#!/bin/bash

if [ -n "$(find /tmp/ -type f -mtime -1 -name "core*")" ]
    then 
    echo 1

    else
    echo 0
    fi
