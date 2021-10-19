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
|Contador do Sensor 1|<p>-</p>|`SNMP agent`|contadorsensor1<p>Update: 20</p>|
|Contador do Sensor 2|<p>-</p>|`SNMP agent`|contadorsensor2<p>Update: 20</p>|
|Contador do Sensor 3|<p>-</p>|`SNMP agent`|contadorsensor3<p>Update: 20</p>|
|Sensor de Temperatura Externo|<p>-</p>|`SNMP agent`|sensortemperatura<p>Update: 20</p>|
|Status da Rede Elétrica|<p>-</p>|`SNMP agent`|statusac<p>Update: 20</p>|
|Status do Alarme|<p>-</p>|`SNMP agent`|statusalarme<p>Update: 20</p>|
|Status de Acionamento do Rele|<p>-</p>|`SNMP agent`|statusrele<p>Update: 20</p>|
|Status do Sensor 1|<p>-</p>|`SNMP agent`|statussensor1<p>Update: 20</p>|
|Status do Sensor 2|<p>-</p>|`SNMP agent`|statussensor2<p>Update: 20</p>|
|Status do Sensor 3|<p>-</p>|`SNMP agent`|statussensor3<p>Update: 20</p>|
|Status de Acionamento da Sirene|<p>-</p>|`SNMP agent`|statussirene<p>Update: 20</p>|
|Temperatura Módulo|<p>-</p>|`SNMP agent`|temperatura<p>Update: 30</p>|
|Amperagem Bateria|<p>-</p>|`SNMP agent`|voltagembateria<p>Update: 20</p>|
|Tensão AC Entrada|<p>-</p>|`SNMP agent`|voltagementrada<p>Update: 20</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Alerta de Consumo de Bateria em {HOST.NAME}|<p>-</p>|warning|
|Bateria em Estado Critico em {HOST.NAME}|<p>-</p>|high|
|Queda de energia AC em {HOST.NAME}|<p>-</p>|high|
|Temperatura anormal em {HOST.NAME}|<p>-</p>|warning|
|Tensão de Entrada fora dos Limites em {HOST.NAME}|<p>-</p>|high|
|Alerta Status de Acionamento da Rele HOST.NAME}|<p>-</p>|warning|
|Alerta Status de Acionamento da Sirene HOST.NAME}|<p>-</p>|average|
|Status da Rede Elétrica HOST.NAME}|<p>-</p>|average|
|Temperatura Externa anormal em {HOST.NAME}|<p>-</p>|warning|
