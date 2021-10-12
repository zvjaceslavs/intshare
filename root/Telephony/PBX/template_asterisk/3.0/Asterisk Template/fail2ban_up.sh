#!/bin/bash

        if [ "$(sudo -u root fail2ban-client ping |grep -o "pong")" == "pong" ]
        then
                echo "1"
        else
                echo "0"
        fi

