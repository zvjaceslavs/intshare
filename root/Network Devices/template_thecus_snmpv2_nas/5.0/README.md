# Template SNMP THECUS NAS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HD_TEMPERATURE_ALARM}|<p>-</p>|`51`|Text macro|
|{$HD_TEMPERATURE_WARNING}|<p>-</p>|`40`|Text macro|
|{$SNMP_PORT}|<p>-</p>|`161`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Hard disks discovery|<p>-</p>|`SNMP agent`|nasDisk.discovery<p>Update: 1h</p>|
|RAID discovery|<p>-</p>|`SNMP agent`|nasRaid.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System status|<p>-</p>|`SNMP agent`|systemStatus<p>Update: 60</p>|
|System Mini-UPS Status|<p>-</p>|`SNMP agent`|systemMiniUPSStatus<p>Update: 60</p>|
|System vendor|<p>-</p>|`SNMP agent`|systemVendor<p>Update: 3h</p>|
|System model|<p>-</p>|`SNMP agent`|systemModel<p>Update: 3h</p>|
|System firmware|<p>-</p>|`SNMP agent`|systemFirmware<p>Update: 3h</p>|
|System fan status|<p>-</p>|`SNMP agent`|systemFanStatus<p>Update: 60</p>|
|System temperature|<p>System temperature in centigrade</p>|`SNMP agent`|systemTemperature<p>Update: 60</p>|
|Disk Capacity {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskCapacity[{#SNMPINDEX}]<p>Update: 1h</p>|
|Disk ID {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskID[{#SNMPINDEX}]<p>Update: 3h</p>|
|Model of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskModel[{#SNMPINDEX}]<p>Update: 3h</p>|
|Reallocate_Sector_Ct {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskSMARTAttr5[{#SNMPINDEX}]<p>Update: 60</p>|
|Power_On_hours{#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskSMARTAttr9[{#SNMPINDEX}]<p>Update: 60</p>|
|End-to-End Error {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskSMARTAttr184[{#SNMPINDEX}]<p>Update: 60</p>|
|Temperature of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskSMARTAttr194[{#SNMPINDEX}]<p>Update: 60</p>|
|Current__Pending_Sector {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskSMARTAttr197[{#SNMPINDEX}]<p>Update: 60</p>|
|S.M.A.R.T. info of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskSMARTHealthCheck[{#SNMPINDEX}]<p>Update: 60</p>|
|Status of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskStatus[{#SNMPINDEX}]<p>Update: 60</p>|
|Disk Tray Number {#SNMPVALUE}|<p>-</p>|`SNMP agent`|diskTrayNum[{#SNMPINDEX}]<p>Update: 3h</p>|
|RAID ID of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|raidID[{#SNMPINDEX}]<p>Update: 3h</p>|
|RAID level of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|raidLevel[{#SNMPINDEX}]<p>Update: 3h</p>|
|RAID number of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|raidNum[{#SNMPINDEX}]<p>Update: 3h</p>|
|RAID size of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|raidSize[{#SNMPINDEX}]<p>Update: 1h</p>|
|RAID status of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|raidStatus[{#SNMPINDEX}]<p>Update: 60</p>|
|RAID units of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|raidUnits[{#SNMPINDEX}]<p>Update: 3h</p>|
|RAID used percent of {#SNMPVALUE} (%)|<p>-</p>|`SNMP agent`|raidUsedPercentage[{#SNMPINDEX}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Firmware on {HOST.NAME} is changed|<p>-</p>|information|
|State of {#SNMPVALUE} on {HOST.NAME} is "Current Pending Sector"|<p>-</p>|average|
|State of {#SNMPVALUE} on {HOST.NAME} is "End-to-End Error"|<p>State "noDisk"</p>|average|
|State of {#SNMPVALUE} on {HOST.NAME} is "Reallocated_Sector_Ct"|<p>State "rwError"</p>|average|
|State of {#SNMPVALUE} on {HOST.NAME} is not "Ready" ({ITEM.VALUE1})|<p>-</p>|high|
|Temperature of {#SNMPVALUE} on {HOST.NAME} is over {$HD_TEMPERATURE_ALARM} for 2 min|<p>-</p>|high|
|Temperature of {#SNMPVALUE} on {HOST.NAME} is over {$HD_TEMPERATURE_WARNING} for 2min|<p>-</p>|information|
|Free space is less than 5% on volume {#SNMPVALUE}|<p>-</p>|high|
|Free space is less than 10% on volume {#SNMPVALUE}|<p>-</p>|warning|
|Free space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|information|
