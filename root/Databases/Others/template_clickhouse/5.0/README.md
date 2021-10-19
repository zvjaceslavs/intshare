# Template_Clickhouse

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CH_MAX_INACTIVE_PARTS}|<p>-</p>|`2000`|Text macro|
|{$CH_MAX_PARTS}|<p>-</p>|`50`|Text macro|
|{$CH_MAX_REPLICA_QUEUE}|<p>-</p>|`5`|Text macro|
|{$CH_URL}|<p>-</p>|`http://127.0.0.1:8123`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Clickhouse Metrics - Merge|<p>-</p>|`Dependent item`|metrics.Merge<p>Update: 0</p>|
|Clickhouse AsyncMetrics|<p>SELECT metric, value FROM system.asynchronous_metrics FORMAT JSON</p>|`Zabbix agent`|web.page.get[{$CH_URL}/?query=SELECT%20metric%2C%20value%20FROM%20system.asynchronous_metrics%20FORMAT%20JSON]<p>Update: 1m</p>|
|Clickhouse AsyncMetrics - Uptime|<p>-</p>|`Dependent item`|metrics.async.Uptime<p>Update: 0</p>|
|Clickhouse Events - Query|<p>-</p>|`Dependent item`|events.Query<p>Update: 0</p>|
|Clickhouse Metrics - TCPConnection|<p>-</p>|`Dependent item`|metrics.TCPConnection<p>Update: 0</p>|
|Clickhouse AsyncMetrics - ReplicasMaxQueueSize|<p>-</p>|`Dependent item`|metrics.async.ReplicasMaxQueueSize<p>Update: 0</p>|
|Clickhouse Metrics - HTTPConnection|<p>-</p>|`Dependent item`|metrics.HTTPConnection<p>Update: 0</p>|
|Clickhouse Metrics - Query|<p>-</p>|`Dependent item`|metrics.Query<p>Update: 0</p>|
|Clickhouse Events - InsertedRows|<p>-</p>|`Dependent item`|events.InsertedRows<p>Update: 0</p>|
|Clickhouse AsyncMetrics - Memory|<p>-</p>|`Dependent item`|metrics.async.Memory<p>Update: 0</p>|
|Clickhouse Events|<p>SELECT event, value FROM system.events FORMAT JSON</p>|`Zabbix agent`|web.page.get[{$CH_URL}/?query=SELECT%20event%2C%20value%20FROM%20system.events%20FORMAT%20JSON]<p>Update: 1m</p>|
|Clickhouse Events - SelectQuery|<p>-</p>|`Dependent item`|events.SelectQuery<p>Update: 0</p>|
|Clickhouse Metrics - ReadonlyReplica|<p>-</p>|`Dependent item`|metrics.ReadonlyReplica<p>Update: 0</p>|
|Clickhouse Metrics|<p>SELECT metric, value FROM system.metrics FORMAT JSON</p>|`Zabbix agent`|web.page.get[{$CH_URL}/?query=SELECT%20metric%2C%20value%20FROM%20system.metrics%20FORMAT%20JSON]<p>Update: 1m</p>|
|Clickhouse Metrics - InterserverConnection|<p>-</p>|`Dependent item`|metrics.InterserverConnection<p>Update: 0</p>|
|Clickhouse Metrics - LeaderReplica|<p>-</p>|`Dependent item`|metrics.LeaderReplica<p>Update: 0</p>|
|Clickhouse Events - InsertedBytes|<p>-</p>|`Dependent item`|events.InsertedBytes<p>Update: 0</p>|
|Clickhouse Events - InsertQuery|<p>-</p>|`Dependent item`|events.InsertQuery<p>Update: 0</p>|
|Clickhouse AsyncMetrics - MaxPartCountForPartition|<p>-</p>|`Dependent item`|metrics.async.MaxPartCountForPartition<p>Update: 0</p>|
|Clickhouse Events - Merge|<p>-</p>|`Dependent item`|events.Merge<p>Update: 0</p>|
|Clickhouse Ping|<p>-</p>|`Zabbix agent`|web.page.regexp[{$CH_URL}/ping,,,HTTP/1.1 (\d+),,\1]<p>Update: 1m</p>|
|Clickhouse Inactive Parts|<p>Number of inactive parts SELECT COUNT(*) AS c FROM system.parts WHERE active = 0 FORMAT JSON</p>|`Zabbix agent`|web.page.get[{$CH_URL}/?query=SELECT%20COUNT%28%2A%29%20AS%20c%20FROM%20system.parts%20WHERE%20active%20%3D%200%20FORMAT%20JSON]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Clickhouse: Too many parts in a partition (>{$MAX_REPLICA_QUEUE})|<p>Some partition has too many unmerged parts</p>|average|
|Clickhouse: Too large replcation queue (>{$MAX_REPLICA_QUEUE})|<p>Replication queue of some tables is too large</p>|average|
|Clickhouse: Service was restarted|<p>-</p>|information|
|Clickhouse: Read only replicas detected|<p>-</p>|average|
|Clickhouse: Too many inactive parts (>{$MAX_INACTIVE_PARTS})|<p>Too many inactive parts which take up disk space</p>|high|
|Clickhouse: Ping failed|<p>-</p>|high|
