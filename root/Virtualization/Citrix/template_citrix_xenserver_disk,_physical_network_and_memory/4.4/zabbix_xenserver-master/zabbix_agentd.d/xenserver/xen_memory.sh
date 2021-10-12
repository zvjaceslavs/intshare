#!/bin/bash

# Autor: Rodrigo Sandrin
# Data: 14/09/2020
uuid=$1
xenpass="/etc/zabbix/zabbix_agentd.d/xenserver/xen_passwd"

array=($(xe -pwf $xenpass host-list uuid=$uuid params=memory-total,memory-free | cut -d: -f2 | sed s/^" "//g))

data=${data}"{\"XENMEMORYTOTAL\":\"${array[0]}\","
data=${data}"\"XENMEMORYFREE\":\"${array[1]}\"}"


inicio="{\"data\":\\n"
final="\\n\\n}"
echo -e $inicio$data$final



