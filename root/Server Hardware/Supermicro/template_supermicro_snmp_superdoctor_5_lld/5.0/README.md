# Template Supermicro SNMP Superdoctor 5 LLD

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
|Memory|<p>-</p>|`SNMP agent`|supermicro_memory_id<p>Update: {$SUPERMICRO_DISCOVERY_TIME}</p>|
|Physical disk|<p>-</p>|`SNMP agent`|supermicro_diskmodel<p>Update: {$DISC_DISCOVERY_TIME}</p>|
|Power Supply|<p>-</p>|`SNMP agent`|supermicro_psmonitemid<p>Update: {$SUPERMICRO_DISCOVERY_TIME}</p>|
|FANs|<p>-</p>|`SNMP agent`|supermicro_fanmonitemid<p>Update: {$SUPERMICRO_DISCOVERY_TIME}</p>|
|Power Supply Input voltages|<p>-</p>|`SNMP agent`|supermicro_inpvoltageid<p>Update: {$SUPERMICRO_DISCOVERY_TIME}</p>|
|Temperatures|<p>-</p>|`SNMP agent`|supermicro_tempmonitemid<p>Update: {$SUPERMICRO_DISCOVERY_TIME}</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Supermicro mainboard bios version|<p>-</p>|`SNMP agent`|supermicro_mb_biosversion<p>Update: 1d</p>|
|Supermicro mainboard model|<p>-</p>|`SNMP agent`|supermicro_mb_model<p>Update: 1d</p>|
|Supermicro memory $1 capacity|<p>-</p>|`SNMP agent`|supermicro_memory_cap[{#SNMPVALUE}]<p>Update: 1d</p>|
|Supermicro memory $1 error count|<p>-</p>|`SNMP agent`|supermicro_memory_errcount[{#SNMPVALUE}]<p>Update: 1d</p>|
|Supermicro memory $1 location|<p>-</p>|`SNMP agent`|supermicro_memory_location[{#SNMPVALUE}]<p>Update: 1d</p>|
|Supermicro memory $1 manufacturer|<p>-</p>|`SNMP agent`|supermicro_memory_manufacturer[{#SNMPVALUE}]<p>Update: 1d</p>|
|Supermicro memory $1 model|<p>-</p>|`SNMP agent`|supermicro_memory_model[{#SNMPVALUE}]<p>Update: 1d</p>|
|Supermicro memory $1 sn|<p>-</p>|`SNMP agent`|supermicro_memory_sn[{#SNMPVALUE}]<p>Update: 1d</p>|
|Supermicro disk {#SNMPINDEX} model|<p>-</p>|`SNMP agent`|supermicro_disc_model[{#SNMPINDEX}]<p>Update: {$PD_REQUEST_PERIOD}</p>|
|Supermicro disk {#SNMPINDEX} smart status|<p>-</p>|`SNMP agent`|supermicro_disk_smart[{#SNMPINDEX}]<p>Update: {$PD_REQUEST_PERIOD}</p>|
|Supermicro disk {#SNMPINDEX} serial number|<p>-</p>|`SNMP agent`|supermicro_disk_sn[{#SNMPINDEX}]<p>Update: {$PD_REQUEST_PERIOD}</p>|
|Supermicro $1|<p>-</p>|`SNMP agent`|supermicro_psstatus[{#MONITEMNAME}]<p>Update: 15m</p>|
|Supermicro $1 RPMs|<p>-</p>|`SNMP agent`|supermicro_fanrpms[{#MONITEMNAME}]<p>Update: 5m</p>|
|Supermicro $1|<p>-</p>|`SNMP agent`|supermicro_acinp[{#SNMPVALUE}]<p>Update: 5m</p>|
|Supermicro $1|<p>-</p>|`SNMP agent`|supermicro_temp[{#MONITEMNAME}]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Supermicro bios was change to {ITEM.LASTVALUE} on {HOST.DNS}|<p>-</p>|information|
|Memory bank on {HOST.DNS}  has {ITEM.LASTVALUE} errors|<p>-</p>|warning|
|Memory bank on {HOST.DNS}  was changed|<p>-</p>|information|
|Supermicro physical disc was changed to {ITEM.LASTVALUE} on {HOST.DNS}|<p>-</p>|warning|
|Supermicro physical disk status is {ITEM.LASTVALUE} on {HOST.DNS}|<p>-</p>|high|
|{#SNMPVALUE} is {ITEM.LASTVALUE} on {HOST.DNS}|<p>-</p>|warning|
|{#SNMPVALUE} is {ITEM.LASTVALUE} on {HOST.DNS}|<p>-</p>|high|
|{#SNMPVALUE} is {ITEM.LASTVALUE} on {HOST.DNS}|<p>-</p>|average|
|{#SNMPVALUE} is {ITEM.LASTVALUE} on {HOST.DNS}|<p>-</p>|high|
