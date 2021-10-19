# Template UNIFI SNMP 2019 V1.0

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Wifi Interfaces|<p>-</p>|`SNMP agent`|unifiVapName<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|IP Address|<p>-</p>|`SNMP agent`|unifiApSystemIp.0<p>Update: 1m</p>|
|Model|<p>Informa o modelo do aparelho</p>|`SNMP agent`|unifiApSystemModel.0<p>Update: 1m</p>|
|MAC Address|<p>-</p>|`SNMP agent`|unifiIfMac.1<p>Update: 1m</p>|
|Traffic Incoming|<p>-</p>|`SNMP agent`|unifiIfRxBytes.1<p>Update: 1m</p>|
|Firmware version|<p>-</p>|`SNMP agent`|unifiApSystemVersion.0<p>Update: 1m</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime.0<p>Update: 1m</p>|
|Interface Speed (Mbit/s)|<p>-</p>|`SNMP agent`|unifiIfSpeed.1<p>Update: 1m</p>|
|Location|<p>Informa o modelo do aparelho</p>|`SNMP agent`|sysLocation.0<p>Update: 1m</p>|
|AP Hostname|<p>-</p>|`SNMP agent`|unifiSysName.0<p>Update: 1m</p>|
|Traffic Outgoing|<p>-</p>|`SNMP agent`|unifiIfTxBytes.1<p>Update: 1m</p>|
|System Description|<p>Informa o modelo do aparelho</p>|`SNMP agent`|sysDescr.0<p>Update: 1m</p>|
|Contact|<p>Informa o modelo do aparelho</p>|`SNMP agent`|sysContact.0<p>Update: 1m</p>|
|Alias of interface $1|<p>-</p>|`SNMP agent`|unifiVapEssId[{#UNIFIVAPNAME}]<p>Update: 30s</p>|
|Users on $1|<p>-</p>|`SNMP agent`|unifiVapNumStations[{#UNIFIVAPNAME}]<p>Update: 30s</p>|
|Traffic Incoming on $1|<p>-</p>|`SNMP agent`|unifiVapRxBytes[{#UNIFIVAPNAME}]<p>Update: 30s</p>|
|Traffic Outgoing on $1|<p>-</p>|`SNMP agent`|unifiVapTxBytes[{#UNIFIVAPNAME}]<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

