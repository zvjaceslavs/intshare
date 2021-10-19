# Clickhouse

## Overview

Clickhouse Template + monitoring script which covered the following aspects of monitoring:


* Memory Tracking
* Select speed
* Insert / Merge speed
* How many parts in partitions
* Replication
* Zookeeper communications
* Distributed tables server-server connection
* DNS Cache


Contains **33 items, 15 triggers, 10 graphs, and 1 host screen**  
Require **clickhouse-client** and **zbx\_clickhouse\_monitor.sh** installed on zabbix-agent host


![Clickhouse Zabbix Template](https://github.com/Altinity/clickhouse-zabbix-template/raw/master/img/dashboard.png)



## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAX_CONCURENT_QUERIES}|<p>-</p>|`100`|Text macro|
|{$MAX_DELAYED_FILES_TO_DISTRIBUTED_INSERT}|<p>-</p>|`50`|Text macro|
|{$MAX_HTTP_CONNECTIONS}|<p>-</p>|`100`|Text macro|
|{$MAX_MYSQL_CONNECTIONS}|<p>-</p>|`100`|Text macro|
|{$MAX_PARTS_PER_PARTITION}|<p>-</p>|`300`|Text macro|
|{$MAX_QUERY_TIME}|<p>-</p>|`600`|Text macro|
|{$MAX_REPLICA_DELAY_DISTIBUTED_QUERIES}|<p>-</p>|`300`|Text macro|
|{$MAX_TCP_CONNECTIONS}|<p>-</p>|`1024`|Text macro|
|{$MIN_INSERTED_ROWS_PER_QUERY}|<p>-</p>|`1000`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|delayed insert queries|<p>-</p>|`Zabbix agent`|ch_params[DelayedInserts]<p>Update: 30s</p>|
|data directory size|<p>-</p>|`Zabbix agent`|ch_params[DiskUsage]<p>Update: 30s</p>|
|distributed connection fail after all retries finished|<p>-</p>|`Zabbix agent`|ch_params[DistributedConnectionFailAtAll]<p>Update: 30s</p>|
|distributed connection fail with retry|<p>-</p>|`Zabbix agent`|ch_params[DistributedConnectionFailTry]<p>Update: 30s</p>|
|distributed pending files|<p>Number of pending files to process for asynchronous insertion into Distributed tables. Number of files for every shard is summed.</p>|`Zabbix agent`|ch_params[DistributedFilesToInsert]<p>Update: 30s</p>|
|distributed connections|<p>-</p>|`Zabbix agent`|ch_params[DistributedSend]<p>Update: 30s</p>|
|current HTTP connections|<p>-</p>|`Zabbix agent`|ch_params[HTTPConnection]<p>Update: 30s</p>|
|inserted bytes per second|<p>-</p>|`Zabbix agent`|ch_params[InsertedBytes]<p>Update: 30s</p>|
|inserted rows per second|<p>-</p>|`Zabbix agent`|ch_params[InsertedRows]<p>Update: 30s</p>|
|processed INSERT queries|<p>-</p>|`Zabbix agent`|ch_params[InsertQuery]<p>Update: 30s</p>|
|the longest currently running query time|<p>-</p>|`Zabbix agent`|ch_params[LongestRunningQuery]<p>Update: 30s</p>|
|max count of parts per partition across all tables|<p>-</p>|`Zabbix agent`|ch_params[MaxPartCountForPartition]<p>Update: 30s</p>|
|memory used by queries|<p>-</p>|`Zabbix agent`|ch_params[MemoryTracking]<p>Update: 30s</p>|
|memory for background merges|<p>Total amount of memory (bytes) allocated for background merges. Included in MemoryTrackingInBackgroundProcessingPool. Note that this value may include a drift when the memory was allocated in a context of background processing pool and freed in other context or vice-versa. This happens naturally due to caches for tables indexes and doesn't indicate memory leaks.</p>|`Zabbix agent`|ch_params[MemoryTrackingForMerges]<p>Update: 30s</p>|
|memory for backround moves|<p>Total amount of memory (bytes) allocated in background processing pool (that is dedicated for backround moves). Note that this value may include a drift when the memory was allocated in a context of background processing pool and freed in other context or vice-versa. This happens naturally due to caches for tables indexes and doesn't indicate memory leaks.</p>|`Zabbix agent`|ch_params[MemoryTrackingInBackgroundMoveProcessingPool]<p>Update: 30s</p>|
|memory for background merges, mutations and fetches.|<p>Total amount of memory (bytes) allocated in background processing pool (that is dedicated for backround merges, mutations and fetches). Note that this value may include a drift when the memory was allocated in a context of background processing pool and freed in other context or vice-versa. This happens naturally due to caches for tables indexes and doesn't indicate memory leaks.</p>|`Zabbix agent`|ch_params[MemoryTrackingInBackgroundProcessingPool]<p>Update: 30s</p>|
|memory for bookkeeping tasks of Replicated tables.|<p>Total amount of memory (bytes) allocated in background schedule pool (that is dedicated for bookkeeping tasks of Replicated tables).</p>|`Zabbix agent`|ch_params[MemoryTrackingInBackgroundSchedulePool]<p>Update: 30s</p>|
|merged rows per second|<p>-</p>|`Zabbix agent`|ch_params[MergedRows]<p>Update: 30s</p>|
|merged uncompressed bytes per second|<p>-</p>|`Zabbix agent`|ch_params[MergedUncompressedBytes]<p>Update: 30s</p>|
|current MySQL connections|<p>-</p>|`Zabbix agent`|ch_params[MySQLConnection]<p>Update: 30s</p>|
|network errors, i.e. DNS resolve|<p>-</p>|`Zabbix agent`|ch_params[NetworkErrors]<p>Update: 30s</p>|
|current running queries|<p>-</p>|`Zabbix agent`|ch_params[Query]<p>Update: 30s</p>|
|read, pread, io_getevents, etc. syscalls in fly|<p>-</p>|`Zabbix agent`|ch_params[Read]<p>Update: 30s</p>|
|read bytes per second|<p>-</p>|`Zabbix agent`|ch_params[ReadCompressedBytes]<p>Update: 30s</p>|
|Read-Only Replicas|<p>-</p>|`Zabbix agent`|ch_params[ReadonlyReplica]<p>Update: 30s</p>|
|replica partial shutdown|<p>how many times ReplicatedMergreTree table yield in state when Zookeeper session is expired</p>|`Zabbix agent`|ch_params[ReplicaPartialShutdown]<p>Update: 30s</p>|
|replication lag across all tables|<p>-</p>|`Zabbix agent`|ch_params[ReplicasMaxAbsoluteDelay]<p>Update: 30s</p>|
|replication tasks in queue|<p>-</p>|`Zabbix agent`|ch_params[ReplicasSumQueueSize]<p>Update: 30s</p>|
|revision|<p>-</p>|`Zabbix agent`|ch_params[Revision]<p>Update: 30s</p>|
|parts read from disk per second|<p>-</p>|`Zabbix agent`|ch_params[SelectedParts]<p>Update: 30s</p>|
|processed SELECT queries|<p>-</p>|`Zabbix agent`|ch_params[SelectQuery]<p>Update: 30s</p>|
|current TCP connections|<p>-</p>|`Zabbix agent`|ch_params[TCPConnection]<p>Update: 30s</p>|
|clickhouse-server uptime|<p>-</p>|`Zabbix agent`|ch_params[Uptime]<p>Update: 30s</p>|
|write, pwrite, io_getevents, etc. syscalls in fly|<p>-</p>|`Zabbix agent`|ch_params[Write]<p>Update: 30s</p>|
|Hardware exceptions in communication with ZooKeeper server|<p>-</p>|`Zabbix agent`|ch_params[ZooKeeperHardwareExceptions]<p>Update: 30s</p>|
|Other exceptions in communication with ZooKeeper server|<p>-</p>|`Zabbix agent`|ch_params[ZooKeeperOtherExceptions]<p>Update: 30s</p>|
|User exceptions in communication with ZooKeeper server|<p>-</p>|`Zabbix agent`|ch_params[ZooKeeperUserExceptions]<p>Update: 30s</p>|
|number of watches in zookeeper|<p>-</p>|`Zabbix agent`|ch_params[ZooKeeperWatch]<p>Update: 30s</p>|
## Triggers

There are no triggers in this template.

