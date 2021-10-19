# Template Meraki Dashboard

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
|Meraki.SSID|<p>Grabs SSID Names</p>|`SNMP agent`|MERAKI.SSID.KEY<p>Update: 4h</p>|
|Meraki.AP|<p>Grabs AP name and Status. Creates an Item if Status is up.</p>|`SNMP agent`|MERAKI.AP.KEY<p>Update: 4h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SSID: {#SSIDNAME}|<p>-</p>|`SNMP agent`|MerakiDeviceIndex.SSID.[{#SNMPINDEX}]<p>Update: 1h</p>|
|Access Point {#ITEM.NAME}: Clients Connected|<p>-</p>|`SNMP agent`|MerakiDeviceIndex.Clients.[{#SNMPINDEX}]<p>Update: 5m</p>|
## Triggers

There are no triggers in this template.

