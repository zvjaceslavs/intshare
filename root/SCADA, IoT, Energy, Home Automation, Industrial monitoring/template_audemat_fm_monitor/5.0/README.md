# Template Discovery Audemat

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
|AudematFM|<p>-</p>|`SNMP agent`|Audemat.disco<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Disponibilidad SNMP|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 60s</p>|
|Left Audio Level - {#NAME}|<p>-</p>|`SNMP agent`|AudioLeft[{#INDEX}]<p>Update: 30s</p>|
|Rigth Audio Level - {#NAME}|<p>-</p>|`SNMP agent`|AudioRigth[{#INDEX}]<p>Update: 30s</p>|
|MPX Level - {#NAME}|<p>-</p>|`SNMP agent`|mpx[{#INDEX}]<p>Update: 30s</p>|
|Frecuencia Radio {#INDEX}|<p>-</p>|`SNMP agent`|RadioF[{#INDEX}]<p>Update: 30s</p>|
|Nombre Radio {#INDEX}|<p>-</p>|`SNMP agent`|RadioN[{#INDEX}]<p>Update: 30s</p>|
|RF Level - {#NAME}|<p>-</p>|`SNMP agent`|RFLvl[{#INDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#NAME} {HOST.NAME}: Modulacion (MPX) Baja|<p>-</p>|average|
|{#NAME} {HOST.NAME}: Modulacion (MPX) Demasiado Baja|<p>-</p>|high|
