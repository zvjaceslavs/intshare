/usr/bin/time -o /tmp/zabbix_HP_array_monitor.time -f %e /usr/sbin/hpacucli ctrl all show config detail |sed s/^\\s*//g |sed s/physicaldrive/physicaldrive:/ > /tmp/zabbix_HP_array_monitor
