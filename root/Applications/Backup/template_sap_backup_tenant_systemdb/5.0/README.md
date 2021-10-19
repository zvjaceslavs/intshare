# Template SAP Backup

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$BCO}|<p>-</p>|`PRD`|Text macro|
|{$ID}|<p>-</p>|`00`|Text macro|
|{$PASS}|<p>-</p>|`passwd`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{$BCO} - LAST INDEXSERVER TENANT|<p>-</p>|`Zabbix agent`|check_backup[{$ID},{$PASS},{$BCO},backup_last,indexserver]<p>Update: 21600s</p>|
|{$BCO} - STATUS XSENGINE TENANT|<p>-</p>|`Zabbix agent`|check_backup[{$ID},{$PASS},{$BCO},backup,xsengine]<p>Update: 3600s</p>|
|{$BCO} - LAST XSENGINE TENANT|<p>-</p>|`Zabbix agent`|check_backup[{$ID},{$PASS},{$BCO},backup_last,xsengine]<p>Update: 21600s</p>|
|{$BCO} - LAST NAMESERVER SYSTEMDB|<p>-</p>|`Zabbix agent`|check_backup[{$ID},{$PASS},{$BCO},backup_last,nameserver]<p>Update: 21600s</p>|
|{$BCO} - STATUS NAMESERVER SYSTEMDB|<p>-</p>|`Zabbix agent`|check_backup[{$ID},{$PASS},{$BCO},backup,nameserver]<p>Update: 3600s</p>|
|{$BCO} - STATUS INDEXSERVER TENANT|<p>-</p>|`Zabbix agent`|check_backup[{$ID},{$PASS},{$BCO},backup,indexserver]<p>Update: 3600s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOSTNAME} - Backup Fail INDEXSERVER TENANT|<p>-</p>|disaster|
|{HOSTNAME} - Backup Fail NAMESERVER SYSTEMDB|<p>-</p>|disaster|
|{HOSTNAME} - Backup Fail XSENGINE TENANT|<p>-</p>|disaster|
