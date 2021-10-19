# Sonicwall SNMP - TZ600

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
|X0 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.1<p>Update: 60</p>|
|X3 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.4<p>Update: 60</p>|
|X6 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.7<p>Update: 60</p>|
|Simultaneous connections|<p>-</p>|`SNMP agent`|sonicCurrentConnCacheEntries.0<p>Update: 60</p>|
|Serial Number|<p>-</p>|`SNMP agent`|sonicSerialNumber<p>Update: 3600</p>|
|Status X1|<p>-</p>|`SNMP agent`|ifOperStatus.2<p>Update: 60</p>|
|X4 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.5<p>Update: 60</p>|
|Status X9|<p>-</p>|`SNMP agent`|ifOperStatus.10<p>Update: 60</p>|
|X9 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.10<p>Update: 60</p>|
|Status X7|<p>-</p>|`SNMP agent`|ifOperStatus.8<p>Update: 60</p>|
|X6 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.7<p>Update: 60</p>|
|X0 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.1<p>Update: 60</p>|
|X5 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.6<p>Update: 60</p>|
|Status X3|<p>-</p>|`SNMP agent`|ifOperStatus.4<p>Update: 60</p>|
|Status X6|<p>-</p>|`SNMP agent`|ifOperStatus.7<p>Update: 60</p>|
|X4 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.5<p>Update: 60</p>|
|X5 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.6<p>Update: 60</p>|
|X7 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.8<p>Update: 60</p>|
|Disponibilidade|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Sonicwall Up Time|<p>-</p>|`SNMP agent`|sysUpTime.0<p>Update: 60</p>|
|X2 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.3<p>Update: 60</p>|
|Firmware Version|<p>-</p>|`SNMP agent`|sonicFirmwareVersion<p>Update: 3600</p>|
|X9 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.10<p>Update: 60</p>|
|Perda de Pacotes|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|Status X8|<p>-</p>|`SNMP agent`|ifOperStatus.9<p>Update: 60</p>|
|X10 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.11<p>Update: 60</p>|
|X3 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.4<p>Update: 60</p>|
|X8 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.9<p>Update: 60</p>|
|X1 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.2<p>Update: 60</p>|
|X8 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.9<p>Update: 60</p>|
|Latência|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|Status X2|<p>-</p>|`SNMP agent`|ifOperStatus.3<p>Update: 60</p>|
|X7 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.8<p>Update: 60</p>|
|Status X0|<p>-</p>|`SNMP agent`|ifOperStatus.1<p>Update: 60</p>|
|RAM|<p>Memória utilizada</p>|`SNMP agent`|sonicCurrentRAMUtil.0<p>Update: 60</p>|
|Status X10|<p>-</p>|`SNMP agent`|ifOperStatus.11<p>Update: 60</p>|
|Model|<p>-</p>|`SNMP agent`|sonicModel<p>Update: 86400</p>|
|Status X4|<p>-</p>|`SNMP agent`|ifOperStatus.5<p>Update: 60</p>|
|X2 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.3<p>Update: 60</p>|
|X1 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.2<p>Update: 60</p>|
|X10 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.11<p>Update: 60</p>|
|Status X5|<p>-</p>|`SNMP agent`|ifOperStatus.6<p>Update: 60</p>|
|CPU Load|<p>CPU utilizada</p>|`SNMP agent`|sonicCurrentCPUUtil.0<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Consumo de CPU superior a 90% por 5 minutos.|<p>-</p>|warning|
|Consumo de memória superior a 90% por 5 minutos|<p>-</p>|warning|
|Firewall acaba de ser reiniciado|<p>-</p>|high|
|Link de Internet na porta X0 está fora|<p>Verifica se o Link de Internet na porta X0 está fora</p>|high|
|Link de Internet na porta X1 está fora|<p>Verifica se o Link de Internet na porta X1 está fora</p>|high|
|Link de Internet na porta X2 está fora|<p>Verifica se o Link de Internet na porta X2 está fora</p>|high|
|Link de Internet na porta X3 está fora|<p>Verifica se o Link de Internet na porta X3 está fora</p>|high|
|Link de Internet na porta X4 está fora|<p>Verifica se o Link de Internet na porta X4 está fora</p>|high|
|Link de Internet na porta X5 está fora|<p>Verifica se o Link de Internet na porta X6 está fora</p>|high|
|Link de Internet na porta X6 está fora|<p>Verifica se o Link de Internet na porta X6 está fora</p>|high|
|Link de Internet na porta X7 está fora|<p>Verifica se o Link de Internet na porta X7 está fora</p>|high|
|Link de Internet na porta X8 está fora|<p>Verifica se o Link de Internet na porta X8 está fora</p>|high|
|Link de Internet na porta X9 está fora|<p>Verifica se o Link de Internet na porta X9 está fora</p>|high|
|Link de Internet na porta X10 está fora|<p>Verifica se o Link de Internet na porta X10 está fora</p>|high|
|Número de conexões simultâneas ultrapassou 15000 conexões, valor atual {ITEM.LASTVALUE}|<p>-</p>|warning|
|Perda de pacotes muito alta em {HOST.NAME}|<p>-</p>|warning|
|Porta X0 está Down|<p>Verifica se a Porta X0 está UP</p>|high|
|Porta X1 está Down|<p>Verifica se a Porta X1 está UP</p>|high|
|Porta X2 está Down|<p>Verifica se a Porta X2 está UP</p>|high|
|Porta X3 está Down|<p>Verifica se a Porta X3 está UP</p>|high|
|Porta X4 está Down|<p>Verifica se a Porta X4 está UP</p>|high|
|Porta X5 está Down|<p>Verifica se a Porta X5 está UP</p>|high|
|Porta X6 está Down|<p>Verifica se a Porta X6 está UP</p>|high|
|Porta X7 está Down|<p>Verifica se a Porta X7 está UP</p>|high|
|Porta X8 está Down|<p>Verifica se a Porta X8 está UP</p>|high|
|Porta X9 está Down|<p>Verifica se a Porta X9 está UP</p>|high|
|Porta X10 está Down|<p>Verifica se a Porta X10 está UP</p>|high|
|Tempo de resposta muito alta em {HOST.NAME}|<p>-</p>|information|
|{HOST.NAME} indisponível|<p>-</p>|average|
