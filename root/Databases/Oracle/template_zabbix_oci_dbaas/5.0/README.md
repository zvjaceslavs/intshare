# Template_OCI_Dbaas

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
|[Oracle] Tablespaces|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas.discovery[{$ORACLE_SID},tb_list,1,ORACLE_TBS]<p>Update: 86400</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|[Oracle] Connections available|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_connection,1]<p>Update: 300</p>|
|[Oracle] Sessions blocks|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_block,1]<p>Update: 60</p>|
|[Oracle] ASM Recovery Area percentage used|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_asmreco,1]<p>Update: 600</p>|
|[Oracle] ASM Data Area percentage used|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_asmdata,1]<p>Update: 600</p>|
|[Oracle] Redo Logs count|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_redo,1]<p>Update: 600</p>|
|[Oracle] Flash Recovery Area percentage used|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_fra,1]<p>Update: 600</p>|
|[Oracle] Invalid objects|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_invalid,1]<p>Update: 3600</p>|
|[Oracle] Database version|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_version,1]<p>Update: 86400</p>|
|[Oracle] Database size|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_size,1]<p>Update: 86400</p>|
|[Oracle] Database uptime|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_uptime,1]<p>Update: 600</p>|
|[Oracle] RMAN problems counter|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_rman,1]<p>Update: 86400</p>|
|[Oracle] Response Time Per Txn|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_metric,'Response Time Per Txn']<p>Update: 60</p>|
|[Oracle] Database is active and open|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_active,1]<p>Update: 3600</p>|
|[Oracle] Locks count|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},db_lock,1]<p>Update: 60</p>|
|[Oracle] Tablespace $3 percentage used|<p>-</p>|`Zabbix agent`|zabbix-oci-dbaas[{$ORACLE_SID},tb_size,{#ORACLE_TBS}]<p>Update: 600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|[{$ORACLE_SID}] FRA: High percentage used space|<p>-</p>|high|
|[{$ORACLE_SID}] FRA: Warning percentage used space|<p>-</p>|warning|
|[{$ORACLE_SID}] ASM: High percentage used data space|<p>-</p>|high|
|[{$ORACLE_SID}] ASM: High percentage used recovery space|<p>-</p>|high|
|[{$ORACLE_SID}] Oracle: Invalid objects are increasing|<p>-</p>|high|
|[{$ORACLE_SID}] Oracle: Locks count are increasing|<p>-</p>|high|
|[{$ORACLE_SID}] Oracle: RMAN has problems|<p>-</p>|high|
|[{$ORACLE_SID}] Oracle: Session blocks are increasing|<p>-</p>|high|
|[{$ORACLE_SID}] Oracle: The database has just been restarted|<p>-</p>|information|
|[{$ORACLE_SID}] Oracle: The database is inactive or closed|<p>-</p>|high|
|[{$ORACLE_SID}] Tablespace: High used space on {#ORACLE_TBS}|<p>-</p>|high|
|[{$ORACLE_SID}] Tablespace: Warning used space on {#ORACLE_TBS}|<p>-</p>|warning|
