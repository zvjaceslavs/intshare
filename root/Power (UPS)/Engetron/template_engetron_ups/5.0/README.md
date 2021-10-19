# Template Engetron UPS

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
|Descoberta automática de Frequência de entrada|<p>Descoberta automática de Tensao de fase</p>|`SNMP agent`|frequencia.discovery<p>Update: 30m</p>|
|Descoberta automática de Percentual de carga de Saída|<p>Descoberta automática de Percentual de carga da saída de fase</p>|`SNMP agent`|percentual.s.discovery<p>Update: 30m</p>|
|Descoberta automática de Potência de Saída|<p>Descoberta automática de Potencia de saída de fase</p>|`SNMP agent`|potencia.s.discovery<p>Update: 30m</p>|
|Descoberta automática de Tensão de entrada|<p>Descoberta automática de Tensao de fase</p>|`SNMP agent`|tensao.discovery<p>Update: 30m</p>|
|Descoberta automática de Corrente de Saida|<p>Descoberta automática de Corrente de fase</p>|`SNMP agent`|corrente.s.discovery<p>Update: 30m</p>|
|Descoberta automática de Corrente de entrada|<p>Descoberta automática de Corrente de fase</p>|`SNMP agent`|corrente.discovery<p>Update: 30m</p>|
|Descoberta automática de Tensão de Saída|<p>Descoberta automática de Tensão de fase</p>|`SNMP agent`|tensao.s.discovery<p>Update: 30m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Tempo estimado para carga|<p>-</p>|`SNMP agent`|tempo.carga<p>Update: 1h</p>|
|Temperatura|<p>-</p>|`SNMP agent`|temperatura.bateria<p>Update: 1m</p>|
|Status da bateria|<p>-</p>|`SNMP agent`|status.bateria<p>Update: 1h</p>|
|Estimativa de tempo restante (Minutos)|<p>-</p>|`SNMP agent`|minutos.bateria<p>Update: 1m</p>|
|Corrente da bateria|<p>-</p>|`SNMP agent`|corrente.bateria<p>Update: 1m</p>|
|Tensao da bateria|<p>-</p>|`SNMP agent`|tensao.bateria<p>Update: 1m</p>|
|Tempo na bateria|<p>-</p>|`SNMP agent`|tempo.bateria<p>Update: 1h</p>|
|Frequencia de entrada da fase $1|<p>-</p>|`SNMP agent`|frequencia.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Percentual de carga na saída da fase $1|<p>-</p>|`SNMP agent`|percentual.s.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Potencia de saída da fase $1|<p>-</p>|`SNMP agent`|potencia.s.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Tensao de entrada da fase $1|<p>-</p>|`SNMP agent`|tensao.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Corrente de saida da fase $1|<p>-</p>|`SNMP agent`|corrente.s.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Corrente de entrada da fase $1|<p>-</p>|`SNMP agent`|corrente.[{#SNMPINDEX}]<p>Update: 1m</p>|
|Tensão de saída da fase $1|<p>-</p>|`SNMP agent`|tensao.s.[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|O status da bateria foi alterado em {HOST.HOST}|<p>O valor do status da bateria foi alterado. Último valor do item: {ITEM.LASTVALUE}</p>|average|
|Temperatura da bateria em {HOST.HOST} está acima de {ITEM.LASTVALUE}|<p>A temperatura da bateria se elevou mais do que o normal. Último valor do item: {ITEM.LASTVALUE}</p>|high|
|Tempo de bateria estimado menor do que 5 minutos em {HOST.HOST}|<p>O tempo estimado de uso na bateria está abaixo de 2 minutos. Último valor do item: {ITEM.LASTVALUE}</p>|warning|
