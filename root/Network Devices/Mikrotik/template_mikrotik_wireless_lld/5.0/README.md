# MikroTik - Basico Wireless AP

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
|Wireless APs|<p>-</p>|`SNMP agent`|Wireless-APs<p>Update: 60s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Wireless AP - ClientCount|<p>-</p>|`SNMP agent`|Wireless-AP-ClientCount.[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless AP - ClientCountAuth|<p>-</p>|`SNMP agent`|Wireless-AP-ClientCountAuth.[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless AP - Frequencia|<p>-</p>|`SNMP agent`|Wireless-AP-Freuencia.[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless AP - Name|<p>-</p>|`SNMP agent`|Wireless-AP-Name.[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless AP - NoiseFloor|<p>-</p>|`SNMP agent`|Wireless-AP-NoiseFloor.[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless AP - RxRate|<p>-</p>|`SNMP agent`|Wireless-AP-RxRate.[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless AP - TxCCQ|<p>-</p>|`SNMP agent`|Wireless-AP-TxCCQ.[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless AP -  TxRate|<p>-</p>|`SNMP agent`|Wireless-AP-TxRate.[{#SNMPINDEX}]<p>Update: 60s</p>|
## Triggers

There are no triggers in this template.

# MikroTik - Basico Wireless Registration Table

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
|Wireless Registration Table|<p>-</p>|`SNMP agent`|Wireless-Registration-Table<p>Update: 60s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Wireless Registration Table {#SNMPVALUE} - NoiseFloor|<p>-</p>|`SNMP agent`|WirelessRegistrationTable-NoiseFloor[{#SNMPVALUE}]<p>Update: 60s</p>|
|Wireless Registration Table {#SNMPVALUE} -  RouterOSv|<p>-</p>|`SNMP agent`|WirelessRegistrationTable-RouterOSv[{#SNMPVALUE}]<p>Update: 3600</p>|
|Wireless Registration Table {#SNMPVALUE} - RxRate|<p>-</p>|`SNMP agent`|WirelessRegistrationTable-RxRatel[{#SNMPVALUE}]<p>Update: 60s</p>|
|Wireless Registration Table {#SNMPVALUE} - Signal|<p>-</p>|`SNMP agent`|WirelessRegistrationTable-Signal[{#SNMPVALUE}]<p>Update: 60s</p>|
|Wireless Registration Table {#SNMPVALUE} - TxRate|<p>-</p>|`SNMP agent`|WirelessRegistrationTable-TxRatel[{#SNMPVALUE}]<p>Update: 60s</p>|
|Wireless Registration Table {#SNMPVALUE} - Uptime|<p>-</p>|`SNMP agent`|WirelessRegistrationTable-Uptimel[{#SNMPVALUE}]<p>Update: 60s</p>|
|Wireless Registration Table {#SNMPVALUE} - Name|<p>-</p>|`SNMP agent`|WirelessRegistrationTable[{#SNMPVALUE}]<p>Update: 3600</p>|
## Triggers

There are no triggers in this template.

# MikroTik - Basico Wireless Station

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
|Wireless Station|<p>-</p>|`SNMP agent`|Wireless-Station<p>Update: 60s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Wireless Station - Frequencia|<p>-</p>|`SNMP agent`|Wireless-Station-Frequencia[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless Station - RxRate|<p>-</p>|`SNMP agent`|Wireless-Station-RxRate[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless Station - Sinal|<p>-</p>|`SNMP agent`|Wireless-Station-Siinal[{#SNMPINDEX}]<p>Update: 60s</p>|
|Wireless Station - TxRate|<p>-</p>|`SNMP agent`|Wireless-Station-TxRate[{#SNMPINDEX}]<p>Update: 60s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Nível de sinal {#SNMPVALUE} baixo # {ITEM.LASTVALUE} - IP: {HOST.CONN}|<p>-</p>|disaster|
