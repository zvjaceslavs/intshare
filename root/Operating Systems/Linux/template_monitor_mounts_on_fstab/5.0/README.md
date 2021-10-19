# Template Check Mount Point

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
|Mount Point|<p>0 = Yes 1 = No</p>|`Zabbix agent`|vfs.fs.mounted[your_mount_point]<p>Update: 10m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Mount Point Setransp is not OK on server {HOST.NAME}|<p>-</p>|disaster|
