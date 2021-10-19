# FreeBSD Core Temp

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
|CPU core discovery|<p>-</p>|`Zabbix agent`|coretemp.cpu.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|CPU Core {#CPUCORE} Temp|<p>-</p>|`Zabbix agent`|coretemp.cpu[{#CPUCORE}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|CPU Core {#CPUCORE} temperature is above 85C on {HOST.NAME}|<p>-</p>|high|
