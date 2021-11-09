# FG_200B

## Description

## Overview Template for Fortigate 200B Still - WIP! Use at your own risk Items: * Memory * CPU * SN * FW * Up time * Sessions Items Prototypes * Download * Upload * Status * Description Trigger Prototypes * Interface Up & Down Any suggestion will be Welcomed :) ## Author JonatanRek 

## Overview

 Template for Fortigate 200B


 


Still - WIP!


Use at your own risk


 


Items:


* Memory
* CPU
* SN
* FW
* Up time
* Sessions


Items Prototypes


* Download
* Upload
* Status
* Description


Trigger Prototypes


* Interface Up & Down


 


Any suggestion will be Welcomed :)


 


 


 


 



## Author

JonatanRek

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interfaces|<p>-</p>|`SNMP agent`|ifname<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Connections|<p>-</p>|`SNMP agent`|fortinetCurrentConnections<p>Update: 60</p>|
|Serial Number|<p>-</p>|`SNMP agent`|SysmSerialNumber<p>Update: 3600</p>|
|CPU|<p>-</p>|`SNMP agent`|sysCpu<p>Update: 1m</p>|
|Firmware Version|<p>-</p>|`SNMP agent`|SysmFirmwareVersion<p>Update: 3600</p>|
|System Sessions|<p>-</p>|`SNMP agent`|sysSessions<p>Update: 30s</p>|
|Uptime|<p>-</p>|`SNMP agent`|fortinetUpTime<p>Update: 30</p>|
|Memory Usage|<p>-</p>|`SNMP agent`|sysMemUsage<p>Update: 1m</p>|
|Status {#SNMPVALUE}|<p>-</p>|`SNMP agent`|.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}]<p>Update: 30s</p><p>LLD</p>|
|Interface Description {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifDescr[{#SNMPVALUE}]<p>Update: 30s</p><p>LLD</p>|
|Download {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 30s</p><p>LLD</p>|
|Upload $1|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 30s</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Interface {#SNMPVALUE} Down|<p>-</p>|<p>**Expression**: {Fortigate FG_200B:.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}].last()}=0</p><p>**Recovery expression**: {Fortigate FG_200B:.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}].last()}=1</p>|disaster|
|Interface {#SNMPVALUE} Down (LLD)|<p>-</p>|<p>**Expression**: {Fortigate FG_200B:.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}].last()}=0</p><p>**Recovery expression**: {Fortigate FG_200B:.1.3.6.1.2.1.2.2.1.8.[{#SNMPINDEX}].last()}=1</p>|disaster|
