# Template Discovery DHCP scopes

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
|DHCP scopes|<p>-</p>|`SNMP agent`|dhcp.scope<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of addresses that are free on scope {#IPSCOPE}|<p>-</p>|`SNMP agent`|ipfree[{#IPSCOPE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|The number of addresses that are free on scope {#IPSCOPE} is low|<p>If the number of free adresses is less than 5, the trigger will be activated.</p>|high|
