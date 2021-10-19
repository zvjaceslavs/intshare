# Template Bind queries

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
|Recursive TCP|<p>-</p>|`Zabbix agent`|bind.tcpcl<p>Update: 30s</p>|
|Recursive UDP|<p>-</p>|`Zabbix agent`|bind.udpcl<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Too much recursive queries on {HOST.NAME}|<p>-</p>|warning|
