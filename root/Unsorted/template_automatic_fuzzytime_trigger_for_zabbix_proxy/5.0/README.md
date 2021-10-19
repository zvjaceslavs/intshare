# Auto fuzzytime trigger for Zabbix proxy

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$PROXYFUZZYTIME}|<p>-</p>|`3m`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discover all proxies|<p>-</p>|`HTTP agent`|get.proxy.list<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Last access for {#PROXYNAME}|<p>-</p>|`Zabbix internal`|zabbix[proxy,{#PROXYNAME},lastaccess]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#PROXYNAME} is not reachable for {$PROXYFUZZYTIME}|<p>-</p>|high|
