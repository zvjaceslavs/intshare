# SFP Mikrotik

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
|Signal SFP Mikrotik|<p>-</p>|`SNMP agent`|signal.sfp<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|RX $1|<p>-</p>|`SNMP agent`|RX[{#SNMPVALUE}]<p>Update: 30s</p>|
|Temperatura $1|<p>-</p>|`SNMP agent`|temperatura[{#SNMPVALUE}]<p>Update: 30s</p>|
|TX $1|<p>-</p>|`SNMP agent`|TX[{#SNMPVALUE}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Alarme Temperatura - atenção|<p>-</p>|warning|
|Alarme Temperatura - Critico|<p>-</p>|high|
|SFP Signal Change|<p>-</p>|average|
