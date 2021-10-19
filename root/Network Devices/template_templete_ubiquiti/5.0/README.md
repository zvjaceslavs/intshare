# templete rsg

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
|Porta Lan|<p>-</p>|`SNMP agent`|porta.lan<p>Update: 30s</p>|
|PPPOE ATIVOS|<p>-</p>|`SNMP agent`|pppoe.ativos<p>Update: 30s</p>|
|Ping - Resposta|<p>-</p>|`Simple check`|icmppingsec<p>Update: 30s</p>|
|CCQ|<p>-</p>|`SNMP agent`|ccq.status<p>Update: 30s</p>|
|Sinal UBNT|<p>-</p>|`SNMP agent`|ubntWlStatSignal<p>Update: 30s</p>|
|Ping - Perda|<p>-</p>|`Simple check`|icmppingloss<p>Update: 30s</p>|
|Carga Cpu MK|<p>-</p>|`SNMP agent`|carga.cpumk<p>Update: 30s</p>|
|Uptime|<p>-</p>|`SNMP agent`|uptime<p>Update: 30s</p>|
|Ping On/Off|<p>-</p>|`Simple check`|icmpping<p>Update: 30s</p>|
|Estações no AP|<p>-</p>|`SNMP agent`|station.listubnt<p>Update: 30s</p>|
|Out Traffic|<p>-</p>|`SNMP agent`|ifOutOctets<p>Update: 30s</p>|
|In Traffic -MK|<p>-</p>|`SNMP agent`|iso.3.6.1.2.1.2.2.1.10.2<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

