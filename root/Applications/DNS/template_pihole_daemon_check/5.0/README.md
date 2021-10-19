# pihole-FTL

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
|pihole-FTL service is running|<p>service.info[{#SERVICE.NAME},<парам>]</p>|`Zabbix agent (active)`|proc.num[pihole-FTL]<p>Update: 5</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|pihole-FTL service is down on {HOST.NAME}|<p>-</p>|high|
