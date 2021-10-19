# Template App HTTPS Service

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
|HTTPS service is running|<p>-</p>|`Simple check`|net.tcp.service[https]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|HTTPS service is down on {HOST.NAME}|<p>-</p>|average|
