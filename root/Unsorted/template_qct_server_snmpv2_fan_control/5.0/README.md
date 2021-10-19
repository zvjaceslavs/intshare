# QCT Hardware Health

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
|Fan Index|<p>-</p>|`SNMP agent`|fan.index<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#FANNAME} Fan RPM|<p>-</p>|`SNMP agent`|fan.rpm.[{#SNMPINDEX}]<p>Update: 1m</p>|
|{#FANNAME} Fan Status|<p>-</p>|`SNMP agent`|fan.status.[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

