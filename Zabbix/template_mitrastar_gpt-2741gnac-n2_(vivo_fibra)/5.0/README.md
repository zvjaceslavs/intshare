# MitraStar - GPT-2741GNAC-N2

## Description

## Description Template roteador de fibra MitraStar - GPT-2741GNAC-N2 utilizado pela Vivo no Brasil Desenvolvido por Maurício Venzi mvenzi at gmail.com ## Overview Template de monitoração do roteador da marca MitraStar modelo GPT-2741GNAC-N2 utilizado pela operadora VIVO FIBRA. testado no Zabbix 5.0 e 5.2 Caso o uptime fique errado ajuste o preprocessamento multiplicando por 0.01 deixe seu feedback... problemas mvenzi@gmail.com ## Author Maurício Venzi 

## Overview

Template de monitoração do roteador da marca MitraStar modelo GPT-2741GNAC-N2 utilizado pela operadora VIVO FIBRA.


 testado no Zabbix 5.0 e 5.2


Caso o uptime fique errado ajuste o preprocessamento multiplicando por 0.01


deixe seu feedback...


problemas mvenzi@gmail.com



## Author

Maurício Venzi

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP.TIMEOUT}|<p>-</p>|`5m`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Endereços IP da WAN|<p>-</p>|`SNMP agent`|ipAdEntAddr<p>Update: 1h</p>|
|Interfaces|<p>discovery[{#IFDESCR}, ifDescr, {#IFPHYSADDRESS}, ifPhysAddress]</p>|`SNMP agent`|ifDescr<p>Update: 30m</p>|
|Endereços IP da LAN|<p>-</p>|`SNMP agent`|mib-2.3.1.1.3.16.1<p>Update: 30m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ICMP ping|<p>-</p>|`Simple check`|icmpping<p>Update: 1m</p>|
|ICMP response time|<p>-</p>|`Simple check`|icmppingsec<p>Update: 1m</p>|
|System description|<p>MIB: SNMPv2-MIB A textual description of the entity. This value should include the full name and version identification of the system's hardware type, software operating-system, and networking software.</p>|`SNMP agent`|system.descr[sysDescr.0]<p>Update: 1h</p>|
|Descrição da versão de software|<p>-</p>|`SNMP agent`|sysDescr.0<p>Update: 10m</p>|
|ICMP loss|<p>-</p>|`Simple check`|icmppingloss<p>Update: 1m</p>|
|Uptime|<p>MIB: SNMPv2-MIB The time (in hundredths of a second) since the network management portion of the system was last re-initialized.</p>|`SNMP agent`|system.uptime[sysUpTime.0]<p>Update: 10m</p>|
|System name|<p>MIB: SNMPv2-MIB An administratively-assigned name for this managed node.By convention, this is the node's fully-qualified domain name. If the name is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.name<p>Update: 1h</p>|
|System contact details|<p>MIB: SNMPv2-MIB The textual identification of the contact person for this managed node, together with information on how to contact this person. If no contact information is known, the value is the zero-length string.</p>|`SNMP agent`|system.contact[sysContact.0]<p>Update: 1h</p>|
|System location|<p>MIB: SNMPv2-MIB The physical location of this node (e.g., `telephone closet, 3rd floor'). If the location is unknown, the value is the zero-length string.</p>|`SNMP agent`|system.location[sysLocation.0]<p>Update: 1h</p>|
|SNMP agent availability|<p>-</p>|`Zabbix internal`|zabbix[host,snmp,available]<p>Update: 1m</p>|
|Endereços IP da WAN|<p>ifPhysAddress {#SNMPINDEX}</p>|`SNMP agent`|ipAdEntAddr[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Status administrativo - interface {#IFDESCR}|<p>Disponibiliza o nome e o status das interfaces</p>|`SNMP agent`|ifAdminStatus[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Descartes de entrada da interface {#IFDESCR}|<p>Disponibiliza os descartes de entrada das interfaces</p>|`SNMP agent`|ifInDiscards.[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Erros de entrada da interface {#IFDESCR}|<p>Disponibiliza os erros de entrada das interfaces</p>|`SNMP agent`|ifInErrors[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Tráfego de entrada da interface {#IFDESCR}|<p>Disponibiliza o tráfego de entrada das interfaces</p>|`SNMP agent`|ifInOctets[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Valor do MTU da interface {#IFDESCR}|<p>Disponibiliza o nome e o MTU das interfaces</p>|`SNMP agent`|ifMtu[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Status operacional - interface {#IFDESCR}|<p>Disponibiliza o nome e o status das interfaces</p>|`SNMP agent`|ifOperStatus[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Descartes de saída da interface {#IFDESCR}|<p>Disponibiliza os descartes de saída das interfaces</p>|`SNMP agent`|ifOutDiscards[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Erros de saída da interface {#IFDESCR}|<p>Disponibiliza os erros de saída das interfaces</p>|`SNMP agent`|ifOutErrors[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Tráfego de saída da interface {#IFDESCR}|<p>Disponibiliza o tráfego de entrada das interfaces</p>|`SNMP agent`|ifOutOctets[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Endereço MAC da interface {#IFDESCR}|<p>Disponibiliza o nome e o endereço MAC das interfaces</p>|`SNMP agent`|ifPhysAddress[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Velocidade da interface {#IFDESCR}|<p>Disponibiliza o nome e a velocidade das interfaces</p>|`SNMP agent`|ifSpeed[{#IFDESCR}]<p>Update: 10m</p><p>LLD</p>|
|Endereços MAC do endereço IP - {#IPADDRESS}|<p>-</p>|`SNMP agent`|ipNetToMediaPhysAddress.16[{#SNMPINDEX}]<p>Update: 10m</p><p>LLD</p>|
|Endereços IP da LAN|<p>iso.3.6.1.2.1.3.1.1.3.16.1</p>|`SNMP agent`|lan.ipaddr<p>Update: 10m</p><p>LLD</p>|
|Endereços IP da LAN|<p>SNMPv2-SMI::mib-2.3.1.1.3.16.1.</p>|`SNMP agent`|mib-2.3.1.1.3.16.1[{#SNMPINDEX}]<p>Update: 5m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Indisponibilidade - interface {#IFDESCR}|<p>-</p>|<p>**Expression**: ({TRIGGER.VALUE}=0 and {MitraStar - GPT-2741GNAC-N2:ifAdminStatus[{#IFDESCR}].last()}=1 and {MitraStar - GPT-2741GNAC-N2:ifOperStatus[{#IFDESCR}].last()}<>1 and {MitraStar - GPT-2741GNAC-N2:ifOperStatus[{#IFDESCR}].prev(0)}=1) or ({TRIGGER.VALUE}=1 and {MitraStar - GPT-2741GNAC-N2:ifAdminStatus[{#IFDESCR}].last()}=1 and {MitraStar - GPT-2741GNAC-N2:ifOperStatus[{#IFDESCR}].last()}<>1)</p><p>**Recovery expression**: </p>|average|
|Descartes de pacote de entrada - interface {#IFDESCR}|<p>-</p>|<p>**Expression**: {MitraStar - GPT-2741GNAC-N2:ifInDiscards.[{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|warning|
|Erros de entrada - interface {#IFDESCR}|<p>-</p>|<p>**Expression**: {MitraStar - GPT-2741GNAC-N2:ifInErrors[{#IFDESCR}].last()}>50</p><p>**Recovery expression**: </p>|warning|
|Descartes de pacote de saída - interface {#IFDESCR}|<p>-</p>|<p>**Expression**: {MitraStar - GPT-2741GNAC-N2:ifOutDiscards[{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|warning|
|Erros de saída - interface {#IFDESCR}|<p>-</p>|<p>**Expression**: {MitraStar - GPT-2741GNAC-N2:ifOutErrors[{#IFDESCR}].last()}>50</p><p>**Recovery expression**: </p>|warning|
|Indisponibilidade - interface {#IFDESCR} (LLD)|<p>-</p>|<p>**Expression**: ({TRIGGER.VALUE}=0 and {MitraStar - GPT-2741GNAC-N2:ifAdminStatus[{#IFDESCR}].last()}=1 and {MitraStar - GPT-2741GNAC-N2:ifOperStatus[{#IFDESCR}].last()}<>1 and {MitraStar - GPT-2741GNAC-N2:ifOperStatus[{#IFDESCR}].prev(0)}=1) or ({TRIGGER.VALUE}=1 and {MitraStar - GPT-2741GNAC-N2:ifAdminStatus[{#IFDESCR}].last()}=1 and {MitraStar - GPT-2741GNAC-N2:ifOperStatus[{#IFDESCR}].last()}<>1)</p><p>**Recovery expression**: </p>|average|
|Descartes de pacote de entrada - interface {#IFDESCR} (LLD)|<p>-</p>|<p>**Expression**: {MitraStar - GPT-2741GNAC-N2:ifInDiscards.[{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|warning|
|Erros de entrada - interface {#IFDESCR} (LLD)|<p>-</p>|<p>**Expression**: {MitraStar - GPT-2741GNAC-N2:ifInErrors[{#IFDESCR}].last()}>50</p><p>**Recovery expression**: </p>|warning|
|Descartes de pacote de saída - interface {#IFDESCR} (LLD)|<p>-</p>|<p>**Expression**: {MitraStar - GPT-2741GNAC-N2:ifOutDiscards[{#IFDESCR}].last()}>10</p><p>**Recovery expression**: </p>|warning|
|Erros de saída - interface {#IFDESCR} (LLD)|<p>-</p>|<p>**Expression**: {MitraStar - GPT-2741GNAC-N2:ifOutErrors[{#IFDESCR}].last()}>50</p><p>**Recovery expression**: </p>|warning|
