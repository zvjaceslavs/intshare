# Template App Glassfish server.jvm

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
|jvm.memory.maxnonheapsize-count-count|<p>-</p>|`Zabbix agent`|glassfish.maxnonheapsize-count-count<p>Update: 300</p>|
|jvm.thread-system.threadcount-count|<p>-</p>|`Zabbix agent`|glassfish.threadcount-count<p>Update: 120</p>|
|jvm.memory.usedheapsize-count-count|<p>-</p>|`Zabbix agent`|glassfish.usedheapsize-count-count<p>Update: 300</p>|
|jvm.memory.usednonheapsize-count-count|<p>-</p>|`Zabbix agent`|glassfish.usednonheapsize-count-count<p>Update: 300</p>|
|jvm.memory.maxheapsize-count-count|<p>-</p>|`Zabbix agent`|glassfish.maxheapsize-count-count<p>Update: 900</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.NAME} Glassfish JVM heap memory khong co du lieu|<p>-</p>|not classified|
|{HOST.NAME} Glassfish JVM memory heapsize bi day|<p>-</p>|warning|
|{HOST.NAME} Glassfish JVM memory heapsize free <10%|<p>-</p>|information|
|{HOST.NAME} Glassfish JVM non-heapsize memory bi day|<p>-</p>|information|
|{HOST.NAME} Glassfish JVM non-heapsize memory trong <10%|<p>-</p>|information|
