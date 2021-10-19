# Template ISION

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`sobam`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Licenças|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.1<p>Update: 1d</p>|
|Mídias|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.3.2.1.1<p>Update: 1d</p>|
|Dados dos SLOTS|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.1.2.1.1<p>Update: 1d</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Modelo|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.1.8<p>Update: 1d</p>|
|Serial Number|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.1.3<p>Update: 1d</p>|
|FAN Ci10 Ci13|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.14<p>Update: 30s</p>|
|Tampa|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.15<p>Update: 30s</p>|
|MIB Versão|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.1.1<p>Update: 1d</p>|
|Bateria - Carga|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.10<p>Update: 30s</p>|
|FAN Ci0 Ci2|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.11<p>Update: 30s</p>|
|Bilhetes em fila|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.1.2<p>Update: 1m</p>|
|IP EXTERNO|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.1.7<p>Update: 1d</p>|
|Temperatura - Ci0 Ci2|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.2<p>Update: 30s</p>|
|FAN Ci7 Ci9|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.13<p>Update: 30s</p>|
|FAN Ci3 Ci6|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.12<p>Update: 30s</p>|
|Temperatura - Power Supply|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.1<p>Update: 30s</p>|
|Ativada|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.1.3<p>Update: 5m</p>|
|Método de comunicação|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.1.4<p>Update: 1d</p>|
|Quantidade Máxima de Registros|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.1.1<p>Update: 1d</p>|
|Site ID|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.1.4<p>Update: 1d</p>|
|Temperatura - Ci7 Ci9|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.4<p>Update: 30s</p>|
|IP LOCAL|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.1.6<p>Update: 1d</p>|
|Voltagem Bateria 01|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.6<p>Update: 30s</p>|
|Campainha|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.9<p>Update: 30s</p>|
|Temperatura - Ci10 Ci13|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.5<p>Update: 30s</p>|
|Nome do domínio|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.1.5<p>Update: 1d</p>|
|Temperatura - Ci3 Ci6|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.3<p>Update: 30s</p>|
|Voltagem Bateria 02|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.7<p>Update: 30s</p>|
|Versão do software|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.1.2<p>Update: 1d</p>|
|Voltagem 12Volts|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.8<p>Update: 30s</p>|
|Modem|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.3.1<p>Update: 1d</p>|
|No-Break|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.2.16<p>Update: 30s</p>|
|Código {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.2.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Status {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.3.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Instalada {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.4.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Tipo de licença {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.5.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Quantidade {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.6.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Validade {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.7.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Descrição {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.8.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Data Instalação {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.2.1.1.9.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Valor {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.3.2.1.2.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Descrição {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.2.3.2.1.3.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Posição {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.1.2.1.2.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Descrição {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.1.2.1.3.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Versão do software - SLOT {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.1.2.1.4.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Número do TDM {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.1.2.1.5.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Número Serial {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.1.2.1.6.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Data inclusão/exclusão {#SNMPINDEX}|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.17069.1.3.1.3.1.2.1.7.[{#SNMPINDEX}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Bateria - Carga|<p>-</p>|high|
|Bilhetagem desativada|<p>-</p>|high|
|Bilhete em fila > 5|<p>-</p>|warning|
|Campainha|<p>-</p>|high|
|FAN Ci0 Ci2 - PROBLEMA|<p>-</p>|average|
|FAN Ci3 Ci6 - PROBLEMA|<p>-</p>|average|
|FAN Ci7 Ci9 - PROBLEMA|<p>-</p>|average|
|FAN Ci10 Ci13 - PROBLEMA|<p>-</p>|average|
|No-Break - ATIVADO|<p>-</p>|average|
|Tampa ABERTA|<p>-</p>|average|
|Temperatura - Ci0 Ci2|<p>-</p>|average|
|Temperatura - Ci0 Ci2 - ALTA|<p>-</p>|high|
|Temperatura - Ci3 Ci6|<p>-</p>|average|
|Temperatura - Ci3 Ci6 - ALTA|<p>-</p>|high|
|Temperatura - Ci7 Ci9|<p>-</p>|average|
|Temperatura - Ci7 Ci9 - ALTA|<p>-</p>|high|
|Temperatura - Ci10 Ci13|<p>-</p>|average|
|Temperatura - Ci10 Ci13 - ALTA|<p>-</p>|high|
|Temperatura - Power Supply|<p>-</p>|average|
|Temperatura - Power Supply - ALTA|<p>-</p>|high|
|Template ISION: Voltagem Bateria 01|<p>-</p>|high|
|Template ISION: Voltagem Bateria 02|<p>-</p>|high|
|Voltagem 12Volts|<p>-</p>|high|
