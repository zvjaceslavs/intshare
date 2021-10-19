# Template SNMP UCD Disk

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
|Disks|<p>-</p>|`SNMP agent`|ucdDisk<p>Update: 30</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Disk Load Average 1 Minute of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ucdDiskIOLA1[{#SNMPVALUE}]<p>Update: 30</p>|
|Disk Load Average 5 Minutes of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ucdDiskIOLA5[{#SNMPVALUE}]<p>Update: 30</p>|
|Disk Load Average 15 Minutes of {#SNMPVALUE}|<p>-</p>|`SNMP agent`|ucdDiskIOLA15[{#SNMPVALUE}]<p>Update: 30</p>|
|Bytes Read From Disk Since Boot $1|<p>-</p>|`SNMP agent`|ucdStorageBytesDiskRead[{#SNMPVALUE}]<p>Update: 30</p>|
|Bytes Written To Disk Since Boot $1|<p>-</p>|`SNMP agent`|ucdStorageBytesDiskWritten[{#SNMPVALUE}]<p>Update: 30</p>|
|Description of Disk $1|<p>-</p>|`SNMP agent`|ucdStorageDesc[{#SNMPVALUE}]<p>Update: 30</p>|
|Read Access From Disk Since Boot $1|<p>-</p>|`SNMP agent`|ucdStorageDiskReads[{#SNMPVALUE}]<p>Update: 30</p>|
|Write Access To Disk Since Boot $1|<p>-</p>|`SNMP agent`|ucdStorageDiskWrites[{#SNMPVALUE}]<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

