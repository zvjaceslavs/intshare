# 3-IPMI SGI Altix C2112-4G10

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
|CPU1 Temp|<p>-</p>|`IPMI agent`|ipmi.cpu1.temp<p>Update: 300</p>|
|+3.3VSB|<p>-</p>|`IPMI agent`|ipmi.3.3vsb<p>Update: 300</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp<p>Update: 300</p>|
|FAN 2|<p>-</p>|`IPMI agent`|ipmi.fan.2<p>Update: 300</p>|
|CPU1 Vcore|<p>-</p>|`IPMI agent`|ipmi.cpu1.vcore<p>Update: 300</p>|
|PS Status|<p>-</p>|`IPMI agent`|ipmi.ps.status<p>Update: 300</p>|
|FAN 1|<p>-</p>|`IPMI agent`|ipmi.fan.1<p>Update: 300</p>|
|+1.1 V|<p>-</p>|`IPMI agent`|ipmi.1.1.v<p>Update: 300</p>|
|CPU2 Temp|<p>-</p>|`IPMI agent`|ipmi.cpu2.temp<p>Update: 300</p>|
|+5 V|<p>-</p>|`IPMI agent`|ipmi.5.v<p>Update: 300</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.vbat<p>Update: 300</p>|
|+12 V|<p>-</p>|`IPMI agent`|ipmi.12.v<p>Update: 300</p>|
|CPU1 DIMM|<p>-</p>|`IPMI agent`|ipmi.cpu1.dimm<p>Update: 300</p>|
|Power|<p>-</p>|`IPMI agent`|ipmi.power<p>Update: 300</p>|
|CPU1 DIMM VTT|<p>-</p>|`IPMI agent`|ipmi.cpu1.dimm.vtt<p>Update: 300</p>|
|CPU2 DIMM VTT|<p>-</p>|`IPMI agent`|ipmi.cpu2.dimm.vtt<p>Update: 300</p>|
|+3.3 V|<p>-</p>|`IPMI agent`|ipmi.3.3.v<p>Update: 300</p>|
|CPU2 DIMM|<p>-</p>|`IPMI agent`|ipmi.cpu2.dimm<p>Update: 300</p>|
|CPU2 Vcore|<p>-</p>|`IPMI agent`|ipmi.cpu2.vcore<p>Update: 300</p>|
|HT Voltage|<p>-</p>|`IPMI agent`|ipmi.ht.voltage<p>Update: 300</p>|
|+1.8 V|<p>-</p>|`IPMI agent`|ipmi.1.8.v<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+1.1 V voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+1.1 V voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+1.1 V voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+1.1 V voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+1.1 V voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+1.1 V voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+1.8 V voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+1.8 V voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+1.8 V voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+1.8 V voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+1.8 V voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+1.8 V voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+3.3 V voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+3.3 V voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+3.3 V voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+3.3 V voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+3.3 V voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+3.3 V voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+3.3VSB voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+3.3VSB voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+3.3VSB voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+3.3VSB voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+3.3VSB voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+3.3VSB voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+5 V voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+5 V voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+5 V voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+5 V voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+5 V voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+5 V voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+12 V voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+12 V voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+12 V voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+12 V voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+12 V voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+12 V voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 DIMM voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 DIMM voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 DIMM voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 DIMM voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 DIMM voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 DIMM voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 DIMM VTT voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 DIMM VTT voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 DIMM VTT voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 DIMM VTT voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 DIMM VTT voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 DIMM VTT voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 Temp temperature lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 Temp temperature upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 VCORE voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 VCORE voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 VCORE voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 VCORE voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 VCORE voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 VCORE voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 DIMM voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 DIMM voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 DIMM voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 DIMM voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 DIMM voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 DIMM voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 DIMM VTT voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 DIMM VTT voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 DIMM VTT voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 DIMM VTT voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 DIMM VTT voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 DIMM VTT voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 Temp temperature lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 Temp temperature upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 VCORE voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 VCORE voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 VCORE voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 VCORE voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 VCORE voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 VCORE voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|FAN 1 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN 1 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|FAN 1 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|FAN 1 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|FAN 1 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|FAN 1 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|FAN 2 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN 2 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|FAN 2 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|FAN 2 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|FAN 2 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|FAN 2 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|HT Voltage voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|HT Voltage voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|HT Voltage voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|HT Voltage voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|HT Voltage voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|HT Voltage voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Power status changed on {HOSTNAME}|<p>-</p>|high|
|PS Status status changed on {HOSTNAME}|<p>-</p>|high|
|System Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|System Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|System Temp temperature lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|System Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|System Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|System Temp temperature upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|VBAT voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|VBAT voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|VBAT voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|VBAT voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|VBAT voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|VBAT voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
