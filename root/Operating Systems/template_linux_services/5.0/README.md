# Template Linux Services

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
|Linux service discovery|<p>-</p>|`Zabbix agent`|service.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Number of processes $1|<p>-</p>|`Zabbix agent`|proc.num[{#SERVICE}]<p>Update: 2m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Service {#SERVICE} is not running|<p>-</p>|high|
