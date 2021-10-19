# Template AKCP

## Overview

This template is designed for all SensorProbe devices from the vendor AKCP.


All connected sensors (humidity and temperature) are automaticly discovered in this template.


This template is tested whith SensorProbe2 and SensorProbe4.



## Author

Nico Wieczorek

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|temperaturesensor|<p>-</p>|`SNMP agent`|TempDescr<p>Update: 60</p>|
|humiditysensor|<p>-</p>|`SNMP agent`|HumiDescr<p>Update: 60</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Device Type|<p>-</p>|`SNMP agent`|hrDeviceDescr<p>Update: 43200</p>|
|Device MAC address|<p>-</p>|`SNMP agent`|ifPhysAddress<p>Update: 3600</p>|
|temperaturesensor $1 (LLD)|<p>-</p>|`SNMP agent`|TempDescr[{#SNMPVALUE}]<p>Update: 60</p>|
|temperature $1 (LLD)|<p>-</p>|`SNMP agent`|TempValue[{#SNMPVALUE}]<p>Update: 60</p>|
|humiditysensor $1 (LLD)|<p>-</p>|`SNMP agent`|HumiDescr[{#SNMPVALUE}]<p>Update: 60</p>|
|humidity $1 (LLD)|<p>-</p>|`SNMP agent`|HumiValue[{#SNMPVALUE}]<p>Update: 60</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|humidityalarm {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template AKCP:HumiValue[{#SNMPVALUE}].last(,300)}>85</p><p>**Recovery expression**: </p>|disaster|
|humiditywarning {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template AKCP:HumiValue[{#SNMPVALUE}].last(,300)}>75</p><p>**Recovery expression**: </p>|warning|
|temperaturealarm {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template AKCP:TempValue[{#SNMPVALUE}].last(,300)}>40</p><p>**Recovery expression**: </p>|disaster|
|temperaturewarning {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {Template AKCP:TempValue[{#SNMPVALUE}].last(,300)}>30</p><p>**Recovery expression**: </p>|warning|
|temperaturealarm {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template AKCP:TempValue[{#SNMPVALUE}].last(,300)}>40</p><p>**Recovery expression**: </p>|disaster|
|temperaturewarning {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template AKCP:TempValue[{#SNMPVALUE}].last(,300)}>30</p><p>**Recovery expression**: </p>|warning|
|humidityalarm {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template AKCP:HumiValue[{#SNMPVALUE}].last(,300)}>85</p><p>**Recovery expression**: </p>|disaster|
|humiditywarning {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {Template AKCP:HumiValue[{#SNMPVALUE}].last(,300)}>75</p><p>**Recovery expression**: </p>|warning|
