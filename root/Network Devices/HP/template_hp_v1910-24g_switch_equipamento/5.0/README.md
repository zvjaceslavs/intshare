# SWITCH HP - EQUIPAMENTO

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
|Modelo do Dispositivo|<p>-</p>|`SNMP agent`|entPhysicalModelName<p>Update: 300</p>|
|Número Serial|<p>-</p>|`SNMP agent`|2.47.1.1.1.1.11.1<p>Update: 300</p>|
|Nome do Dispositivo|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 300</p>|
|Acessibilidade do dispositivo usando ICMP|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 300</p>|
|Perda de pacotes de dispositivos|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|A perda de pacotes detectados no {HOST.NAME}|<p>-</p>|warning|
|Hostname foi alterado|<p>-</p>|information|
|Número de série do dispositivo foi alterado|<p>-</p>|information|
|{HOST.NAME} acaba de ser reiniciado|<p>-</p>|high|
|{HOST.NAME} está inacessível ou DOWN|<p>-</p>|disaster|
