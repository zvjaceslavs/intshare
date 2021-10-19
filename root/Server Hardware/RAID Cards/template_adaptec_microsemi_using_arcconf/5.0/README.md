# Template Adaptec PS

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
|Logical disks discovery|<p>-</p>|`Zabbix agent`|adaptec.raid[lld,ld]<p>Update: {$LD_DISCOVERY_PERIOD}</p>|
|Physical disks discovery|<p>-</p>|`Zabbix agent`|adaptec.raid[lld,pd]<p>Update: {$PD_DISCOVERY_PERIOD}</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|All Pds info|<p>-</p>|`Zabbix agent`|adaptec.raid[info,pd]<p>Update: {$PD_REQUEST_PERIOD}</p>|
|Controller serial number|<p>-</p>|`Dependent item`|adaptec.ctl.sn<p>Update: 0</p>|
|Controller battery state|<p>-</p>|`Dependent item`|adaptec.zmm.state<p>Update: 0</p>|
|Controller state|<p>-</p>|`Dependent item`|adaptec.ctl.state<p>Update: 0</p>|
|All Ctls info|<p>-</p>|`Zabbix agent`|adaptec.raid[info,ad]<p>Update: {$ADAP_REQUEST_PERIOD}</p>|
|Controller model|<p>-</p>|`Dependent item`|adaptec.ctl.model<p>Update: 0</p>|
|All Lds info|<p>-</p>|`Zabbix agent`|adaptec.raid[info,ld]<p>Update: {$LD_REQUEST_PERIOD}</p>|
|Logical disk "{#LDNAME}" level|<p>-</p>|`Dependent item`|adaptec.raid.level.[{#LDNAME}]<p>Update: 0</p>|
|Logical disk "{#LDNAME}" state|<p>-</p>|`Dependent item`|adaptec.raid.state.[{#LDNAME}]<p>Update: 0</p>|
|Physical disk "{#SLOT}" model|<p>-</p>|`Dependent item`|adaptec.pd.model.["{#SLOT}"]<p>Update: 0</p>|
|Physical disk "{#SLOT}" SMART warnings|<p>-</p>|`Dependent item`|adaptec.pd.smartwarn.["{#SLOT}"]<p>Update: 0</p>|
|Physical disk "{#SLOT}" serial number|<p>-</p>|`Dependent item`|adaptec.pd.sn.["{#SLOT}"]<p>Update: 0</p>|
|Physical disk "{#SLOT}" state|<p>-</p>|`Dependent item`|adaptec.pd.state.["{#SLOT}"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Adaptec controller battery state is "{ITEM.LASTVALUE}"|<p>-</p>|average|
|Adaptec controller state is "{ITEM.LASTVALUE}"|<p>-</p>|average|
|Adaptec controller was replaced by sn: {ITEM.LASTVALUE}|<p>-</p>|information|
|Adaptec logical disk "{#LDNAME}"  is {ITEM.LASTVALUE}|<p>-</p>|high|
|Adaptec physical disk "{#SLOT}" has {ITEM.LASTVALUE} smart warnings|<p>-</p>|average|
|Adaptec physical disk "{#SLOT}" state is {ITEM.LASTVALUE}|<p>-</p>|average|
|Adaptec physical disk "{#SLOT}" was replaced by: {ITEM.LASTVALUE}|<p>-</p>|information|
