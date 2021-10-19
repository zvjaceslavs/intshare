# calix

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
|Calix Interfaces|<p>-</p>|`SNMP agent`|discovery.ifName<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#SNMPVALUE} - Inbound traffic|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.10.[{#SNMPINDEX}]<p>Update: 30</p>|
|{#SNMPVALUE} - Outbound traffic|<p>-</p>|`SNMP agent`|1.3.6.1.2.1.2.2.1.16.[{#SNMPINDEX}]<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

