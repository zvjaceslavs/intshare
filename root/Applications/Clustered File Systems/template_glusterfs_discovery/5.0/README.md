# Gluster Storage

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
|Gluster Volume Names Discovery|<p>-</p>|`Zabbix agent`|gluster_volume_name.discovery<p>Update: 30s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Gluster Storage Active Nodes|<p>-</p>|`Zabbix agent`|gluster_storage_info["nodes_active"]<p>Update: 2m</p>|
|Gluster Storage Total Size|<p>-</p>|`Zabbix agent`|gluster_storage_info["usable_capacity"]<p>Update: 2m</p>|
|Gluster Storage Volume Number|<p>-</p>|`Zabbix agent`|gluster_storage_info["volume_count"]<p>Update: 2m</p>|
|Gluster Storage Self Heal Active|<p>-</p>|`Zabbix agent`|gluster_storage_info["sh_active"]<p>Update: 2m</p>|
|Gluster Storage status|<p>-</p>|`Zabbix agent`|gluster_storage_info["status"]<p>Update: 2m</p>|
|Gluster Storage Self Heal Enabled|<p>-</p>|`Zabbix agent`|gluster_storage_info["sh_enabled"]<p>Update: 2m</p>|
|Gluster Storage Nodes|<p>-</p>|`Zabbix agent`|gluster_storage_info["node_count"]<p>Update: 2m</p>|
|Gluster Storage % Free Space|<p>-</p>|`Calculated`|gluster_storage_free_space<p>Update: 2m</p>|
|Gluster Storage Snapshots|<p>-</p>|`Zabbix agent`|gluster_storage_info["snapshot_count"]<p>Update: 2m</p>|
|Gluster Storage raw capacity|<p>-</p>|`Zabbix agent`|gluster_storage_info["raw_capacity"]<p>Update: 2m</p>|
|Gluster Storage Used Size|<p>-</p>|`Zabbix agent`|gluster_storage_info["used_capacity"]<p>Update: 2m</p>|
|Gluster Volume % Free Space {#VOLUME_NAME}|<p>-</p>|`Calculated`|gluster_volume_free_space[{#VOLUME_NAME}]<p>Update: 30s</p>|
|Gluster Volume snapshot_count on {#VOLUME_NAME}|<p>-</p>|`Zabbix agent`|gluster_volume_info["snapshot_count",{#VOLUME_NAME}]<p>Update: 30s</p>|
|Gluster Volume state on {#VOLUME_NAME}|<p>-</p>|`Zabbix agent`|gluster_volume_info["state",{#VOLUME_NAME}]<p>Update: 30s</p>|
|Gluster Volume Total Size on {#VOLUME_NAME}|<p>-</p>|`Zabbix agent`|gluster_volume_info["usable_capacity",{#VOLUME_NAME}]<p>Update: 30s</p>|
|Gluster Volume Used Size on {#VOLUME_NAME}|<p>-</p>|`Zabbix agent`|gluster_volume_info["used_capacity",{#VOLUME_NAME}]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Gluster storage nodes is not online|<p>-</p>|information|
|Gluster volume status is Unhealthy|<p>-</p>|warning|
|Gluster Volume Free Space is less than 20%|<p>-</p>|warning|
|Gluster Volume state in {#VOLUME_NAME} is down|<p>-</p>|warning|
