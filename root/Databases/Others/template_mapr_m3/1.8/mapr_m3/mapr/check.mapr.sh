JAVA_HOME=/usr/java/default
export JAVA_HOME

/usr/bin/time -o /tmp/zabbix_mapr_monitor.time.tmp -f %e /usr/bin/maprcli node list -json > /tmp/zabbix_mapr_monitor.tmp
mv -f /tmp/zabbix_mapr_monitor.tmp /tmp/zabbix_mapr_monitor
mv -f /tmp/zabbix_mapr_monitor.time.tmp /tmp/zabbix_mapr_monitor.time

/usr/bin/time -o /tmp/zabbix_mapr_dashboard.time.tmp -f %e maprcli dashboard info -json > /tmp/zabbix_mapr_dashboard.tmp
mv -f /tmp/zabbix_mapr_dashboard.tmp /tmp/zabbix_mapr_dashboard
mv -f /tmp/zabbix_mapr_dashboard.time.tmp /tmp/zabbix_mapr_dashboard.time
