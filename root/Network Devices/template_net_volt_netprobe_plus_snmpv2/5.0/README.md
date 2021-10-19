# Template Net VOLT NetProbe Plus SNMPv2

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
|Status de controle da Saída da Fonte|<p>-</p>|`SNMP agent`|statusswitch<p>Update: 60s</p>|
|Data de Criação|<p>-</p>|`SNMP agent`|date<p>Update: 60s</p>|
|Temperatura|<p>-</p>|`SNMP agent`|temperatura<p>Update: 60s</p>|
|Versão|<p>-</p>|`SNMP agent`|version<p>Update: 60s</p>|
|Status PoE|<p>-</p>|`SNMP agent`|statuspoe<p>Update: 60s</p>|
|Corrente de Saída PoE (Amperes)|<p>-</p>|`SNMP agent`|corrente<p>Update: 60s</p>|
|Fabricante|<p>-</p>|`SNMP agent`|sysContact<p>Update: 60s</p>|
|Voltagem de Entrada PoE|<p>-</p>|`SNMP agent`|voltagem<p>Update: 60s</p>|
|Modelo|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 60s</p>|
|Tempo de Uptime|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} foi reiniciado.|<p>-</p>|warning|
|{HOST.NAME} saída da fonte desligada|<p>-</p>|high|
|{HOST.NAME} Saída PoE desligada|<p>-</p>|high|
