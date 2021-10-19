# Volt Pop Protect SNMP

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Amperagem Bateria|<p>-</p>|`SNMP agent`|voltagembateria<p>Update: 20</p>|
|Temperatura|<p>-</p>|`SNMP agent`|temperatura<p>Update: 30</p>|
|Tensão AC Entrada|<p>-</p>|`SNMP agent`|voltagementrada<p>Update: 20</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Alerta de Consumo de Bateria em {HOST.NAME}|<p>-</p>|warning|
|Bateria em Estado Critico em {HOST.NAME}|<p>-</p>|high|
|Queda de energia AC em {HOST.NAME}|<p>-</p>|high|
|Temperatura anormal em {HOST.NAME}|<p>-</p>|warning|
|Tensão de Entrada fora dos Limites em {HOST.NAME}|<p>-</p>|high|
