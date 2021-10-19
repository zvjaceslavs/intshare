# Template Mikrotik RB750-RB1100

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
|LLD Interfaces|<p>-</p>|`SNMP agent`|ifDescr<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System name|<p>-</p>|`SNMP agent`|mikrotik.identity.name<p>Update: 3600</p>|
|System uptime|<p>-</p>|`SNMP agent`|mikrotik.uptime<p>Update: 30</p>|
|CPU temperature|<p>-</p>|`SNMP agent`|mikrotik.processor.temperature<p>Update: 30</p>|
|Ping|<p>-</p>|`Simple check`|icmpping<p>Update: 120</p>|
|CPU load|<p>-</p>|`SNMP agent`|mikrotik.cpu.load<p>Update: 30</p>|
|Pingloss|<p>-</p>|`Simple check`|icmppingloss[,,,,]<p>Update: 60</p>|
|PingLatency|<p>-</p>|`Simple check`|icmppingsec<p>Update: 120</p>|
|System temperature|<p>-</p>|`SNMP agent`|mikrotik.system.temperature<p>Update: 30</p>|
|Total disk space|<p>-</p>|`SNMP agent`|mikrotik.total.disk.space<p>Update: 30</p>|
|Used disk space|<p>-</p>|`SNMP agent`|mikrotik.used.disk.space<p>Update: 30</p>|
|Total memory|<p>-</p>|`SNMP agent`|mikrotik.total.memory<p>Update: 30</p>|
|Used memory|<p>-</p>|`SNMP agent`|mikrotik.used.memory<p>Update: 30</p>|
|System version and hw|<p>-</p>|`SNMP agent`|mikrotik.version.and.hw<p>Update: 3600</p>|
|Voltage|<p>-</p>|`SNMP agent`|mikrotik.voltage<p>Update: 30</p>|
|Alias Interface $1|<p>-</p>|`SNMP agent`|ifAlias[{#IFDESCR}]<p>Update: 30</p>|
|In-Erros Interface $1|<p>-</p>|`SNMP agent`|ifInErrors[{#IFDESCR}]<p>Update: 30</p>|
|Inbound Interface $1|<p>-</p>|`SNMP agent`|ifInOctets[{#IFDESCR}]<p>Update: 30</p>|
|Operacional Status Interface $1|<p>-</p>|`SNMP agent`|ifOperStatus[{#IFDESCR}]<p>Update: 30</p>|
|Out-Erros Interface $1|<p>-</p>|`SNMP agent`|ifOutErrors[{#IFDESCR}]<p>Update: 30</p>|
|Outbound Interface $1|<p>-</p>|`SNMP agent`|ifOutOctets[{#IFDESCR}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} com perda de pacote|<p>Perda de Pacotes acima de 50%</p>|warning|
|{HOSTNAME} fora de alcance (3min)|<p>Sem Conexão à 3 minutos</p>|information|
|{HOSTNAME} fora de alcance (5min)|<p>Sem Conexão à 5 minutos</p>|disaster|
|Status Operacional Alterado {HOST.NAME} Interface {#IFDESCR}|<p>-</p>|information|
