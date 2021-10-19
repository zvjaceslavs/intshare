# Template East Nobreak

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`nobreak01`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Frequência de Saída|<p>-</p>|`SNMP agent`|upsOutputFrequency<p>Update: 15</p>|
|Frequência de Entrada|<p>-</p>|`SNMP agent`|upsInputFrequency<p>Update: 15</p>|
|Tempo Restante de Carga|<p>-</p>|`SNMP agent`|BatTimeRemaining<p>Update: 180</p>|
|Restante de Carga|<p>-</p>|`SNMP agent`|upsEstimatedChargeRemaining<p>Update: 15</p>|
|Temperatura da Bateria|<p>-</p>|`SNMP agent`|temp<p>Update: 180</p>|
|Corrente da Bateria|<p>-</p>|`SNMP agent`|batteryCurrent<p>Update: 180</p>|
|Carga da Bateria|<p>-</p>|`SNMP agent`|BatCapacity<p>Update: 15</p>|
|Carga de Uso do Nobreak|<p>-</p>|`SNMP agent`|load-current<p>Update: 180</p>|
|Estado da Bateria|<p>Trigger 1 Desconhecido 2 Bateria Normal 3 Bateria Baixa 4 Depreciada</p>|`SNMP agent`|upsBatteryStatus<p>Update: 180</p>|
|Tensão de Entrada|<p>-</p>|`SNMP agent`|ac-Voltage<p>Update: 180</p>|
|Tensão de Saída|<p>-</p>|`SNMP agent`|load-Power<p>Update: 180</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Bateria Baixa Dificuldade para Carregar|<p>-</p>|average|
|Bateria Troca Urgente|<p>-</p>|disaster|
|Battery Less than 15%|<p>-</p>|disaster|
|Battery Less than 50%|<p>-</p>|high|
|Battery Less than 90%|<p>-</p>|warning|
|{HOSTNAME} input source Failure|<p>-</p>|disaster|
