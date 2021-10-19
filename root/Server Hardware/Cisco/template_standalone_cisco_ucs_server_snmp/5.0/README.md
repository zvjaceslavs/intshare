# Template Cisco UCS Standalone SNMP

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ARR dsvr|<p>-</p>|`SNMP agent`|arrdsvr<p>Update: 180</p>|
|CPU dsvr|<p>-</p>|`SNMP agent`|cpudsvr<p>Update: 180</p>|
|MEM dsvr|<p>-</p>|`SNMP agent`|memdsvr<p>Update: 180</p>|
|DSK dsvr|<p>-</p>|`SNMP agent`|dskdsvr<p>Update: 180</p>|
|FAN dsvr|<p>-</p>|`SNMP agent`|fandsvr<p>Update: 180</p>|
|PSU dsvr|<p>-</p>|`SNMP agent`|psudsvr<p>Update: 180</p>|
|RAID battery dsvr|<p>-</p>|`SNMP agent`|raidbatdsvr<p>Update: 180</p>|
|RAID controller dsvr|<p>-</p>|`SNMP agent`|raiddsvr<p>Update: 180</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|MB operation state|<p>-</p>|`SNMP agent`|mboperstate<p>Update: 30</p>|
|rack serial number|<p>-</p>|`SNMP agent`|mbserialnumber<p>Update: 43200</p>|
|{#SNMPVALUE} array status|<p>-</p>|`SNMP agent`|arrstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status|<p>-</p>|`SNMP agent`|cpustatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status|<p>-</p>|`SNMP agent`|memstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} disk status|<p>-</p>|`SNMP agent`|diskstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status|<p>-</p>|`SNMP agent`|fanstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} power source status|<p>-</p>|`SNMP agent`|powerstate[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status|<p>-</p>|`SNMP agent`|status[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status|<p>-</p>|`SNMP agent`|raidbatstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status|<p>-</p>|`SNMP agent`|raidstatus[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Array {#SNMPVALUE} in degraded state|<p>-</p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|high|
|Disk {#SNMPVALUE} in not operate state|<p>-</p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|high|
|{#SNMPVALUE} have problems with power source|<p>-</p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|high|
