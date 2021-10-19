# Template Module Linux XFS by Zabbix agent

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$XFS.PROJECT.PUSED.MAX.CRIT}|<p>-</p>|`90`|Text macro|
|{$XFS.PROJECT.PUSED.MAX.WARN}|<p>-</p>|`80`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|XFS project discovery|<p>Discovery of XFS projects using /etc/projects file</p>|`Zabbix agent`|xfs.quota.projects<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#XFSNAME}: Space utilization|<p>-</p>|`Zabbix agent`|xfs.quota.project.pused[{#XFSNAME}]<p>Update: 1m</p>|
|{#XFSNAME}: Total space|<p>-</p>|`Zabbix agent`|xfs.quota.project.total[{#XFSNAME}]<p>Update: 1m</p>|
|{#XFSNAME}: Used space|<p>-</p>|`Zabbix agent`|xfs.quota.project.used[{#XFSNAME}]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#XFSNAME}: Disk space is critically low (used > {$XFS.PROJECT.PUSED.MAX.CRIT:"{#XFSNAME}"}%)|<p>Two conditions should match: First, space utilization should be above {$XFS.PROJECT.PUSED.MAX.CRIT:"{#FSNAME}"}. Second condition should be one of the following: - The project free space is less than 5G. - The project will be full in less than 24 hours.</p>|average|
|{#XFSNAME}: Disk space is low (used > {$XFS.PROJECT.PUSED.MAX.WARN:"{#XFSNAME}"}%)|<p>Two conditions should match: First, space utilization should be above {$XFS.PROJECT.PUSED.MAX.WARN:"{#XFSNAME}"}. Second condition should be one of the following: - The project free space is less than 10G. - The project will be full in less than 24 hours.</p>|warning|
