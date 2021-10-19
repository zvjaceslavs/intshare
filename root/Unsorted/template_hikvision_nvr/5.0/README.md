# Template Hikvision

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
|DIskVolume|<p>-</p>|`SNMP agent`|hikDiskVolume<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of network interfaces|<p>The number of network interfaces (regardless of their current state) present on this system.</p>|`SNMP agent`|ifNumber<p>Update: 1h</p>|
|Device uptime|<p>The time since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|sysUpTime<p>Update: 60</p>|
|Device description|<p>A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|sysDescr<p>Update: 4h</p>|
|Installed HDD count|<p>-</p>|`SNMP agent`|hikDiskNum.0<p>Update: 6h</p>|
|HDD capability on {#HIKDINDEX}|<p>-</p>|`SNMP agent`|hikDiskCapability[{#HIKDINDEX}]<p>Update: 12h</p>|
|HDD free space on {#HIKDINDEX}|<p>-</p>|`SNMP agent`|hikDiskFreeSpace[{#HIKDINDEX}]<p>Update: 3h</p>|
|HDD Status on {#HIKDINDEX}|<p>-</p>|`SNMP agent`|hikDiskStatus[{#HIKDINDEX}]<p>Update: 30m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|HDD count changed on  {HOST.NAME}|<p>-</p>|average|
