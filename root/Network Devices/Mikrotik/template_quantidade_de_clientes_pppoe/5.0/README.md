# 1 - Template Check Active Client PPPoE

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Clientes Online|<p>-</p>|`SNMP agent`|PPPoE<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Mais de 1000 clientes conectados|<p>-</p>|high|
|Menos de 100 clientes conectados|<p>-</p>|high|
