# NETAPP_FAS_ONTAP_9.1

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
|Enclosure info|<p>-</p>|`SNMP agent`|enclosure<p>Update: 1h</p>|
|Volumes|<p>-</p>|`SNMP agent`|volume<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Uptime|<p>-</p>|`SNMP agent`|uptime<p>Update: 5m</p>|
|CPU %|<p>-</p>|`SNMP agent`|cpuTimePerCent<p>Update: 1m</p>|
|Disk fail|<p>-</p>|`SNMP agent`|failDisk<p>Update: 30s</p>|
|Disk pre-fail|<p>-</p>|`SNMP agent`|preFail<p>Update: 30s</p>|
|Total disk number|<p>-</p>|`SNMP agent`|nbTotalDisk<p>Update: 3600</p>|
|Auto-support status|<p>-</p>|`SNMP agent`|autosupportStatus<p>Update: 3600</p>|
|Firmware|<p>-</p>|`SNMP agent`|productFirmwareVersion<p>Update: 60m</p>|
|Enclosure {#SNMPINDEX} power fail|<p>-</p>|`SNMP agent`|ElecFail.[{#SNMPINDEX}]<p>Update: 60</p>|
|Enclosure {#SNMPINDEX}  fail|<p>-</p>|`SNMP agent`|FanFail.[{#SNMPINDEX}]<p>Update: 30s</p>|
|Enclosure {#SNMPINDEX} sensors fail|<p>-</p>|`SNMP agent`|SensorFail.[{#SNMPINDEX}]<p>Update: 60</p>|
|Enclosure {#SNMPINDEX} temp over|<p>-</p>|`SNMP agent`|TempOver.[{#SNMPINDEX}]<p>Update: 60</p>|
|Enclosure {#SNMPINDEX} power fail|<p>-</p>|`SNMP agent`|TempWarn.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Volume[{#VOLNAME}] TotalSize 64 bits|<p>-</p>|`SNMP agent`|df64TotalKBytesVol[{#SNMPINDEX}]<p>Update: 3600</p>|
|Volume[{#VOLNAME}] Used 64 bits|<p>-</p>|`SNMP agent`|df64UsedKBytesVol[{#SNMPINDEX}]<p>Update: 3600</p>|
|Pourcentage [{#VOLNAME}]  vol used|<p>-</p>|`Calculated`|Pvolused-[{#VOLNAME}]<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Redemarrage de {HOST.NAME}|<p>-</p>|information|
|{HOST.NAME} Autosupport disable|<p>-</p>|warning|
|{HOST.NAME} Cpu is over 90 %|<p>-</p>|warning|
|{HOST.NAME} Disk fail|<p>-</p>|average|
|{HOST.NAME} DIsk in preFail mode|<p>-</p>|warning|
|{HOST.NAME} No SNMP data since 10min|<p>-</p>|average|
|{HOST.NAME} Number of disk change|<p>-</p>|information|
|{HOSTNAME} Firmware have change|<p>-</p>|information|
|{HOST.NAME} Enclosure {#SNMPINDEX} Electronic failure|<p>-</p>|high|
|{HOST.NAME} Enclosure {#SNMPINDEX} Fan fail|<p>-</p>|high|
|{HOST.NAME} Enclosure {#SNMPINDEX} Sensor failure|<p>-</p>|high|
|{HOST.NAME} Enclosure {#SNMPINDEX} Temp Alert|<p>-</p>|high|
|{HOST.NAME} Enclosure {#SNMPINDEX} Temperature Warning|<p>-</p>|average|
|{HOST.NAME} [{#VOLNAME}] used over 95 %|<p>-</p>|average|
