# ProximVision NMS

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
|PVServer service status|<p>-</p>|`Zabbix agent`|service.info[PVServer]<p>Update: 60</p>|
|PVMonitor service status|<p>-</p>|`Zabbix agent`|service.info[PVMonitor]<p>Update: 60</p>|
|PostgreSQL service status|<p>-</p>|`Zabbix agent`|service.info[postgresql-9.2]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Service postgresql-9.2 faulted|<p>-</p>|disaster|
|Service PVMonitor faulted|<p>-</p>|high|
|Service PVServer faulted|<p>-</p>|disaster|
