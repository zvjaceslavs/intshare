# Template_Cisco_Sensors

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
|Sensors discovery|<p>-</p>|`SNMP agent`|snmp.discoverysensors<p>Update: 180</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Sensor threshold eval 1: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorte1[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold severity 2: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorts2[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold value 4: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensortv4[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold value 3: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensortv3[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold value 2: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensortv2[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold value 1: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensortv1[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold severity 4: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorts4[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold severity 3: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorts3[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold severity 1: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorts1[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold eval 2: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorte2[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold relation 4: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensortr4[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold relation 3: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensortr3[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold relation 2: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensortr2[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold relation 1: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensortr1[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold eval 4: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorte4[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor threshold eval 3: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorte3[{#SNMPINDEX}]<p>Update: 300</p>|
|Sensor value: {#SNMPVALUE}|<p>-</p>|`SNMP agent`|sensorvalue[{#SNMPINDEX}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Sensor {#SNMPVALUE} changed more than 0.1dB!|<p>-</p>|warning|
|Sensor {#SNMPVALUE} changed more than 1dB!|<p>-</p>|high|
|Sensor {#SNMPVALUE} over threshold (alert)|<p>-</p>|high|
|Sensor {#SNMPVALUE} over threshold (alert)|<p>-</p>|high|
|Sensor {#SNMPVALUE} over threshold (alert)|<p>-</p>|high|
|Sensor {#SNMPVALUE} over threshold (alert)|<p>-</p>|high|
|Sensor {#SNMPVALUE} over threshold (critical)|<p>-</p>|disaster|
|Sensor {#SNMPVALUE} over threshold (critical)|<p>-</p>|disaster|
|Sensor {#SNMPVALUE} over threshold (critical)|<p>-</p>|disaster|
|Sensor {#SNMPVALUE} over threshold (critical)|<p>-</p>|disaster|
|Sensor {#SNMPVALUE} over threshold (warning)|<p>-</p>|average|
|Sensor {#SNMPVALUE} over threshold (warning)|<p>-</p>|average|
|Sensor {#SNMPVALUE} over threshold (warning)|<p>-</p>|average|
|Sensor {#SNMPVALUE} over threshold (warning)|<p>-</p>|average|
