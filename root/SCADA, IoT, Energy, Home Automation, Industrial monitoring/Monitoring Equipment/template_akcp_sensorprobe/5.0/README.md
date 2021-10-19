# Template AKCP

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
|temperaturesensor|<p>-</p>|`SNMP agent`|TempDescr<p>Update: 60</p>|
|humiditysensor|<p>-</p>|`SNMP agent`|HumiDescr<p>Update: 60</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device Type|<p>-</p>|`SNMP agent`|hrDeviceDescr<p>Update: 43200</p>|
|Device MAC address|<p>-</p>|`SNMP agent`|ifPhysAddress<p>Update: 3600</p>|
|temperaturesensor $1|<p>-</p>|`SNMP agent`|TempDescr[{#SNMPVALUE}]<p>Update: 60</p>|
|temperature $1|<p>-</p>|`SNMP agent`|TempValue[{#SNMPVALUE}]<p>Update: 60</p>|
|humiditysensor $1|<p>-</p>|`SNMP agent`|HumiDescr[{#SNMPVALUE}]<p>Update: 60</p>|
|humidity $1|<p>-</p>|`SNMP agent`|HumiValue[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|temperaturealarm {#SNMPVALUE}|<p>-</p>|disaster|
|temperaturewarning {#SNMPVALUE}|<p>-</p>|warning|
|humidityalarm {#SNMPVALUE}|<p>-</p>|disaster|
|humiditywarning {#SNMPVALUE}|<p>-</p>|warning|
