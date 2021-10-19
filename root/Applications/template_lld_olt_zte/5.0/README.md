# LLD OLT ZTE

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
|ONU Status|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.3902.1012.3.28.1.1.2<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|OLT RX Signal - {#SNMPVALUE}|<p>-</p>|`SNMP agent`|zxoltrxsignal.[{#SNMPINDEX}]<p>Update: 1m</p>|
|OLT TX Signal - {#SNMPVALUE}|<p>-</p>|`SNMP agent`|zxolttxsignal.[{#SNMPINDEX}]<p>Update: 1m</p>|
|ONU Status {#SNMPVALUE}|<p>-</p>|`SNMP agent`|zxonustatus.[{#SNMPINDEX}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|ONU {#SNMPVALUE} is Offline|<p>-</p>|high|
