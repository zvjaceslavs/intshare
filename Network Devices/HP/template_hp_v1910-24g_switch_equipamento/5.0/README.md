# SWITCH HP - EQUIPAMENTO

## Overview

Obtêm informações para inventário e Monitoramento (Modelo, Nome, Uptime, Perda de Pacotes e disponibilidade ICMP) em Português

## Author

Leonardo Nascimento da Silva

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Número Serial|<p>-</p>|`SNMP agent`|2.47.1.1.1.1.11.1<p>Update: 300</p>|
|Modelo do Dispositivo|<p>-</p>|`SNMP agent`|entPhysicalModelName<p>Update: 300</p>|
|Acessibilidade do dispositivo usando ICMP|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|Perda de pacotes de dispositivos|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|Nome do Dispositivo|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 300</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 300</p>|
## Triggers

There are no triggers in this template.

