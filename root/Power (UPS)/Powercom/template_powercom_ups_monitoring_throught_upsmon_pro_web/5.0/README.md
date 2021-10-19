# UPSMON Pro

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$URL}|<p>Here should be your UPSMON Pro URL</p>|`http://rd-kirovsk.gencoindustry.com:8000/ups.txt`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Log|<p>-</p>|`HTTP agent`|Log<p>Update: 1m</p>|
|Load|<p>-</p>|`Dependent item`|UPS.Load<p>Update: 0</p>|
|Temperature|<p>-</p>|`Dependent item`|UPS.Temperature<p>Update: 0</p>|
|Output|<p>-</p>|`Dependent item`|UPS.Output<p>Update: 0</p>|
|Frequency|<p>-</p>|`Dependent item`|UPS.Frequency<p>Update: 0</p>|
|Battery Level|<p>-</p>|`Dependent item`|UPS.Battery<p>Update: 0</p>|
|Input|<p>-</p>|`Dependent item`|UPS.Input<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Battery is less than 20%|<p>-</p>|disaster|
|Battery is less than 50%|<p>-</p>|high|
|Input is less than 180V|<p>-</p>|disaster|
|Input is less than 200V|<p>-</p>|high|
|Input is less than 220V|<p>-</p>|warning|
|Output is less than 200V|<p>-</p>|high|
|Temperature more than 30C|<p>-</p>|warning|
|Temperature more than 35C|<p>-</p>|high|
