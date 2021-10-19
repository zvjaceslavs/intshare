# VOLT - POWER NET 1000

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
|Voltagem da entrada AC|<p>-</p>|`SNMP agent`|volt.ent.ac<p>Update: 60</p>|
|Status do Ramal 3|<p>-</p>|`SNMP agent`|status.ramal.3<p>Update: 300</p>|
|Status do Cooler|<p>-</p>|`SNMP agent`|status.cooler<p>Update: 300</p>|
|Status do Carregador de Baterias|<p>-</p>|`SNMP agent`|status.bateria<p>Update: 300</p>|
|Voltagem das Tomadas|<p>-</p>|`SNMP agent`|volt.tomada<p>Update: 60</p>|
|Status do Ramal 1|<p>-</p>|`SNMP agent`|status.ramal.1<p>Update: 300</p>|
|Voltagem do Ramal 3|<p>-</p>|`SNMP agent`|volt.ramal.3<p>Update: 60</p>|
|Status do Ramal 2|<p>-</p>|`SNMP agent`|status.ramal.2<p>Update: 300</p>|
|Temperatura Interna|<p>Temperatura Interna</p>|`SNMP agent`|temp.Interna<p>Update: 60</p>|
|Voltagem do Ramal 1|<p>-</p>|`SNMP agent`|volt.ramal.1<p>Update: 60</p>|
|Status do Ramal 4|<p>-</p>|`SNMP agent`|status.ramal.4<p>Update: 300</p>|
|Voltagem do Ramal 2|<p>-</p>|`SNMP agent`|volt.ramal.2<p>Update: 60</p>|
|Modo de Operação da Fonte|<p>-</p>|`SNMP agent`|mod.oper<p>Update: 300</p>|
|Voltagem do Banco de Baterias|<p>-</p>|`SNMP agent`|volt.bateria<p>Update: 60</p>|
|Voltagem do Ramal 4|<p>-</p>|`SNMP agent`|volt.ramal.4<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Alteração de Voltagem do Ramal 1|<p>-</p>|high|
|Alteração de Voltagem do Ramal 2|<p>-</p>|high|
|Alteração de Voltagem do Ramal 3|<p>-</p>|high|
|Alteração de Voltagem do Ramal 4|<p>-</p>|high|
|Falha de energia|<p>Alerme será gerado caso não receba nenhum valor do Item Modo de Operação da Fonte ou caso mude o status de Rede Elétrica (1)</p>|disaster|
|Temperatura está alta|<p>-</p>|high|
