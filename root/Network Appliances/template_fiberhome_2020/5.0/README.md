# Template SNMP OLT FiberHome

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
|PON Info Table|<p>-</p>|`SNMP agent`|oltPonDesc<p>Update: 1h</p>|
|MGMT Card Info Table|<p>-</p>|`SNMP agent`|mgmtcard.info.discovery<p>Update: 2h</p>|
|Network interfaces 64|<p>-</p>|`SNMP agent`|ifDescr_64<p>Update: 1h</p>|
|ONU Info Table|<p>-</p>|`SNMP agent`|onuPonInfoTable<p>Update: 12h;1m/1-7,12:00-12:01</p>|
|Card Info Table|<p>-</p>|`SNMP agent`|card.info.discovery<p>Update: 2h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|System Software Version|<p>-</p>|`SNMP agent`|sysSoftVersion<p>Update: 1d</p>|
|System Hardware Version|<p>-</p>|`SNMP agent`|sysHardVersion<p>Update: 1d</p>|
|Clientes Total OLT|<p>-</p>|`External check`|clientes_OLT_FH.sh[{$SNMP_COMMUNITY}, {HOST.IP}]<p>Update: 60s</p>|
|System Temperature|<p>-</p>|`SNMP agent`|sysTemperature<p>Update: 90s</p>|
|ONU Number {#oltPonDesc}|<p>-</p>|`SNMP agent`|oltPonAuthOnuNum[{#SNMPVALUE}]<p>Update: 20m</p>|
|MGMT Card CPU Util Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|MgmtCardCpuUtil.["{#SNMPINDEX}"]<p>Update: 10m</p>|
|MGMT Card Hardware Version Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|mgmtCardHardwareVersion.["{#SNMPINDEX}"]<p>Update: 1d</p>|
|MGMT Card Mem Util Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|MgmtCardMemUtil.["{#SNMPINDEX}"]<p>Update: 10m</p>|
|MGMT Card Software Version Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|mgmtCardSoftwareVersion.["{#SNMPINDEX}"]<p>Update: 1d</p>|
|Incoming traffic on interface $1 64bits|<p>-</p>|`SNMP agent`|ifHCInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on interface $1 64bits|<p>-</p>|`SNMP agent`|ifHCOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|ONU Name {#SNMPVALUE}|<p>-</p>|`SNMP agent`|onuPonName.["{#SNMPINDEX}"]<p>Update: 1d</p>|
|ONU RX Power {#SNMPVALUE}|<p>-</p>|`SNMP agent`|onuPonRXOpticalPower.["{#SNMPINDEX}"]<p>Update: 1h</p>|
|ONU TX Power {#SNMPVALUE}|<p>-</p>|`SNMP agent`|onuPonTXOpticalPower.["{#SNMPINDEX}"]<p>Update: 1h</p>|
|Card Available Ports Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|cardAvailablePorts.["{#SNMPINDEX}"]<p>Update: 1d</p>|
|Card CPU Util Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|cardCpuUtil.["{#SNMPINDEX}"]<p>Update: 10m</p>|
|Card Hardware Version Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|cardHardwareVersion.["{#SNMPINDEX}"]<p>Update: 1d</p>|
|Card Mem Util Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|cardMemUtil.["{#SNMPINDEX}"]<p>Update: 10m</p>|
|Card Num of Ports Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|cardNumOfPorts.["{#SNMPINDEX}"]<p>Update: 1d</p>|
|Card Software Version Slot ["{#SNMPINDEX}"]|<p>-</p>|`SNMP agent`|cardSoftwateVersion.["{#SNMPINDEX}"]<p>Update: 1d</p>|
|Card Status Slot ["{#SNMPINDEX}"]|<p>Column Description: 1:normal(1) 2:communication interrupt(0)</p>|`SNMP agent`|cardStatus.["{#SNMPINDEX}"]<p>Update: 10m</p>|
|Card Type Slot ["{#SNMPINDEX}"]|<p>Column Description: 260:EC2 724:EC2-X 16384:AC16 the other type could see the card type table</p>|`SNMP agent`|cardType.["{#SNMPINDEX}"]<p>Update: 1d</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Desconexao em Massa OLT|<p>-</p>|high|
|System Temperature HIGH on {HOST.NAME}|<p>-</p>|average|
|ONU Sinal is low ({ITEM.LASTVALUE}) on {#SNMPVALUE}|<p>-</p>|warning|
|Slot #SNMPINDEX CPU is HIGH|<p>-</p>|high|
|Slot  #SNMPINDEX is Down|<p>-</p>|disaster|
|Slot #SNMPINDEX MEM is HIGH|<p>-</p>|high|
