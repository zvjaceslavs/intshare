# Auto register an active Zabbix proxy

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
|zabbix_server.log proxy not found|<p>-</p>|`Zabbix agent (active)`|log[/var/log/zabbix/zabbix_server.log,"cannot parse proxy data from active proxy at.*proxy.*not found",,,skip,,]<p>Update: 1s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{{ITEM.VALUE}.regsub("(proxy \".*\" not found)",\1)}|<p>-</p>|average|
