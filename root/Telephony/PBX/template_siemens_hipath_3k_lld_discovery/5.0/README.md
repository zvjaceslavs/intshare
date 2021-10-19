# aa Template Siemens Hipath

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$SNMP_COMMUNITY}|<p>-</p>|`public`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Discovery Siemens Card|<p>-</p>|`SNMP agent`|h150eCards<p>Update: 60s</p>|
|Discovery Siemens Port on TMCAS2|<p>-</p>|`SNMP agent`|h150ePorts<p>Update: 60s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Processor Load Level|<p>The actual CPU load level (per cent).</p>|`SNMP agent`|h150eLoadLevel<p>Update: 30s</p>|
|Software Version|<p>Contains the version string of the system software.</p>|`SNMP agent`|sysSoftwareVersion<p>Update: 240s</p>|
|Hardware Version|<p>-</p>|`SNMP agent`|sysHardwareVersion<p>Update: 240s</p>|
|System State|<p>-</p>|`SNMP agent`|sysState<p>Update: 60s</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime<p>Update: 90s</p>|
|Slot Card Serial Number {#CARDTYPE}|<p>-</p>|`SNMP agent`|cardCodeNumber[{#CARDTYPE}]<p>Update: 60s</p>|
|Slot Card Number {#CARDTYPE}|<p>-</p>|`SNMP agent`|cardSlotNum[{#CARDTYPE}]<p>Update: 60s</p>|
|Slot Card State {#CARDTYPE}|<p>-</p>|`SNMP agent`|cardState[{#CARDTYPE}]<p>Update: 60s</p>|
|StatusPort {#PORTTYPE}|<p>-</p>|`SNMP agent`|portStatusIndex.[{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|System Error State 2 Warning|<p>-</p>|warning|
|System Error State 3 Minor|<p>-</p>|warning|
|System Error State 4 Major|<p>-</p>|warning|
|System Error State 5 Critical|<p>-</p>|high|
|CardState Problem {#CARDTYPE}|<p>-</p>|warning|
|StatusPort Inactive On TMCAS2 {#PORTTYPE}|<p>-</p>|warning|
