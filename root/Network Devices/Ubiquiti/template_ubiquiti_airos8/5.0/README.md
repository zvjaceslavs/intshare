# Template AirOS8

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
|Station List|<p>-</p>|`SNMP agent`|ubntStaName<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Station Connection Time $1|<p>-</p>|`SNMP agent`|ubntStaConnTime[{#SNMPVALUE}]<p>Update: 30</p>|
|Station MAC Address $1|<p>-</p>|`SNMP agent`|ubntStaMac[{#SNMPVALUE}]<p>Update: 3600</p>|
|Station Name $1|<p>-</p>|`SNMP agent`|ubntStaName[{#SNMPVALUE}]<p>Update: 3600</p>|
|Station Noise Floor $1|<p>-</p>|`SNMP agent`|ubntStaNoiseFloor[{#SNMPVALUE}]<p>Update: 30</p>|
|Station  Rx Capacity $1|<p>-</p>|`SNMP agent`|ubntStaRxCapacity[{#SNMPVALUE}]<p>Update: 30</p>|
|Station Signal Strength $1|<p>-</p>|`SNMP agent`|ubntStaSignal[{#SNMPVALUE}]<p>Update: 30</p>|
|Station Tx Capacity $1|<p>-</p>|`SNMP agent`|ubntStaTxCapacity[{#SNMPVALUE}]<p>Update: 30</p>|
|Station  Tx Latency $1|<p>-</p>|`SNMP agent`|ubntStaTxLatency[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Connection {#SNMPVALUE} was restarted|<p>-</p>|information|
