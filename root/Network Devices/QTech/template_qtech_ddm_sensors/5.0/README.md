# Template_Qtech_Sensors

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
|Sensors discovery|<p>-</p>|`SNMP agent`|sensors.discovery<p>Update: 600s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#SNMPVALUE}({#IFDESC}) SFP Bias|<p>-</p>|`SNMP agent`|ddmsensorbias[{#SNMPINDEX}]<p>Update: 600s</p>|
|{#SNMPVALUE}({#IFDESC}) SFP RX Power|<p>-</p>|`SNMP agent`|ddmsensorrxpower[{#SNMPINDEX}]<p>Update: 600s</p>|
|{#SNMPVALUE}({#IFDESC}) SFP Temp|<p>-</p>|`SNMP agent`|ddmsensortemp[{#SNMPINDEX}]<p>Update: 600s</p>|
|{#SNMPVALUE}({#IFDESC}) SFP TX Power|<p>-</p>|`SNMP agent`|ddmsensortxpower[{#SNMPINDEX}]<p>Update: 600s</p>|
|{#SNMPVALUE}({#IFDESC}) SFP Voltage|<p>-</p>|`SNMP agent`|ddmsensorvoltage[{#SNMPINDEX}]<p>Update: 600s</p>|
## Triggers

There are no triggers in this template.

