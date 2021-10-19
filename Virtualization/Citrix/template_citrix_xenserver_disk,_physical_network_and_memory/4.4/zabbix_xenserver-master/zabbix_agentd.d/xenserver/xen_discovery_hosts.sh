#!/bin/bash

# Autor: Rodrigo Sandrin
# Data: 14/09/2020
xenpass="/etc/zabbix/zabbix_agentd.d/xenserver/xen_passwd"
command="xe -pwf $xenpass host-list  params=uuid | cut -d: -f2 | sort | uniq | sed s/\\s//g | sed /^$/d"
command2="xe -pwf $xenpass host-list uuid=\$i params=name-label | cut -d: -f2"
lines=$(eval $command | wc -l)
loop=1


inicio="{\"data\":[\\n"

for i in `eval $command`; do
    XENHOSTNAME=$(eval $command2)
    loop=$(($loop+1))

    if [ $loop -gt $lines ]; then
        data=${data}"{\"{#XENHOST}\":\"$i\",\"{#XENHOSTNAME}\":\"$XENHOSTNAME\"}"
    else
        data=${data}"{\"{#XENHOST}\":\"$i\",\"{#XENHOSTNAME}\":\"$XENHOSTNAME\"},\\n"
    fi


done

final="\\n]}"
echo -e $inicio$data$final

