# Template Nakivo

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
|Nakivo Jobs|<p>-</p>|`External check`|nakivo.pl[{HOST.CONN},"--job-list"]<p>Update: 60m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Job[{#NAME}] State|<p>-</p>|`External check`|nakivo.pl[{HOST.CONN},"--job-info", "{#ID}","2"]<p>Update: 5m</p>|
|Job[{#NAME}] Last Result|<p>-</p>|`External check`|nakivo.pl[{HOST.CONN},"--job-info", "{#ID}","3"]<p>Update: 5m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Job[{#NAME}] failed|<p>-</p>|warning|
