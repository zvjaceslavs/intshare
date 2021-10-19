# Template Humidity and temperature sensor brrr.cz

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
|Brrr.cz - humidity|<p>-</p>|`Dependent item`|brrr.humidity<p>Update: 0</p>|
|Brrr.cz - entire HTML page|<p>-</p>|`HTTP agent`|brrr.page<p>Update: 10m</p>|
|Brrr.cz - temperature|<p>-</p>|`Dependent item`|brrr.temperature<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Brrr.cz - humidity high|<p>-</p>|information|
|Brrr.cz - humidity low|<p>-</p>|information|
|Brrr.cz - device unreachable more than 8 hours|<p>-</p>|average|
|Brrr.cz - device unreachable more than 30 minutes|<p>-</p>|warning|
|Brrr.cz - temperature high|<p>-</p>|warning|
|Brrr.cz - temperature low|<p>-</p>|warning|
# Template Temperature sensor brrr.cz

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
|Brrr.cz - entire HTML page|<p>-</p>|`HTTP agent`|brrr.page<p>Update: 10m</p>|
|Brrr.cz - temperature|<p>-</p>|`Dependent item`|brrr.temperature<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Brrr.cz - device unreachable more than 8 hours|<p>-</p>|average|
|Brrr.cz - device unreachable more than 30 minutes|<p>-</p>|warning|
|Brrr.cz - temperature high|<p>-</p>|warning|
|Brrr.cz - temperature low|<p>-</p>|warning|
