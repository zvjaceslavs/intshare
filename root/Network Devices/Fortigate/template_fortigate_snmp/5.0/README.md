# Template SNMP Fortinet Devices

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
|Network Interfaces|<p>-</p>|`SNMP agent`|ifname<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Current RAM Usage|<p>-</p>|`SNMP agent`|fortinetCurrentRAMUtil<p>Update: 60</p>|
|Used storage space|<p>-</p>|`SNMP agent`|fortinetUsedStorage<p>Update: 60</p>|
|Total storage space|<p>-</p>|`SNMP agent`|fortinetTotalStorage<p>Update: 3600</p>|
|Firmware Version|<p>-</p>|`SNMP agent`|SysmFirmwareVersion<p>Update: 3600</p>|
|Current CPU Util|<p>-</p>|`SNMP agent`|fortinetCurrentCPUUtil<p>Update: 60</p>|
|Fortinet Used Storage %|<p>-</p>|`Calculated`|fortinetUsedStorage-percent<p>Update: 60</p>|
|Current connections|<p>-</p>|`SNMP agent`|fortinetCurrentConnections<p>Update: 60</p>|
|Fortinet Uptime|<p>-</p>|`SNMP agent`|fortinetUpTime<p>Update: 30</p>|
|Serial Number|<p>-</p>|`SNMP agent`|SysmSerialNumber<p>Update: 3600</p>|
|Upload $1|<p>-</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 30</p>|
|Link Speed $1|<p>-</p>|`SNMP agent`|ifHighSpeed[{#SNMPVALUE}]<p>Update: 300</p>|
|Download $1|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Fortinet {HOST.NAME} Rebooted|<p>The Fortinet has been rebooted during last 10 checks</p>|average|
|Fortinet {HOSTNAME} - Memory Usage Over 100%|<p>Memory usage on Fortinet is more than 100% during the last five checks</p>|average|
|Fortinet {HOSTNAME} - Usage of CPU over 95%|<p>CPU activity on Fortinet is more than 95% during the last five checks</p>|average|
