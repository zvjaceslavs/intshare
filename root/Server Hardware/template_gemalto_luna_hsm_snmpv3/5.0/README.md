# Template Gemalto SafeNet Luna SNMPv3

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Crypto Status SEED|<p>-</p>|`SNMP agent`|statusSEED<p>Update: 300s</p>|
|Crypto Status TDES|<p>-</p>|`SNMP agent`|statusTDES<p>Update: 300s</p>|
|Network Status NIC1|<p>-</p>|`SNMP agent`|statusNIC1Port<p>Update: 300s</p>|
|Crypto Status SHA2|<p>-</p>|`SNMP agent`|statusSHA2<p>Update: 300s</p>|
|Device software version|<p>-</p>|`SNMP agent`|confSoftwareVersion<p>Update: 300s</p>|
|Network Status NIC2|<p>-</p>|`SNMP agent`|statusNIC2Port<p>Update: 300s</p>|
|Device performance level|<p>-</p>|`SNMP agent`|confPerformanceLevel<p>Update: 3600s</p>|
|Crypto Status AES|<p>-</p>|`SNMP agent`|statusAES<p>Update: 300s</p>|
|Device serial number|<p>-</p>|`SNMP agent`|infoSerialNumber<p>Update: 3600s</p>|
|Device contact details|<p>-</p>|`SNMP agent`|infoSystemContact<p>Update: 3600s</p>|
|Device hardware|<p>-</p>|`SNMP agent`|confVariety<p>Update: 3600s</p>|
|Application Restarts|<p>-</p>|`SNMP agent`|statusResetCount<p>Update: 300s</p>|
|Hardware Status RAM|<p>-</p>|`SNMP agent`|statusRAM<p>Update: 300s</p>|
|Device firmware version|<p>-</p>|`SNMP agent`|infoFirmwareVer<p>Update: 300s</p>|
|Crypto Status RSA|<p>-</p>|`SNMP agent`|statusRSA<p>Update: 300s</p>|
|Hardware Status HDD|<p>-</p>|`SNMP agent`|statusHardDisk<p>Update: 300s</p>|
|Device location|<p>-</p>|`SNMP agent`|infoSystemLocation<p>Update: 3600s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Application Restarted|<p>-</p>|average|
|Crypto AES Module Failed|<p>-</p>|high|
|Crypto RSA Module Failed|<p>-</p>|high|
|Crypto SEED Module Failed|<p>-</p>|high|
|Crypto SHA2 Module Failed|<p>-</p>|high|
|Crypto TDES Module Failed|<p>-</p>|high|
|HDD Failed|<p>-</p>|high|
|Memory Failed|<p>-</p>|high|
|NIC1 Disconnected|<p>-</p>|warning|
|NIC2 Disconnected|<p>-</p>|warning|
