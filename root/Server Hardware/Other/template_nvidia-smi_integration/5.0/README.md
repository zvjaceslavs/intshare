# Template NVidia Sensors

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
|GPU Free Memory|<p>-</p>|`Zabbix agent`|gpu.free<p>Update: 30</p>|
|GPU Utilisation|<p>-</p>|`Zabbix agent`|gpu.utilisation<p>Update: 30</p>|
|GPU Total Memory|<p>-</p>|`Zabbix agent`|gpu.memtotal<p>Update: 30</p>|
|GPU Power|<p>-</p>|`Zabbix agent`|gpu.power<p>Update: 30</p>|
|GPU Used Memory|<p>-</p>|`Zabbix agent`|gpu.used<p>Update: 30</p>|
|GPU Temperature|<p>-</p>|`Zabbix agent`|gpu.temp<p>Update: 30</p>|
|GPU Fan Speed|<p>-</p>|`Zabbix agent`|gpu.fanspeed<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|GPU Temperature over 95c {HOSTNAME}|<p>-</p>|average|
