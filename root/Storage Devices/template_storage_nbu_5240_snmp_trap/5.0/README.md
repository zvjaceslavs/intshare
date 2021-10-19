# Template Storage NBU 5240 SNMP Trap

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
|控制器温度状态|<p>State is Warning System temperature warning</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.6"]<p>Update: 0</p>|
|光纤连接状态|<p>If you receive an alert, it means that one or more of the Fibre Channel links is not in an optimal state.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.5"]<p>Update: 0</p>|
|存储柜电源状态|<p>If you receive an alert, it means that one of the power supplies has experienced an error.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.11"]<p>Update: 0</p>|
|RAID 控制卡状态|<p>Status is NOT OK the adapter has failed； BBU Status is NOT OK & current Charge is NULL the firmware was unable to report the current charge.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.14"]<p>Update: 0</p>|
|电源制器状态|<p>Status is Power Supply AC lost the redundant power supply is not functional. State is Warning the power supply works abnormal</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.4"]<p>Update: 0</p>|
|存储柜工作温度异常状态|<p>State is Warning the temperature is warning</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.12"]<p>Update: 0</p>|
|存储柜磁盘状态|<p>State is Warning, and the Status is Unconfigured (Good) the disk is in a foreign, unsupported state. The disk may have been reinserted and caused an error； State is Failed, and the Status is Unconfigured (Bad) the disk is failed</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.13"]<p>Update: 0</p>|
|磁盘分区状态|<p>If you receive an alert, it means that partition has experienced an error.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.21"]<p>Update: 0</p>|
|磁盘控制器状态|<p>State is Warning the disk is in a foreign, unsupported state; State is Failed the disk is no longer functional.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.8"]<p>Update: 0</p>|
|RIAD Group 状态|<p>State is Warning The diskgroup has warning State is Failed the RAID group is failed</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.9"]<p>Update: 0</p>|
|存储柜风扇状态|<p>State is Warning the fan is running slower than the low threshold of 2000 rpm. State is Failed the fan is missing or has failed.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.10"]<p>Update: 0</p>|
|CPU 状态|<p>Status is NULL the firmware was unable to report the current status; State is Failed status of the CPU is unknown.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.7"]<p>Update: 0</p>|
|风扇控制器状态|<p>State is Warning the fan is running slower than the low threshold of 1715 rpm. State is Failed the fan is missing or has failed.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.3"]<p>Update: 0</p>|
|PCI卡状态|<p>If you receive an alert, it means that one or more of the PCIe cards are not installed in the correct slots, or a PCIe card is not functional.</p>|`SNMP trap`|snmptrap["1.3.6.1.4.1.393.3.9.1.16"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|NBU CPU 故障|<p>-</p>|warning|
|NBU PCI卡异常|<p>-</p>|warning|
|NBU RAID Controller异常|<p>-</p>|warning|
|NBU RIAD Group状态异常|<p>-</p>|warning|
|NBU 光纤连接故障|<p>-</p>|warning|
|NBU 存储柜工作温度异常|<p>-</p>|warning|
|NBU 存储柜电源故障|<p>-</p>|warning|
|NBU 存储柜磁盘故障|<p>-</p>|warning|
|NBU 存储柜风扇故障|<p>-</p>|warning|
|NBU 控制器温度超出工作范围|<p>-</p>|warning|
|NBU 控制器电源故障|<p>-</p>|warning|
|NBU 控制器磁盘错误|<p>-</p>|warning|
|NBU 控制器风扇故障|<p>-</p>|warning|
|NBU 磁盘分区异常|<p>-</p>|warning|
