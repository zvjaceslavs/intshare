#!/bin/bash

# Autor: Rodrigo Sandrin
# Data: 14/09/2020
uuid=$1
xenpass="/etc/zabbix/zabbix_agentd.d/xenserver/xen_passwd"

array=($(xe -pwf $xenpass sr-list uuid=$uuid type=lvmohba params=physical-size,physical-utilisation | cut -d: -f2 | sed s/^" "//g))

data=${data}"{\"XENSRPHYSICALUSE\":\"${array[0]}\","
data=${data}"\"XENSRPHYSICALSIZE\":\"${array[1]}\"}"


inicio="{\"data\":\\n"
final="\\n\\n}"
echo -e $inicio$data$final



