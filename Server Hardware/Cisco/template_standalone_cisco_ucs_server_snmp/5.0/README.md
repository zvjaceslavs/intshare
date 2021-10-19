# Template Cisco UCS Standalone SNMP

## Overview

Based on [https://share.zabbix.com/cat-server-hardware/cisco/cisco-ucs-standalone-hw-monitoring](cat-server-hardware/cisco/cisco-ucs-standalone-hw-monitoring)


Contains:


MB operation state


rack serial number


Discoveries:


Arrays


CPUs


Disks


Fans


Memory


PSU


Raid batterys


Raid controllers



## Author

Dmitry Lavrukhin

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ARR dsvr|<p>-</p>|`SNMP agent`|arrdsvr<p>Update: 180</p>|
|RAID controller dsvr|<p>-</p>|`SNMP agent`|raiddsvr<p>Update: 180</p>|
|DSK dsvr|<p>-</p>|`SNMP agent`|dskdsvr<p>Update: 180</p>|
|FAN dsvr|<p>-</p>|`SNMP agent`|fandsvr<p>Update: 180</p>|
|PSU dsvr|<p>-</p>|`SNMP agent`|psudsvr<p>Update: 180</p>|
|RAID battery dsvr|<p>-</p>|`SNMP agent`|raidbatdsvr<p>Update: 180</p>|
|MEM dsvr|<p>-</p>|`SNMP agent`|memdsvr<p>Update: 180</p>|
|CPU dsvr|<p>-</p>|`SNMP agent`|cpudsvr<p>Update: 180</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|MB operation state|<p>-</p>|`SNMP agent`|mboperstate<p>Update: 30</p>|
|rack serial number|<p>-</p>|`SNMP agent`|mbserialnumber<p>Update: 43200</p>|
|{#SNMPVALUE} array status (LLD)|<p>-</p>|`SNMP agent`|arrstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status (LLD)|<p>-</p>|`SNMP agent`|raidstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} disk status (LLD)|<p>-</p>|`SNMP agent`|diskstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status (LLD)|<p>-</p>|`SNMP agent`|fanstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} power source status (LLD)|<p>-</p>|`SNMP agent`|powerstate[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status (LLD)|<p>-</p>|`SNMP agent`|status[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status (LLD)|<p>-</p>|`SNMP agent`|raidbatstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status (LLD)|<p>-</p>|`SNMP agent`|memstatus[{#SNMPVALUE}]<p>Update: 30</p>|
|{#SNMPVALUE} status (LLD)|<p>-</p>|`SNMP agent`|cpustatus[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Array {#SNMPVALUE} in degraded state|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:arrstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|Disk {#SNMPVALUE} in not operate state|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:diskstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:fanstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} have problems with power source|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:powerstate[{#SNMPVALUE}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:status[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:cpustatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:memstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:raidbatstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:raidstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|Array {#SNMPVALUE} in degraded state (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:arrstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:raidstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|Disk {#SNMPVALUE} in not operate state (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:diskstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:fanstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} have problems with power source (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:powerstate[{#SNMPVALUE}].last()}<>4</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:status[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:raidbatstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:memstatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
|{#SNMPVALUE} in not operate state (LLD)|<p>-</p>|<p>**Expression**: {Template Cisco UCS Standalone SNMP:cpustatus[{#SNMPVALUE}].last()}<>1</p><p>**Recovery expression**: </p>|high|
