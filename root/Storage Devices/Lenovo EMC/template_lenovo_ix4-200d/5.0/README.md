# Lenovo ix4-200d

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SENHA}|<p>-</p>|`itg@1720`|Text macro|
|{$SNMP_COMMUNITY}|<p>-</p>|`itg`|Text macro|
|{$USUARIO}|<p>-</p>|`itg`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Admin Status ethernet 1|<p>-</p>|`SNMP agent`|ifadminStatus.3<p>Update: 30</p>|
|Admin Status ethernet 0|<p>-</p>|`SNMP agent`|ifadminStatus.2<p>Update: 30</p>|
|Status do disco 1|<p>-</p>|`SNMP agent`|enterprises.1139.4.1<p>Update: 30</p>|
|CPU load|<p>-</p>|`SNMP agent`|hrProcessorLoad<p>Update: 30</p>|
|MAC lo|<p>-</p>|`SNMP agent`|ifPhysAddress.1<p>Update: 30</p>|
|Upload interface tap0|<p>-</p>|`SNMP agent`|ifOutOctets.4<p>Update: 30</p>|
|Capacidade do disco 2|<p>-</p>|`SNMP agent`|enterprises.1139.3.2<p>Update: 30</p>|
|Capacidade do disco 3|<p>-</p>|`SNMP agent`|enterprises.1139.3.3<p>Update: 30</p>|
|Download interface ethernet 0|<p>-</p>|`SNMP agent`|ifInOctets.2<p>Update: 30</p>|
|Interface lo|<p>-</p>|`SNMP agent`|ifDescr.1<p>Update: 30</p>|
|Modelo|<p>-</p>|`SNMP agent`|enterprises.1139.10.1.1.0<p>Update: 30</p>|
|MTU tap0|<p>-</p>|`SNMP agent`|ifMtu.4<p>Update: 30</p>|
|Upload interface ethernet 1|<p>-</p>|`SNMP agent`|ifOutOctets.3<p>Update: 30</p>|
|MTU lo|<p>-</p>|`SNMP agent`|ifMtu.1<p>Update: 30</p>|
|Tipo de RAID|<p>-</p>|`SNMP agent`|enterprises.1139.10.4.2.0<p>Update: 30</p>|
|Upload interface ethernet 0|<p>-</p>|`SNMP agent`|ifOutOctets.2<p>Update: 30</p>|
|Status do RAID|<p>-</p>|`SNMP agent`|enterprises.1139<p>Update: 30</p>|
|MAC ethernet 0|<p>-</p>|`SNMP agent`|ifPhysAddress.2<p>Update: 30</p>|
|Capacidade do disco 1|<p>-</p>|`SNMP agent`|enterprises.1139.3.1<p>Update: 30</p>|
|MTU ethernet 1|<p>-</p>|`SNMP agent`|ifMtu.3<p>Update: 30</p>|
|Descrição do processador|<p>-</p>|`SNMP agent`|hrDeviceDescr.768<p>Update: 30</p>|
|Download interface ethernet 1|<p>-</p>|`SNMP agent`|ifInOctets.3<p>Update: 30</p>|
|Status do disco 4|<p>-</p>|`SNMP agent`|enterprises.1139.4.4<p>Update: 30</p>|
|Descrição|<p>-</p>|`SNMP agent`|sysDescr<p>Update: 30</p>|
|Capacidade do disco 4|<p>-</p>|`SNMP agent`|enterprises.1139.3.4<p>Update: 30</p>|
|Admin Status tap0|<p>-</p>|`SNMP agent`|ifadminStatus.4<p>Update: 30</p>|
|Interface ethernet 1|<p>-</p>|`SNMP agent`|ifDescr.3<p>Update: 30</p>|
|Oper Status ethernet 0|<p>-</p>|`SNMP agent`|ifOperStatus.2<p>Update: 30</p>|
|Oper Status ethernet 1|<p>-</p>|`SNMP agent`|ifOperStatus.3<p>Update: 30</p>|
|Upload interface lo|<p>-</p>|`SNMP agent`|ifOutOctets.1<p>Update: 30</p>|
|Up time|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 30</p>|
|MAC ethernet 1|<p>-</p>|`SNMP agent`|ifPhysAddress.3<p>Update: 30</p>|
|Status do disco 3|<p>-</p>|`SNMP agent`|enterprises.1139.4.3<p>Update: 30</p>|
|HOST|<p>-</p>|`SNMP agent`|sysName<p>Update: 30</p>|
|Admin Status lo|<p>-</p>|`SNMP agent`|ifadminStatus.1<p>Update: 30</p>|
|Interface tap0|<p>-</p>|`SNMP agent`|ifDescr.4<p>Update: 30</p>|
|Status do disco 2|<p>-</p>|`SNMP agent`|enterprises.1139.4.2<p>Update: 30</p>|
|MAC tap0|<p>-</p>|`SNMP agent`|ifPhysAddress.4<p>Update: 30</p>|
|MTU ethernet 0|<p>-</p>|`SNMP agent`|ifMtu.2<p>Update: 30</p>|
|Interface ethernet 0|<p>-</p>|`SNMP agent`|ifDescr.2<p>Update: 30</p>|
|Download interface lo|<p>-</p>|`SNMP agent`|ifInOctets.1<p>Update: 30</p>|
|Oper Status tap0|<p>-</p>|`SNMP agent`|ifOperStatus.4<p>Update: 30</p>|
|Download interface tap0|<p>-</p>|`SNMP agent`|ifInOctets.4<p>Update: 30</p>|
|Capacidade|<p>-</p>|`SNMP agent`|hrDiskStorageCapacity<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Disco 1 do {HOST.NAME} ausente|<p>-</p>|warning|
|Disco 1 do {HOST.NAME} requer atenção|<p>-</p>|high|
|Disco 2 do {HOST.NAME} ausente|<p>-</p>|warning|
|Disco 2 do {HOST.NAME} requer atenção|<p>-</p>|high|
|Disco 3 do {HOST.NAME} ausente|<p>-</p>|warning|
|Disco 3 do {HOST.NAME} requer atenção|<p>-</p>|high|
|Disco 4 do {HOST.NAME} ausente|<p>-</p>|warning|
|Disco 4 do {HOST.NAME} requer atenção|<p>-</p>|high|
|Falha no disco 1 do {HOST.NAME}|<p>-</p>|high|
|Falha no disco 2 do {HOST.NAME}|<p>-</p>|high|
|Falha no disco 3 do {HOST.NAME}|<p>-</p>|high|
|Falha no disco 4 do {HOST.NAME}|<p>-</p>|high|
|O nome do host, {HOST.NAME}, foi alterado|<p>-</p>|information|
|RAID degradado|<p>-</p>|high|
|RAID do {HOST.NAME} em risco|<p>-</p>|high|
|Tipo de RAID alterado|<p>-</p>|warning|
|{HOST.NAME} fo reiniciado.|<p>-</p>|information|
