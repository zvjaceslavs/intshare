# Template Meraki Access Points

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
|APMERAKI|<p>-</p>|`SNMP agent`|APLIST<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Name.{#ITEM.NAME}|<p>-</p>|`Calculated`|MerakiDeviceIndex.[{#SNMPINDEX}]<p>Update: 30s</p>|
|{#ITEM.NAME}.Status:{#ITEM.STATUS}|<p>-</p>|`Calculated`|MerakiDeviceIndexStatus.[{#SNMPINDEX}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#ITEM.NAME}.Status|<p>-</p>|high|
