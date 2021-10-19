# Mikrotik Script Execution

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
|Scripts|<p>-</p>|`SNMP agent`|MikScript<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Execution of  {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ExecScript.[{#SNMPINDEX}]<p>Update: 300</p>|
## Triggers

There are no triggers in this template.

