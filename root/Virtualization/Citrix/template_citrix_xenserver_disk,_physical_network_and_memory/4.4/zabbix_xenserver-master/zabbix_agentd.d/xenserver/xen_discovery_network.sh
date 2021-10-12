#!/bin/bash

# Autor: Rodrigo Sandrin
# Data: 14/09/2020

xenpass="/etc/zabbix/zabbix_agentd.d/xenserver/xen_passwd"
command="xe -pwf $xenpass pif-list  params=uuid  physical=true | cut -d: -f2 | sort | uniq | sed s/\\s//g | sed /^$/d"
command2="xe -pwf $xenpass pif-list uuid=\$i params=device,host-name-label | cut -d: -f2"
lines=$(eval $command | wc -l)
loop=1


inicio="{\"data\":[\\n"

for i in `eval $command`; do
    ARRAY=($(eval $command2))
    loop=$(($loop+1))

    if [ $loop -gt $lines ]; then
        data=${data}"{\"{#XENHOSTNIC}\":\"$i\",\"{#XENHOSTNICNAME}\":\"${ARRAY[0]}\",\"{#XENHOSTNAME}\":\"${ARRAY[1]}\"}"
    else
        data=${data}"{\"{#XENHOSTNIC}\":\"$i\",\"{#XENHOSTNICNAME}\":\"${ARRAY[0]}\",\"{#XENHOSTNAME}\":\"${ARRAY[1]}\"},\\n"
    fi


done

final="\\n]}"
echo -e $inicio$data$final
