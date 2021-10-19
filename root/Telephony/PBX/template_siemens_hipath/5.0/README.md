# Siemens HiPATH

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
|Devices|<p>-</p>|`SNMP agent`|h150ePort<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|h150e load level|<p>The actual CPU load level (per cent).</p>|`SNMP agent`|loadLevel<p>Update: 30</p>|
|sys software version|<p>Contains the version string of the system software.</p>|`SNMP agent`|sysVersion<p>Update: 3600</p>|
|h150e sys state|<p>The actual error state of the device. Contains the highest severity level of the recent error events. This object is updated automatically, but it can also be modified manually.</p>|`SNMP agent`|sysState<p>Update: 30</p>|
|sys hardware version|<p>-</p>|`SNMP agent`|hwVersion<p>Update: 3600</p>|
|Lock State of device $1|<p>-</p>|`SNMP agent`|Lock[{#SNMPVALUE}]<p>Update: 60</p>|
|State of device $1|<p>-</p>|`SNMP agent`|State[{#SNMPVALUE}]<p>Update: 60</p>|
|Type of device $1|<p>-</p>|`SNMP agent`|Type[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|System error state|<p>The actual error state of the device. Contains the highest severity level of the recent error events. This object is updated automatically, but it can also be modified manually.</p>|warning|
|System error state Critical|<p>The actual error state of the device. Contains the highest severity level of the recent error events. This object is updated automatically, but it can also be modified manually.</p>|high|
|Lock status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|warning|
|Operational status was changed on {HOST.NAME} interface {#SNMPVALUE}|<p>-</p>|information|
