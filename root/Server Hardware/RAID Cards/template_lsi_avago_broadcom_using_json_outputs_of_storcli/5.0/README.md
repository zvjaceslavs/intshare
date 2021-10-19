# Template LSI JSON discovery

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ADAP_THROTTLING_HB_PERIOD}|<p>-</p>|`10800`|Text macro|
|{$INTERNAL_ITEMS_HISTORY_PEIOD}|<p>-</p>|`0`|Text macro|
|{$LD_THROTTLING_HB_PERIOD}|<p>-</p>|`10800`|Text macro|
|{$PD_THROTTLING_HB_PERIOD}|<p>-</p>|`10800`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Physical disks discovery|<p>-</p>|`Zabbix agent`|lsi.pdlld<p>Update: {$PD_DISCOVERY_PERIOD}</p>|
|Logical disks discovery|<p>-</p>|`Zabbix agent`|lsi.ldlld<p>Update: {$LD_DISCOVERY_PERIOD}</p>|
|Controllers discovery|<p>-</p>|`Zabbix agent`|lsi.ctllld<p>Update: {$ADAP_DISCOVERY_PERIOD}</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|All cvs info|<p>-</p>|`Zabbix agent`|lsi.cvsinfo<p>Update: {$ADAP_REQUEST_PERIOD}</p>|
|All Ctls info|<p>-</p>|`Zabbix agent`|lsi.ctlsinfo<p>Update: {$ADAP_REQUEST_PERIOD}</p>|
|All Lds info|<p>-</p>|`Zabbix agent`|lsi.ldsinfo<p>Update: {$LD_REQUEST_PERIOD}</p>|
|All Pds info|<p>-</p>|`Zabbix agent`|lsi.pdsinfo<p>Update: {$PD_REQUEST_PERIOD}</p>|
|All bbus info|<p>-</p>|`Zabbix agent`|lsi.bbusinfo<p>Update: {$ADAP_REQUEST_PERIOD}</p>|
|Physical disk "{#PDID}" media error count|<p>-</p>|`Dependent item`|lsi.pd.merrcount.["{#PDID}"]<p>Update: 0</p>|
|Physical disk "{#PDID}" model|<p>-</p>|`Dependent item`|lsi.pd.model.["{#PDID}"]<p>Update: 0</p>|
|Physical disk "{#PDID}" other error count|<p>-</p>|`Dependent item`|lsi.pd.otherrcount.["{#PDID}"]<p>Update: 0</p>|
|Physical disk "{#PDID}" predictive failure count|<p>-</p>|`Dependent item`|lsi.pd.predicterrcount.["{#PDID}"]<p>Update: 0</p>|
|Physical disk "{#PDID}" SMART flag|<p>-</p>|`Dependent item`|lsi.pd.smartflag.["{#PDID}"]<p>Update: 0</p>|
|Physical disk "{#PDID}" serial number|<p>-</p>|`Dependent item`|lsi.pd.sn.["{#PDID}"]<p>Update: 0</p>|
|Physical disk "{#PDID}" state|<p>-</p>|`Dependent item`|lsi.pd.state.["{#PDID}"]<p>Update: 0</p>|
|Logical disk "{#LDNAME}" (id {#LDID}) level|<p>-</p>|`Dependent item`|lsi.ld.level.["{#LDID}"]<p>Update: 0</p>|
|Logical disk "{#LDNAME}" (id {#LDID})  state|<p>-</p>|`Dependent item`|lsi.ld.state.["{#LDID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" cache vault data|<p>-</p>|`Dependent item`|lsi.ctl.cvdata.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" cache bbu data|<p>-</p>|`Dependent item`|lsi.ctl.bbu.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" model|<p>-</p>|`Dependent item`|lsi.ctl.model.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" serial number|<p>-</p>|`Dependent item`|lsi.ctl.sn.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" state (health)|<p>-</p>|`Dependent item`|lsi.ctl.state.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" bbu low charge level|<p>-</p>|`Dependent item`|lsi.ctl.bbulowcharge.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" bbu need to replace|<p>-</p>|`Dependent item`|lsi.ctl.bbureplace.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" bbu serial number|<p>-</p>|`Dependent item`|lsi.ctl.bbusn.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" bbu state|<p>-</p>|`Dependent item`|lsi.ctl.bbustate.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" bbu type|<p>-</p>|`Dependent item`|lsi.ctl.bbutype.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" cache vault need to replace|<p>-</p>|`Dependent item`|lsi.ctl.cvreplace.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" cache vault serial number|<p>-</p>|`Dependent item`|lsi.ctl.cvsn.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" cache vault state|<p>-</p>|`Dependent item`|lsi.ctl.cvstate.["{#CTLID}"]<p>Update: 0</p>|
|Controller "{#CTLID}" cache vault type|<p>-</p>|`Dependent item`|lsi.ctl.cvtype.["{#CTLID}"]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|LSI physical disk "{#PDID}" is "{ITEM.LASTVALUE}"|<p>-</p>|high|
|LSI physical disk "{#PDID}" media error count is "{ITEM.LASTVALUE}"|<p>-</p>|average|
|LSI physical disk "{#PDID}" predictive failure count is "{ITEM.LASTVALUE}"|<p>-</p>|warning|
|LSI physical disk "{#PDID}" predictive failure count is "{ITEM.LASTVALUE}". Growing up|<p>-</p>|warning|
|LSI physical disk "{#PDID}" was replaced by sn  "{ITEM.LASTVALUE1}".  Previous sn: "{ITEM.LASTVALUE2}"|<p>-</p>|information|
|LSI physical disk: SMART flag was raised up on "{#PDID}"|<p>-</p>|average|
|LSI logical disk "{#LDNAME}" ("{#LDID}") state is "{ITEM.LASTVALUE}"|<p>-</p>|high|
|LSI controller {#CTLID} battery charge level is low|<p>-</p>|average|
|LSI controller {#CTLID} bbu battery is need to be replaced|<p>-</p>|average|
|LSI controller {#CTLID} bbu battery state is {ITEM.LASTVALUE}|<p>-</p>|average|
|LSI controller {#CTLID} bbu battery was replaced|<p>-</p>|information|
|LSI controller {#CTLID} cachevault battery is need to be replaced|<p>-</p>|average|
|LSI controller {#CTLID} cachevault battery state is {ITEM.LASTVALUE}|<p>-</p>|average|
|LSI controller {#CTLID} cachevault battery was replaced|<p>-</p>|information|
|LSI controller {#CTLID} status is {ITEM.LASTVALUE}|<p>-</p>|high|
|LSI controller {#CTLID} was replaced|<p>-</p>|information|
