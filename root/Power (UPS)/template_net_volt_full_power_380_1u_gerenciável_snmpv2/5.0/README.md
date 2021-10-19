# Template Net VOLT Full Power SNMPv2

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
|Fabricante|<p>-</p>|`SNMP agent`|sysName<p>Update: 30s</p>|
|Corrente consumida (A)|<p>-</p>|`SNMP agent`|corrente<p>Update: 60s</p>|
|Tensão da Bateria (V)|<p>-</p>|`SNMP agent`|voltagemBateria<p>Update: 60s</p>|
|Tempo de Uptime|<p>-</p>|`SNMP agent`|sysUpTimeINstance<p>Update: 30s</p>|
|Temperatura|<p>-</p>|`SNMP agent`|temperatura<p>Update: 60s</p>|
|Modelo|<p>-</p>|`SNMP agent`|name<p>Update: 60s</p>|
|Modo de Operação|<p>-</p>|`SNMP agent`|modoOperacao<p>Update: 60s</p>|
|Status de controle da Saída da Fonte|<p>-</p>|`SNMP agent`|statusSaida<p>Update: 60s</p>|
|Tensão de Saída (V)|<p>-</p>|`SNMP agent`|voltagemSaida<p>Update: 30s</p>|
|Versao do Hardware|<p>-</p>|`SNMP agent`|version<p>Update: 60s</p>|
|Data de Criação|<p>-</p>|`SNMP agent`|date<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Fonte Nobreak Volt {HOST.NAME} foi reiniciada|<p>-</p>|warning|
|Fonte Nobreak Volt {HOST.NAME} operando em bateria|<p>-</p>|disaster|
|Fonte Nobreak Volt {HOST.NAME} saída da fonte desligada.|<p>-</p>|warning|
