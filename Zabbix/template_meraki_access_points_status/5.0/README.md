# Template Meraki Access Points

## Overview

As I did not find any template to monitor my Meraki APs on the Meraki CLoud, here you are a template proposal I made.


I have tested on my zabbix server and it works.


the idea is to find all Meraki APs in the Cloud (SNMPv2-SMI::enterprises.29671.1.1.4.1.2)


And each Meraki AP status (SNMPv2-SMI::enterprises.29671.1.1.4.1.3) (0-Down, 1-UP)


With a Discovery List I add each AP as a Item Prototype and create a High trigger proto for each status.


 


To make it work you must enable SNMP read on your MERAKI cloud:


<https://documentation.meraki.com/zGeneral_Administration/Monitoring_and_Reporting/SNMP_Overview_and_Configuration>


The Template Needs as well a MACRO: {$SNMP\_MERAKI\_COMMUNITY} for the SNMP Comunity


 



## Author

amendez

## Macros used

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
|Name.{#ITEM.NAME}|<p>-</p>|`Calculated`|MerakiDeviceIndex.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|{#ITEM.NAME}.Status:{#ITEM.STATUS}|<p>-</p>|`Calculated`|MerakiDeviceIndexStatus.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{#ITEM.NAME}.Status|<p>-</p>|<p>**Expression**: {Template Meraki Access Points:MerakiDeviceIndexStatus.[{#SNMPINDEX}].last()}=0</p><p>**Recovery expression**: </p>|high|
|{#ITEM.NAME}.Status (LLD)|<p>-</p>|<p>**Expression**: {Template Meraki Access Points:MerakiDeviceIndexStatus.[{#SNMPINDEX}].last()}=0</p><p>**Recovery expression**: </p>|high|
