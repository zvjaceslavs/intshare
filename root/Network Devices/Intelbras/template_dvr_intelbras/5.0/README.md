# Template_Dvr

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
|Nome Canal|<p>-</p>|`SNMP agent`|nome.canal<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Status Canal 2|<p>-</p>|`SNMP agent`|canal2<p>Update: 10m</p>|
|Status Canal 5|<p>-</p>|`SNMP agent`|canal5<p>Update: 10m</p>|
|Status Canal 7|<p>-</p>|`SNMP agent`|canal7<p>Update: 10m</p>|
|Trafico Entrada de rede|<p>-</p>|`SNMP agent`|net.if.in<p>Update: 1m</p>|
|Status Canal 4|<p>-</p>|`SNMP agent`|canal4<p>Update: 10m</p>|
|Status Canal 3|<p>-</p>|`SNMP agent`|canal3<p>Update: 10m</p>|
|Status Canal 8|<p>-</p>|`SNMP agent`|canal8<p>Update: 10m</p>|
|Status Canal 13|<p>-</p>|`SNMP agent`|canal13<p>Update: 10m</p>|
|Status Canal 1|<p>-</p>|`SNMP agent`|canal1<p>Update: 10m</p>|
|Tempo Ligado do Equipamento|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 4h</p>|
|Trafico Saida de rede|<p>-</p>|`SNMP agent`|net.if.out<p>Update: 1m</p>|
|Status Canal 15|<p>-</p>|`SNMP agent`|canal15<p>Update: 10m</p>|
|Status Canal 9|<p>-</p>|`SNMP agent`|canal9<p>Update: 10m</p>|
|Ping por Segundo|<p>-</p>|`Simple check`|icmppingsec<p>Update: 130s</p>|
|Status Canal 6|<p>-</p>|`SNMP agent`|canal6<p>Update: 10m</p>|
|Status Canal 11|<p>-</p>|`SNMP agent`|canal11<p>Update: 10m</p>|
|Status Canal 10|<p>-</p>|`SNMP agent`|canal10<p>Update: 10m</p>|
|Status Canal 14|<p>-</p>|`SNMP agent`|canal14<p>Update: 10m</p>|
|Ping|<p>-</p>|`Simple check`|icmpping<p>Update: 0;130s/1-5,08:10-17:55</p>|
|Status Canal 12|<p>-</p>|`SNMP agent`|canal12<p>Update: 10m</p>|
|Status Canal 16|<p>-</p>|`SNMP agent`|canal16<p>Update: 10m</p>|
|Perda de Pacote ( Porcentagem)|<p>-</p>|`Simple check`|icmppingloss<p>Update: 130s;130s/1-5,08:10-17:55;130s/6,08:10-11:30</p>|
|Nome Dispositivo|<p>-</p>|`SNMP agent`|nome_dispositivo<p>Update: 1d</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|A perda de ping está muito alta {HOST.NAME}|<p>-</p>|warning|
|A {HOST.NAME} nao Responde a Ping|<p>-</p>|high|
|Camera Desconectada 1|<p>-</p>|disaster|
|Camera Desconectada 2|<p>-</p>|disaster|
|Camera Desconectada 3|<p>-</p>|disaster|
|Camera Desconectada 4|<p>-</p>|disaster|
|Camera Desconectada 5|<p>-</p>|disaster|
|Camera Desconectada 6|<p>-</p>|disaster|
|Camera Desconectada 7|<p>-</p>|disaster|
|Camera Desconectada 8|<p>-</p>|disaster|
|Camera Desconectada 9|<p>-</p>|disaster|
|Camera Desconectada 10|<p>-</p>|disaster|
|Camera Desconectada 11|<p>-</p>|disaster|
|Camera Desconectada 12|<p>-</p>|disaster|
|Camera Desconectada 13|<p>-</p>|disaster|
|Camera Desconectada 14|<p>-</p>|disaster|
|Camera Desconectada 15|<p>-</p>|disaster|
|Camera Desconectada 16|<p>-</p>|disaster|
|O tempo de resposta é muito alta na Impressora {HOST.NAME}|<p>-</p>|warning|
|Uso excessivo Down de Rede|<p>-</p>|high|
|Uso excessivo Up de Rede|<p>-</p>|high|
|{HOST.NAME} Foi Reiniciada|<p>-</p>|information|
