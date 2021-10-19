# Template Module ICMP ping from the Zabbix Windows agent

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$PING_LIST}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping discovery|<p>-</p>|`Dependent item`|icmpping.discovery<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|get ICMP ping list|<p>Dummy item for addresses LLD from {$PING_LIST} user macro</p>|`Simple check`|icmpping[localhost]<p>Update: 1d</p>|
|get icmp ping {#ADDR}|<p>-</p>|`Zabbix agent`|wmi.getall[root\cimv2,"SELECT PrimaryAddressResolutionStatus, StatusCode, ResponseTime FROM Win32_PingStatus WHERE Address='{#ADDR}' AND Timeout=2000"]<p>Update: 1m</p>|
|ping status {#ADDR}|<p>-</p>|`Dependent item`|ping.status[{#ADDR}]<p>Update: 0</p>|
|resolution status {#ADDR}|<p>-</p>|`Dependent item`|resolution.status[{#ADDR}]<p>Update: 0</p>|
|response time {#ADDR}|<p>-</p>|`Dependent item`|response.time[{#ADDR}]<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

