# HP C7000 Chassis (EN)

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
|Interconnect modules|<p>-</p>|`SNMP agent`|snmp.discovery_net<p>Update: 43200</p>|
|Power units|<p>-</p>|`SNMP agent`|snmp.discovery_power<p>Update: 43200</p>|
|Fan modules|<p>-</p>|`SNMP agent`|snmp.discovery_fans<p>Update: 43200</p>|
|Device slots|<p>-</p>|`SNMP agent`|snmp.discovery_bays<p>Update: 43200</p>|
|Temperature sensors|<p>The filter on this item prototype excludes temperature sensors with a threshold of -1.</p>|`SNMP agent`|snmp.discovery_env<p>Update: 43200</p>|
|Onboard Administrator modules|<p>-</p>|`SNMP agent`|snmp.discovery_mgr<p>Update: 43200</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Part number of Chassis|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosurePartNumber.1<p>Update: 72000</p>|
|Name of Chassis|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureName.1<p>Update: 72000</p>|
|FW version of Chassis|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureFWRev.1<p>Update: 72000</p>|
|S/N of Chassis|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureSerialNum.1<p>Update: 72000</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTime.0<p>Update: 300</p>|
|Power redundancy state|<p>-</p>|`SNMP agent`|cpqRackPowerEnclosureRedundant.1<p>Update: 600</p>|
|PN Interconnect-module (Slot: {#SNMPINDEX})|<p>-</p>|`SNMP agent`|cpqRackNetConnectorPartNumber[{#SNMPINDEX}]<p>Update: 3600</p>|
|SN Interconnect-module (Slot: {#SNMPINDEX})|<p>-</p>|`SNMP agent`|cpqRackNetConnectorSerialNum[{#SNMPINDEX}]<p>Update: 3600</p>|
|Output load on PU {#SNMPINDEX}|<p>-</p>|`SNMP agent`|cpqRackPowerSupplyCurPwrOutput[{#SNMPINDEX}]<p>Update: 600</p>|
|PU Input status {#SNMPINDEX}|<p>-</p>|`SNMP agent`|cpqRackPowerSupplyInputLineStatus[{#SNMPINDEX}]<p>Update: 600</p>|
|PU Status {#SNMPINDEX}|<p>-</p>|`SNMP agent`|cpqRackPowerSupplyStatus[{#SNMPINDEX}]<p>Update: 600</p>|
|Fan module state {#SNMPINDEX}|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureFanCondition[{#SNMPINDEX}]<p>Update: 600</p>|
|PN blade {#SNMPVALUE} (Slot: {#SNMPINDEX})|<p>-</p>|`SNMP agent`|cpqRackServerBladePartNumber[{#SNMPINDEX}]<p>Update: 3600</p>|
|SN blade {#SNMPVALUE} (Slot: {#SNMPINDEX})|<p>-</p>|`SNMP agent`|cpqRackServerBladeSerialNum[{#SNMPINDEX}]<p>Update: 3600</p>|
|Blade state {#SNMPVALUE} (Slot: {#SNMPINDEX})|<p>-</p>|`SNMP agent`|cpqRackServerBladeStatus[{#SNMPINDEX}]<p>Update: 180</p>|
|Temperature ({#SNMPVALUE}, ID: {#SNMPINDEX})|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureTempCurrent[{#SNMPINDEX}]<p>Update: 300</p>|
|Critical temperature ({#SNMPVALUE} ID: {#SNMPINDEX})|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureTempThreshold[{#SNMPINDEX}]<p>Update: 300</p>|
|OA {#MGR_INDEX} Condition|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureManagerCondition[{#SNMPINDEX}]<p>Update: 60s</p>|
|OA {#MGR_INDEX} Firmware|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureManagerFWRev[{#SNMPINDEX}]<p>Update: 3600</p>|
|OA {#MGR_INDEX} Part Number|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureManagerPartNumber[{#SNMPINDEX}]<p>Update: 86400</p>|
|OA {#MGR_INDEX} Redundant|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureManagerRedundant[{#SNMPINDEX}]<p>Update: 60s</p>|
|OA {#MGR_INDEX} Role|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureManagerRole[{#SNMPINDEX}]<p>Update: 60s</p>|
|OA {#MGR_INDEX} Serial Number|<p>-</p>|`SNMP agent`|cpqRackCommonEnclosureManagerSerialNum[{#SNMPINDEX}]<p>Update: 86400</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Redundancy of chassis power {HOST.NAME}|<p>-</p>|average|
|{HOST.NAME} : No data more than 20 minutes|<p>-</p>|average|
|{HOST.NAME} was rebooted|<p>-</p>|information|
|Input power status on PU {#SNMPINDEX}|<p>-</p>|high|
|PU Status {#SNMINDEX}|<p>-</p>|high|
|Fan module state {#SNMPINDEX}|<p>-</p>|high|
|Blade state {#SNMPVALUE} (Slot: {#SNMPINDEX})|<p>-</p>|high|
|Temperature {#SNMPVALUE} is high (20C)|<p>-</p>|average|
|Temperature {#SNMPVALUE} is too high (10C)|<p>-</p>|high|
|OA module {#MGR_INDEX} condition|<p>-</p>|high|
|OA module {#MGR_INDEX} redundancy|<p>-</p>|high|
|OA module {#MGR_INDEX} role|<p>-</p>|warning|
