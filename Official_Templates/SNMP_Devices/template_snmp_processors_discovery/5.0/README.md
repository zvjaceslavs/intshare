# SNMP Processors

## Overview

Official template from Zabbix distribution to discover processors by SNMP



## Author

Zabbix SIA

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Processors|<p>{$SNMP_COMMUNITY} is a global macro.</p>|`SNMP agent`|hrProcessorLoad<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Utilization of processor #$1|<p>The average, over the last minute, of the percentage of time that this processor was not idle. Implementations may approximate this one minute smoothing period if necessary.</p>|`SNMP agent`|hrProcessorLoad[{#SNMPINDEX}]<p>Update: 60</p><p>LLD</p>|
## Triggers

There are no triggers in this template.

