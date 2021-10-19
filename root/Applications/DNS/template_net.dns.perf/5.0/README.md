# net.dns.perf

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$DNS_SERVER}|<p>-</p>|`8.8.8.8`|Text macro|
|{$DOMAIN_NAME}|<p>-</p>|`yahoo.co.jp`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|net.dns.perf|<p>-</p>|`Zabbix agent (active)`|system.run[dig {$DNS_SERVER} {$DOMAIN_NAME} |grep Query |awk 'END{print$4}']<p>Update: 600</p>|
## Triggers

There are no triggers in this template.

