# Template SNMP XSCF Sun M5000

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
|Memory unit discovery|<p>-</p>|`SNMP agent`|scfComponentTable.mem<p>Update: 86400</p>|
|PSU discovery|<p>-</p>|`SNMP agent`|scfComponentTable.psu<p>Update: 86400</p>|
|Memory Board discovery|<p>-</p>|`SNMP agent`|scfComponentTable.memb<p>Update: 86400</p>|
|CPU discovery|<p>-</p>|`SNMP agent`|scfComponentTable.cpu<p>Update: 86400</p>|
|Fan discovery|<p>-</p>|`SNMP agent`|scfComponentTable.fan<p>Update: 86400</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|scfSystemType|<p>-</p>|`SNMP agent`|scfSystemType<p>Update: 86400</p>|
|scfSystemState|<p>Overall system state normal(1), degraded(2), faulted(3), change(254), unknown(255)</p>|`SNMP agent`|scfSystemState<p>Update: 3600</p>|
|scfFirmwareState|<p>SCF software state normal(1), degraded(2), faulted(3), change(254), unknown(255)</p>|`SNMP agent`|scfFirmwareState<p>Update: 3600</p>|
|scfHardwareState|<p>Overall system hardware state normal(1), degraded(2), faulted(3), change(254), unknown(255)</p>|`SNMP agent`|scfHardwareState<p>Update: 3600</p>|
|scfSystemSerialNumber|<p>-</p>|`SNMP agent`|scfSystemSerialNumber<p>Update: 86400</p>|
|scfSystemAmbientTemperatureValue|<p>-</p>|`SNMP agent`|scfSystemAmbientTemperatureValue<p>Update: 600</p>|
|Memory unit {#BOARDID} status|<p>-</p>|`SNMP agent`|mem.statsu[{#BOARDID}]<p>Update: 60</p>|
|Power Supply #{#BOARDID} status|<p>-</p>|`SNMP agent`|psu.status[{#BOARDID}]<p>Update: 60</p>|
|Memory Board #{#ID} status|<p>-</p>|`SNMP agent`|memb.status[{#ID}]<p>Update: 60</p>|
|CPU {#BOARDID}-{#MODULEID} status|<p>-</p>|`SNMP agent`|cpu.status[{#BOARDID}-{#MODULEID}]<p>Update: 60</p>|
|Fan #{#BOARDID} status|<p>-</p>|`SNMP agent`|fan.status[{#BOARDID}]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Firmware State Faulted|<p>-</p>|high|
|Hardware State Faulted|<p>-</p>|high|
|Ambient Temperature on server extremly HI - is over 50 degrees|<p>-</p>|disaster|
|Ambient Temperature on server extremly is over 30 degrees|<p>-</p>|average|
|Ambient Temperature on server is over 40 degrees|<p>-</p>|high|
|System State Faulted|<p>-</p>|disaster|
|Memory unit {#BOARDID} Faulted|<p>-</p>|high|
|Power Supply #{#BOARDID} Faulted|<p>-</p>|high|
|Memory Board #{#ID} Faulted|<p>-</p>|high|
|CPU {#BOARDID}-{#MODULEID} Faulted|<p>-</p>|high|
|Fan #{$BOARDID} Failed|<p>-</p>|high|
