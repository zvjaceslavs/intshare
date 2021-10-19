# 3-IPMI SGI Altix H2106-G7

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
|Fan3|<p>-</p>|`IPMI agent`|ipmi.fan3<p>Update: 300</p>|
|Fan5|<p>-</p>|`IPMI agent`|ipmi.fan5<p>Update: 300</p>|
|CPU3 Vcore|<p>-</p>|`IPMI agent`|ipmi.cpu3.vcore<p>Update: 300</p>|
|CPU3 Temp|<p>-</p>|`IPMI agent`|ipmi.cpu3.temp<p>Update: 300</p>|
|Fan10|<p>-</p>|`IPMI agent`|ipmi.fan10<p>Update: 300</p>|
|Fan11|<p>-</p>|`IPMI agent`|ipmi.fan11<p>Update: 300</p>|
|CPU4 Vcore|<p>-</p>|`IPMI agent`|ipmi.cpu4.vcore<p>Update: 300</p>|
|Fan1|<p>-</p>|`IPMI agent`|ipmi.fan1<p>Update: 300</p>|
|CPU1 Vcore|<p>-</p>|`IPMI agent`|ipmi.cpu1.vcore<p>Update: 300</p>|
|+12V|<p>-</p>|`IPMI agent`|ipmi.12v<p>Update: 300</p>|
|Fan2|<p>-</p>|`IPMI agent`|ipmi.fan2<p>Update: 300</p>|
|+5V|<p>-</p>|`IPMI agent`|ipmi.5v<p>Update: 300</p>|
|VBAT|<p>-</p>|`IPMI agent`|ipmi.vbat<p>Update: 300</p>|
|System Temp|<p>-</p>|`IPMI agent`|ipmi.system.temp<p>Update: 300</p>|
|CPU3 DIMM|<p>-</p>|`IPMI agent`|ipmi.cpu3.dimm<p>Update: 300</p>|
|CPU2 Temp|<p>-</p>|`IPMI agent`|ipmi.cpu2.temp<p>Update: 300</p>|
|Fan6|<p>-</p>|`IPMI agent`|ipmi.fan6<p>Update: 300</p>|
|Fan4|<p>-</p>|`IPMI agent`|ipmi.fan4<p>Update: 300</p>|
|+3.3VSB|<p>-</p>|`IPMI agent`|ipmi.3.3vsb<p>Update: 300</p>|
|CPU4 Temp|<p>-</p>|`IPMI agent`|ipmi.cpu4.temp<p>Update: 300</p>|
|CPU4 DIMM|<p>-</p>|`IPMI agent`|ipmi.cpu4.dimm<p>Update: 300</p>|
|Power|<p>-</p>|`IPMI agent`|ipmi.power<p>Update: 300</p>|
|+3.3V|<p>-</p>|`IPMI agent`|ipmi.3.3v<p>Update: 300</p>|
|CPU2 Vcore|<p>-</p>|`IPMI agent`|ipmi.cpu2.vcore<p>Update: 300</p>|
|CPU2 DIMM|<p>-</p>|`IPMI agent`|ipmi.cpu2.dimm<p>Update: 300</p>|
|CPU1 DIMM|<p>-</p>|`IPMI agent`|ipmi.cpu1.dimm<p>Update: 300</p>|
|CPU1 Temp|<p>-</p>|`IPMI agent`|ipmi.cpu1.temp<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|+3.3VSB voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+3.3VSB voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+3.3VSB voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+3.3VSB voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+3.3VSB voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+3.3VSB voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+3.3V voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+3.3V voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+3.3V voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+3.3V voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+3.3V voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+3.3V voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+5V voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+5V voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+5V voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+5V voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+5V voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+5V voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+12V voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|+12V voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|+12V voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|+12V voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|+12V voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|+12V voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 DIMM voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 DIMM voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 DIMM voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 DIMM voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 DIMM voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 DIMM voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 DIMM voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 DIMM voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 DIMM voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 DIMM voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 DIMM voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 DIMM voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU 1 temperature upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 Temp temperature lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 Vcore voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 Vcore voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 Vcore voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU1 Vcore voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU1 Vcore voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU1 Vcore voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 Temp temperature lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 Temp temperature upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 Vcore voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 Vcore voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 Vcore voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU2 Vcore voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU2 Vcore voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU2 Vcore voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU3 DIMM voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU3 DIMM voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU3 DIMM voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU3 DIMM voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU3 DIMM voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU3 DIMM voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU3 Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU3 Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU3 Temp temperature lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU3 Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU3 Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU3 Temp temperature upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU3 Vcore voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU3 Vcore voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU3 Vcore voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU3 Vcore voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU3 Vcore voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU3 Vcore voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU4 DIMM voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU4 DIMM voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU4 DIMM voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU4 DIMM voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU4 DIMM voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU4 DIMM voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU4 Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU4 Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU4 Temp temperature lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU4 Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU4 Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU4 Temp temperature upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU4 Vcore voltage lower critical on {HOSTNAME}|<p>-</p>|high|
|CPU4 Vcore voltage lower non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU4 Vcore voltage lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|CPU4 Vcore voltage upper critical on {HOSTNAME}|<p>-</p>|high|
|CPU4 Vcore voltage upper non-critical on {HOSTNAME}|<p>-</p>|average|
|CPU4 Vcore voltage upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan1 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Fan1 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan1 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan1 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|Fan1 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan1 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan2 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Fan2 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan2 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan2 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|Fan2 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan2 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan3 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Fan3 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan3 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan3 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|Fan3 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan3 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan4 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Fan4 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan4 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan4 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|Fan4 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan4 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan5 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Fan5 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan5 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan5 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|Fan5 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan5 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan6 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Fan6 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan6 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan6 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|Fan6 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan6 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan10 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Fan10 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan10 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan10 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|Fan10 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan10 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan11 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Fan11 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan11 RPM lower non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Fan11 RPM upper critical on {HOSTNAME}|<p>-</p>|high|
|Fan11 RPM upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Fan11 RPM upper non-recoverable on {HOSTNAME}|<p>-</p>|disaster|
|Power status changed on {HOSTNAME}|<p>-</p>|high|
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
