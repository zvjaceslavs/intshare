# Template CheckPoint FW-1

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
|HA Status|<p>-</p>|`External check`|advsnmp.discovery[{HOSTNAME},"-v2c -c{$SNMP_COMMUNITY}",1.3.6.1.4.1.2620.1.5.13.1.2,1.3]<p>Update: 240</p>|
|Processor Discovery|<p>-</p>|`External check`|advsnmp.discovery[{HOSTNAME},"-v2c -c{$SNMP_COMMUNITY}",1.3.6.1.4.1.2620.1.6.7.5.1.1,1.3]<p>Update: 240</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|High Availability Mode|<p>-</p>|`SNMP agent`|haWorkMode<p>Update: 900</p>|
|Number of current connections|<p>-</p>|`SNMP agent`|fwNumConn<p>Update: 120</p>|
|Firewall Module State|<p>-</p>|`SNMP agent`|fwModuleState<p>Update: 900</p>|
|Firewall Policy Install Time|<p>-</p>|`SNMP agent`|fwInstallTime<p>Update: 900</p>|
|Memory Total|<p>-</p>|`SNMP agent`|memTotalReal<p>Update: 120</p>|
|Memory Used|<p>-</p>|`SNMP agent`|memActiveReal<p>Update: 120</p>|
|Product Version|<p>-</p>|`SNMP agent`|svnVersion<p>Update: 3600</p>|
|Memory Free|<p>-</p>|`SNMP agent`|memFreeReal<p>Update: 120</p>|
|High Availability State|<p>-</p>|`SNMP agent`|haState<p>Update: 900</p>|
|HA Problem Status {#ADVSNMPVALUE}|<p>-</p>|`SNMP agent`|haProblemStatus[{#ADVSNMPVALUE}]<p>Update: 120</p>|
|Processor {#ADVSNMPVALUE} Idle Time|<p>-</p>|`SNMP agent`|multiProcIdleTime[{#ADVSNMPVALUE}]<p>Update: 90</p>|
|Processor {#ADVSNMPVALUE} System Time|<p>-</p>|`SNMP agent`|multiProcSystemTime[{#ADVSNMPVALUE}]<p>Update: 90</p>|
|Processor {#ADVSNMPVALUE} User Time|<p>-</p>|`SNMP agent`|multiProcUserTime[{#ADVSNMPVALUE}]<p>Update: 90</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} HA State Change|<p>-</p>|average|
|{HOSTNAME} HA State not Active/Standby|<p>-</p>|high|
|{HOSTNAME} Low memory|<p>-</p>|high|
|{HOSTNAME} Policy installed|<p>-</p>|information|
|HA Status [{#ADVSNMPVALUE}]|<p>-</p>|average|
|{HOSTNAME} Processor usage high on CPU {#ADVSNMPVALUE}|<p>-</p>|average|
