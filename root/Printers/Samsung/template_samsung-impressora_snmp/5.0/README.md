# Template - SAMSUNG

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
|Nível toner Black|<p>-</p>|`SNMP agent`|sams.clr.black.perc<p>Update: 1s</p>|
|Total de impressões|<p>-</p>|`SNMP agent`|sams.clr.counter<p>Update: 1s</p>|
|Bandeja 1 - Capacidade de folhas|<p>-</p>|`SNMP agent`|folhasQnt<p>Update: 30s</p>|
|Endereço MAC|<p>-</p>|`SNMP agent`|sysMac<p>Update: 1s</p>|
|Status|<p>-</p>|`SNMP agent`|sysStatus<p>Update: 30s</p>|
|Nível toner Black (%)|<p>-</p>|`SNMP agent`|tonerBk<p>Update: 15m</p>|
|Tipo de papel|<p>-</p>|`SNMP agent`|tipoPapel<p>Update: 30s</p>|
|Nível do fotocondutor|<p>-</p>|`SNMP agent`|sams.clr.black.img<p>Update: 1s</p>|
|Conectividade|<p>-</p>|`Simple check`|icmpping<p>Update: 30s</p>|
|Modelo|<p>-</p>|`SNMP agent`|hrDeviceDescr.1<p>Update: 120m</p>|
|Endereço IP|<p>-</p>|`SNMP agent`|ipAdEntAddr<p>Update: 1s</p>|
|Localização|<p>-</p>|`SNMP agent`|sysLocation.0<p>Update: 30s</p>|
|Tempo ligada|<p>-</p>|`SNMP agent`|sysUpTime.0<p>Update: 1s</p>|
|Bandeja 2 - Capacidade de folhas|<p>-</p>|`SNMP agent`|folhasQnt2<p>Update: 30s</p>|
|Número de série|<p>-</p>|`SNMP agent`|sysSn<p>Update: 1s</p>|
|Domínio|<p>-</p>|`SNMP agent`|sysDominio<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Tipo de papel alterado de  A4 para {ITEM.VALUE} em {HOST.HOST}|<p>-</p>|information|
|Toner em 5% em {HOST.HOST}, efetuar a troca|<p>-</p>|warning|
|Troca de fotocondutor em {HOST.HOST}|<p>-</p>|information|
