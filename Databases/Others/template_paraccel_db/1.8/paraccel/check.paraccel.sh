TIME_FILE=/tmp/zabbix_paraccel_sum.time
TEMP_FILE=/tmp/zabbix_paraccel_sum.tmp
FILE=/tmp/zabbix_paraccel_sum

/usr/bin/time -o $TIME_FILE -f %e /usr/local/zabbix/etc/paraccel/zabbix_paraccel.sh > $TEMP_FILE 2> /dev/null
mv -f $TEMP_FILE $FILE

TIME_FILE=/tmp/zabbix_paraccel_nodes.time
TEMP_FILE=/tmp/zabbix_paraccel_nodes.tmp
FILE=/tmp/zabbix_paraccel_nodes

/usr/bin/time -o $TIME_FILE -f %e /usr/local/zabbix/etc/paraccel/zabbix_paraccel_nodes.sh > $TEMP_FILE 2> /dev/null
mv -f $TEMP_FILE $FILE

#exit

TIME_FILE=/tmp/zabbix_paraccel_nodes2.time
TEMP_FILE=/tmp/zabbix_paraccel_nodes2.tmp
FILE=/tmp/zabbix_paraccel_nodes2

/usr/bin/time -o $TIME_FILE -f %e /usr/local/zabbix/etc/paraccel/zabbix_paraccel_nodes_cqi.pl > $TEMP_FILE 2> /dev/null
mv -f $TEMP_FILE $FILE
