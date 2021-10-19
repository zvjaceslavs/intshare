# DEVLINE

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
|CamList|<p>-</p>|`Zabbix agent`|devline.discovery<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DEVLINE KERNEL|<p>-</p>|`Zabbix agent`|service.info[SDevKernel,state]<p>Update: 3m</p>|
|{#NAME}|<p>-</p>|`Zabbix agent`|devline.viewpic[{#IMAGE_URI}]<p>Update: 10m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Devline Kernel Service is not Running|<p>-</p>|disaster|
|{HOST.NAME}: no image from [{#NAME}]|<p>-</p>|average|
