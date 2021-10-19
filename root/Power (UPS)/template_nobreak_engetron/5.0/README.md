# Template Nobreak Engetron

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
|UpsInputCurrent.3|<p>-</p>|`SNMP agent`|UpsInputCurrent.3<p>Update: 2m</p>|
|UpsInputVoltage.3|<p>-</p>|`SNMP agent`|UpsInputVoltage.3<p>Update: 2m</p>|
|UpsEstimatedChargeRemaining|<p>-</p>|`SNMP agent`|UpsEstimatedChargeRemaining<p>Update: 2m</p>|
|UpsBatteryTemperature|<p>-</p>|`SNMP agent`|UpsBatteryTemperature.0<p>Update: 2m</p>|
|UpsOutputCurrent.3|<p>-</p>|`SNMP agent`|UpsOutputCurrent.3<p>Update: 2m</p>|
|SysLocation|<p>-</p>|`SNMP agent`|SysLocation<p>Update: 10h</p>|
|UpsEstimatedMinutesRemaining|<p>-</p>|`SNMP agent`|UpsEstimatedMinutesRemaining<p>Update: 2m</p>|
|UpsOutputCurrent.1|<p>-</p>|`SNMP agent`|UpsOutputCurrent.1<p>Update: 2m</p>|
|UpsIdentModel|<p>-</p>|`SNMP agent`|UpsIdentModel<p>Update: 10h</p>|
|SysName|<p>-</p>|`SNMP agent`|SysName<p>Update: 10h</p>|
|UpsInputCurrent.1|<p>-</p>|`SNMP agent`|UpsInputCurrent.1<p>Update: 2m</p>|
|UpsInputVoltage.1|<p>-</p>|`SNMP agent`|UpsInputVoltage.1<p>Update: 2m</p>|
|UpsInputCurrent.2|<p>-</p>|`SNMP agent`|UpsInputCurrent.2<p>Update: 2m</p>|
|UpsOutputVoltage.2|<p>-</p>|`SNMP agent`|UpsOutputVoltage.2<p>Update: 2m</p>|
|UpsInputVoltage.2|<p>-</p>|`SNMP agent`|UpsInputVoltage.2<p>Update: 2m</p>|
|UpsOutputCurrent.2|<p>-</p>|`SNMP agent`|UpsOutputCurrent.2<p>Update: 2m</p>|
|UpsOutputVoltage.1|<p>-</p>|`SNMP agent`|UpsOutputVoltage.1<p>Update: 2m</p>|
|UpsOutputVoltage.3|<p>-</p>|`SNMP agent`|UpsOutputVoltage.3<p>Update: 2m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} | Falta de Alimentação|<p>-</p>|disaster|
|{HOST.NAME} | SEM Corrente de Entrada|<p>-</p>|high|
|{HOST.NAME} | SEM Corrente de Saida|<p>-</p>|high|
|{HOST.NAME} | SEM Tensao de Saida|<p>-</p>|high|
|{HOST.NAME} | SEM Tensao Entrada|<p>-</p>|high|
|{HOST.NAME} | Temperatura Acima de 40º C|<p>-</p>|high|
