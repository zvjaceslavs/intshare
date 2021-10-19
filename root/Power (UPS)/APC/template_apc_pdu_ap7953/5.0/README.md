# Template SNMP APC PDU AP79XX

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Outlets|<p>-</p>|`SNMP agent`|rPDUOutletConfigIndex<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|rPDUIdentFirmwareRev.0|<p>-</p>|`SNMP agent`|rPDUIdentFirmwareRev.0<p>Update: 3600</p>|
|rPDUIdentModelNumber.0|<p>-</p>|`SNMP agent`|rPDUIdentModelNumber.0<p>Update: 86400</p>|
|Load Bank Total|<p>-</p>|`SNMP agent`|rPDULoadStatusLoad.1<p>Update: 30</p>|
|Load State Status Bank B1|<p>-</p>|`SNMP agent`|rPDULoadStatusLoadState.2<p>Update: 30</p>|
|rPDUIdentSerialNumber.0|<p>-</p>|`SNMP agent`|rPDUIdentSerialNumber.0<p>Update: 86400</p>|
|rPDUIdentName.0|<p>-</p>|`SNMP agent`|rPDUIdentName.0<p>Update: 86400</p>|
|Load State Status Bank B2|<p>-</p>|`SNMP agent`|rPDULoadStatusLoadState.3<p>Update: 30</p>|
|Load State Status Total|<p>-</p>|`SNMP agent`|rPDULoadStatusLoadState.1<p>Update: 30</p>|
|Load Bank B2|<p>-</p>|`SNMP agent`|rPDULoadStatusLoad.3<p>Update: 30</p>|
|Load Bank B1|<p>-</p>|`SNMP agent`|rPDULoadStatusLoad.2<p>Update: 30</p>|
|Outlet $1 Name|<p>-</p>|`SNMP agent`|rPDUOutletConfigOutletName[{#SNMPINDEX}]<p>Update: 3600</p>|
|Outlet $1 State Status|<p>-</p>|`SNMP agent`|rPDUOutletStatusOutletState[{#SNMPINDEX}]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|APC PDU Status Load State|<p>-</p>|high|
|APC PDU Total Load Change|<p>-</p>|information|
|Outlet {#SNMPVALUE} State Change|<p>-</p>|information|
