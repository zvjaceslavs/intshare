# Mikrotik-QUEUETREE

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
|QueueTree|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.14988.1.1.2.2.1.2<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Queue $1 (IN)|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.14988.1.1.2.2.1.7[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

