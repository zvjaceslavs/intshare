# Template_Arbor_TMS

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
|Usage of Physical Memory (%)|<p>PEAKFLOW-TMS-MIB::devicePhysicalMemoryUsage Percentage of physical memory used.</p>|`SNMP agent`|devicePhysicalMemoryUsage<p>Update: 60</p>|
|Disk Space Usage|<p>PEAKFLOW-TMS-MIB::deviceDiskUsage Percentage of primary data partition used.</p>|`SNMP agent`|deviceDiskUsage<p>Update: 60</p>|
|State of Faults|<p>PEAKFLOW-TMS-MIB::tmsHostFault State of faults within a TMS device</p>|`SNMP agent`|tmsHostFault<p>Update: 1800</p>|
|CPU Usage 1min|<p>PEAKFLOW-TMS-MIB::deviceCpuLoadAvg1min Load average during last 1 minutes.</p>|`SNMP agent`|deviceCpuLoadAvg1min<p>Update: 60</p>|
|CPU Usage 5min|<p>PEAKFLOW-TMS-MIB::deviceCpuLoadAvg5min Load average during last 5 minutes.</p>|`SNMP agent`|deviceCpuLoadAvg5min<p>Update: 300</p>|
|Usage of Swap (%)|<p>PEAKFLOW-TMS-MIB::deviceSwapSpaceUsage Percentage of swap space used.</p>|`SNMP agent`|deviceSwapSpaceUsage<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|High CPU Usage|<p>-</p>|average|
|High Disk Space Usage|<p>-</p>|warning|
|High Physical Memory Usage|<p>-</p>|average|
|High Swap Usage|<p>-</p>|average|
|TMS device has faults [{ITEM.VALUE1}]|<p>-</p>|high|
