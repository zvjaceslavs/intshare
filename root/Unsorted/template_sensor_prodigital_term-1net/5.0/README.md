# Template Sensor ProDigital Term-1Net

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
|Temperatura|<p>-</p>|`SNMP agent`|temp.C<p>Update: 60s</p>|
|Umidade|<p>-</p>|`SNMP agent`|umidade.percent<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|ATENÇÃO - Temperatura de 30°C e subindo em {HOST.NAME}|<p>-</p>|disaster|
|Sem dados de temperatura em {HOST.NAME}|<p>-</p>|average|
|Temperatura de 10°C e caindo em {HOST.NAME}|<p>-</p>|high|
|Temperatura de 25°C e subindo em {HOST.NAME}|<p>-</p>|high|
