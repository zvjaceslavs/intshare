# Template SNMP QNAP NAS

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
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Volumes discovery|<p>-</p>|`SNMP agent`|sysVolumes.discovery<p>Update: 3600</p>|
|Network interfaces discovery|<p>-</p>|`SNMP agent`|netIfs.discovery<p>Update: 3600</p>|
|Hard disks discovery|<p>-</p>|`SNMP agent`|sysHDs.discovery<p>Update: 3600</p>|
|System fans discovery|<p>-</p>|`SNMP agent`|sysFans.discovery<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System temperature|<p>System temperature in centigrade</p>|`SNMP agent`|SystemTemperatureEX<p>Update: 60</p>|
|Device system name|<p>Host name</p>|`SNMP agent`|HostNameEX<p>Update: 3600</p>|
|Device vendor name|<p>-</p>|`SNMP agent`|sysPhysicalMfgName<p>Update: 3600</p>|
|Device software revision|<p>-</p>|`SNMP agent`|PhysicalSoftwareRev<p>Update: 3600</p>|
|System free memory (%)|<p>-</p>|`Calculated`|SystemPFreeMemEX<p>Update: 60</p>|
|System uptime|<p>-</p>|`SNMP agent`|sysUptime<p>Update: 60</p>|
|Device firmware revision|<p>-</p>|`SNMP agent`|PhysicalFirmwareRev<p>Update: 3600</p>|
|System free memory|<p>-</p>|`SNMP agent`|SystemFreeMemEX<p>Update: 60</p>|
|CPU usage|<p>System CPU usage</p>|`SNMP agent`|SystemCPU-UsageEX<p>Update: 60</p>|
|System total memory|<p>-</p>|`SNMP agent`|SystemTotalMemEX<p>Update: 10800</p>|
|CPU temperature|<p>CPU temperature in centigrade</p>|`SNMP agent`|CPU-TemperatureEX<p>Update: 60</p>|
|Device model name|<p>-</p>|`SNMP agent`|ModelNameEX<p>Update: 10800</p>|
|Device hardware revision|<p>-</p>|`SNMP agent`|PhysicalHardwareRev<p>Update: 10800</p>|
|Free size of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SysVolumeFreeSizeEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Free size of {#SNMPVALUE} (%)|<p>-</p>|`Calculated`|SysVolumePFreeSizeEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Status of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SysVolumeStatusEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Total size of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SysVolumeTotalSizeEX[{#SNMPINDEX}]<p>Update: 3600</p>|
|Error $2 on $1|<p>-</p>|`SNMP agent`|net.if.err[{#SNMPVALUE},bps]<p>Update: 60</p>|
|Recived $2 on $1|<p>-</p>|`SNMP agent`|net.if.in[{#SNMPVALUE}, bps]<p>Update: 60</p>|
|Sent $2 on $1|<p>-</p>|`SNMP agent`|net.if.out[{#SNMPVALUE}, bps]<p>Update: 60</p>|
|Capacity of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|HdCapacityEX[{#SNMPINDEX}]<p>Update: 3600</p>|
|Model of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|HdModelEX[{#SNMPINDEX}]<p>Update: 3600</p>|
|S.M.A.R.T. info of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|HdSmartInfoEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Status of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|HdStatusEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Temperature of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|HdTemperatureEX[{#SNMPINDEX}]<p>Update: 60</p>|
|Speed of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|SysFanSpeedEX[{#SNMPINDEX}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU utilization on {HOST.NAME} is over 80% for 15 min|<p>-</p>|warning|
|CPU utilization on {HOST.NAME} is over 95% for 15 min|<p>-</p>|average|
|Firmware on {HOST.NAME} is changed|<p>-</p>|information|
|{HOST.NAME} has just been restarted|<p>-</p>|high|
|Free space is less than 20% on volume {#SNMPVALUE}|<p>-</p>|warning|
|SMART state of {#SNMPVALUE} on {HOST.NAME} is ABNORMAL|<p>Abnormal 1. Any SMART value is equal or less than trhreshold. 2. Hard Disk temperature is higher than 65 degree C. -------- QNAP Knowledgebase</p>|average|
|SMART state of {#SNMPVALUE} on {HOST.NAME} is not GOOD ({ITEM.VALUE1})|<p>Normal 1. Any Smart value is equal or less than threhold + (initial_SMART_value - threhold)/2. For example, if the initial SMART value is 100, the current value is 50, the threshold is 20, then the Smart value, 50, is less than 20+(100-20)/2. Thus, the health level would be Normal. 2. Any SMART test(Rapid or Complete) result of last 20 times is abnormal. 3. Hard Disk temperature is between 55 to 65 degree C. -------- QNAP Knowledgebase</p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is "Invalid"|<p>State "Invalid"</p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is "noDisk"|<p>State "noDisk"</p>|information|
|State of {#SNMPVALUE} on {HOST.NAME} is "rwError"|<p>State "rwError"</p>|warning|
|State of {#SNMPVALUE} on {HOST.NAME} is not "Ready" ({ITEM.VALUE1})|<p>-</p>|information|
|Temperature of {#SNMPVALUE} on {HOST.NAME} is over {$HD_TEMPERATURE_ALARM} for 2 min|<p>-</p>|high|
|Temperature of {#SNMPVALUE} on {HOST.NAME} is over {$HD_TEMPERATURE_WARNING} for 2min|<p>-</p>|information|
|{#SNMPVALUE} fan on {HOST.NAME} possibly is stopped|<p>-</p>|warning|
