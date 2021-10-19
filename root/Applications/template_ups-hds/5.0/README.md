# Template UPS HDS

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device Location|<p>Informa a filial do nobreak.</p>|`SNMP agent`|sysLocation<p>Update: 86400</p>|
|Status saída nobreak|<p>Informa o status atual da UPS</p>|`SNMP agent`|upsBaseOutputStatus.0<p>Update: 900</p>|
|Voltagem Bateria|<p>Informa a voltagem da Bateria</p>|`SNMP agent`|upsBatteryVoltage.0<p>Update: 1800</p>|
|Voltagem Entrada de Energia|<p>-</p>|`SNMP agent`|upsInputVoltage.1<p>Update: 120</p>|
|Uptime|<p>Informa à quanto tempo está on-line</p>|`SNMP agent`|sysUpTime<p>Update: 600</p>|
|Status bateria|<p>Informa o status da Bateria. { unknown ( 1 ) , batteryNormal ( 2 ) , batteryLow ( 3 ) }</p>|`SNMP agent`|upsBaseBatteryStatus.0<p>Update: 120</p>|
|Name Device|<p>Informa nome do Dispositivo</p>|`SNMP agent`|sysName<p>Update: 86400</p>|
|Carga da UPS|<p>A carga atual do UPS expressa em porcentagem da capacidade nominal.</p>|`SNMP agent`|upsSmartOutputLoad.0<p>Update: 1500</p>|
|Capacidade da Bateria|<p>A capacidade restante da bateria expressa em percentagem da capacidade total</p>|`SNMP agent`|upsSmartBatteryCapacity<p>Update: 120</p>|
|Frequência da Energia de Entrada|<p>Informa o valor da frequência da enerfica Input</p>|`SNMP agent`|upsInputFrequency.1<p>Update: 120</p>|
|Temperatura UPS|<p>-</p>|`SNMP agent`|upsSmartBatteryTemperature.0<p>Update: 900</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Nível de carga em 20%|<p>-</p>|high|
|Nível de carga em 50%|<p>Capacidade de carga entre 50% e 20%</p>|average|
