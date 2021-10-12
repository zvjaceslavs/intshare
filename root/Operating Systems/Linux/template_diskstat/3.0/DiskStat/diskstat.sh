#!/bin/sh
cd /etc/zabbix/scripts/
/usr/bin/iostat -xk 15|/etc/zabbix/scripts/diskstat.py > /var/log/diskstat.log 2>&1 &
exit 0