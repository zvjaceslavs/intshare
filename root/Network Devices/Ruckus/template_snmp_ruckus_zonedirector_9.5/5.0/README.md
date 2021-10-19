# Template SNMP Ruckus Zonedirector 9.5

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
|Ruckus APs|<p>-</p>|`SNMP agent`|APRZ-[{#SNMPVALUE}]<p>Update: 3600</p>|
|SSIDs|<p>-</p>|`SNMP agent`|SSIDRZ-[{#SNMPVALUE}]<p>Update: 3600</p>|
|ZoneDirector Eth|<p>-</p>|`SNMP agent`|ZDEthName[{#SNMPVALUE}]<p>Update: 3600</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ZoneDirector System Model|<p>-</p>|`SNMP agent`|ruckusZDSystemModel.0<p>Update: 3600</p>|
|ZoneDirector Total Auth Clients|<p>-</p>|`SNMP agent`|ruckusZDSystemStatsNumSta.0<p>Update: 300</p>|
|ZoneDirector Total Users|<p>-</p>|`SNMP agent`|ruckusZDSystemStatsAllNumSta<p>Update: 300</p>|
|ZoneDirector System Version|<p>-</p>|`SNMP agent`|ruckusZDSystemVersion.0<p>Update: 3600</p>|
|ZoneDirector MAC Adress|<p>-</p>|`SNMP agent`|ruckusZDSystemMacAddr.0<p>Update: 3600</p>|
|ZoneDirector Serial Number|<p>-</p>|`SNMP agent`|ruckusZDSystemSerialNumber.0<p>Update: 3600</p>|
|ZoneDirector CPU Utilization|<p>-</p>|`SNMP agent`|ruckusZDSystemCPUUTIL.0<p>Update: 300</p>|
|Total Tx Bytes|<p>-</p>|`SNMP agent`|ruckusZDSystemStatsWLANTotalTxBytes<p>Update: 120</p>|
|Total Rx Bytes|<p>-</p>|`SNMP agent`|ruckusZDSystemStatsWLANTotalRxBytes<p>Update: 120</p>|
|AP $1 : Name|<p>-</p>|`SNMP agent`|APname[{#SNMPVALUE}]<p>Update: 300</p>|
|AP $1 : Auth Clients|<p>-</p>|`SNMP agent`|ruckusZDWLANAPNumSta[{#SNMPVALUE}]<p>Update: 300</p>|
|AP Status $1|<p>-</p>|`SNMP agent`|ruckusZDWLANAPStatus[{#SNMPVALUE}]<p>Update: 360</p>|
|ruckusZDWLANRxBytes $1|<p>-</p>|`SNMP agent`|ruckusZDWLANRxBytes-[{#SNMPVALUE}]<p>Update: 1200</p>|
|ruckusZDWLANTxBytes $1|<p>-</p>|`SNMP agent`|ruckusZDWLANTxBytes-[{#SNMPVALUE}]<p>Update: 1200</p>|
|SSID $1 : Name|<p>-</p>|`SNMP agent`|SSIDName-[{#SNMPVALUE}]<p>Update: 21600</p>|
|Status $1|<p>-</p>|`SNMP agent`|ruckusZDEthStatus[{#SNMPVALUE}]<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Acces Point Wifi  {ITEM.VALUE2} is not available. Address: {#SNMPVALUE}|<p>-</p>|warning|
|Port {#SNMPVALUE} is Down|<p>-</p>|high|
