# Clickhouse

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

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
|User exceptions in communication with ZooKeeper server|<p>-</p>|`Zabbix agent`|ch_params[ZooKeeperUserExceptions]<p>Update: 30s</p>|
|Read-Only Replicas|<p>-</p>|`Zabbix agent`|ch_params[ReadonlyReplica]<p>Update: 30s</p>|
|delayed insert queries|<p>-</p>|`Zabbix agent`|ch_params[DelayedInserts]<p>Update: 30s</p>|
|memory for bookkeeping tasks of Replicated tables.|<p>Total amount of memory (bytes) allocated in background schedule pool (that is dedicated for bookkeeping tasks of Replicated tables).</p>|`Zabbix agent`|ch_params[MemoryTrackingInBackgroundSchedulePool]<p>Update: 30s</p>|
|the longest currently running query time|<p>-</p>|`Zabbix agent`|ch_params[LongestRunningQuery]<p>Update: 30s</p>|
|current TCP connections|<p>-</p>|`Zabbix agent`|ch_params[TCPConnection]<p>Update: 30s</p>|
|clickhouse-server uptime|<p>-</p>|`Zabbix agent`|ch_params[Uptime]<p>Update: 30s</p>|
|current running queries|<p>-</p>|`Zabbix agent`|ch_params[Query]<p>Update: 30s</p>|
|read, pread, io_getevents, etc. syscalls in fly|<p>-</p>|`Zabbix agent`|ch_params[Read]<p>Update: 30s</p>|
|replica partial shutdown|<p>how many times ReplicatedMergreTree table yield in state when Zookeeper session is expired</p>|`Zabbix agent`|ch_params[ReplicaPartialShutdown]<p>Update: 30s</p>|
|inserted bytes per second|<p>-</p>|`Zabbix agent`|ch_params[InsertedBytes]<p>Update: 30s</p>|
|processed INSERT queries|<p>-</p>|`Zabbix agent`|ch_params[InsertQuery]<p>Update: 30s</p>|
|distributed connection fail after all retries finished|<p>-</p>|`Zabbix agent`|ch_params[DistributedConnectionFailAtAll]<p>Update: 30s</p>|
|distributed pending files|<p>Number of pending files to process for asynchronous insertion into Distributed tables. Number of files for every shard is summed.</p>|`Zabbix agent`|ch_params[DistributedFilesToInsert]<p>Update: 30s</p>|
|data directory size|<p>-</p>|`Zabbix agent`|ch_params[DiskUsage]<p>Update: 30s</p>|
|Other exceptions in communication with ZooKeeper server|<p>-</p>|`Zabbix agent`|ch_params[ZooKeeperOtherExceptions]<p>Update: 30s</p>|
|merged uncompressed bytes per second|<p>-</p>|`Zabbix agent`|ch_params[MergedUncompressedBytes]<p>Update: 30s</p>|
|memory used by queries|<p>-</p>|`Zabbix agent`|ch_params[MemoryTracking]<p>Update: 30s</p>|
|current MySQL connections|<p>-</p>|`Zabbix agent`|ch_params[MySQLConnection]<p>Update: 30s</p>|
|revision|<p>-</p>|`Zabbix agent`|ch_params[Revision]<p>Update: 30s</p>|
|processed SELECT queries|<p>-</p>|`Zabbix agent`|ch_params[SelectQuery]<p>Update: 30s</p>|
|number of watches in zookeeper|<p>-</p>|`Zabbix agent`|ch_params[ZooKeeperWatch]<p>Update: 30s</p>|
|merged rows per second|<p>-</p>|`Zabbix agent`|ch_params[MergedRows]<p>Update: 30s</p>|
|read bytes per second|<p>-</p>|`Zabbix agent`|ch_params[ReadCompressedBytes]<p>Update: 30s</p>|
|replication lag across all tables|<p>-</p>|`Zabbix agent`|ch_params[ReplicasMaxAbsoluteDelay]<p>Update: 30s</p>|
|max count of parts per partition across all tables|<p>-</p>|`Zabbix agent`|ch_params[MaxPartCountForPartition]<p>Update: 30s</p>|
|distributed connection fail with retry|<p>-</p>|`Zabbix agent`|ch_params[DistributedConnectionFailTry]<p>Update: 30s</p>|
|network errors, i.e. DNS resolve|<p>-</p>|`Zabbix agent`|ch_params[NetworkErrors]<p>Update: 30s</p>|
|parts read from disk per second|<p>-</p>|`Zabbix agent`|ch_params[SelectedParts]<p>Update: 30s</p>|
|distributed connections|<p>-</p>|`Zabbix agent`|ch_params[DistributedSend]<p>Update: 30s</p>|
|memory for background merges|<p>Total amount of memory (bytes) allocated for background merges. Included in MemoryTrackingInBackgroundProcessingPool. Note that this value may include a drift when the memory was allocated in a context of background processing pool and freed in other context or vice-versa. This happens naturally due to caches for tables indexes and doesn't indicate memory leaks.</p>|`Zabbix agent`|ch_params[MemoryTrackingForMerges]<p>Update: 30s</p>|
|replication tasks in queue|<p>-</p>|`Zabbix agent`|ch_params[ReplicasSumQueueSize]<p>Update: 30s</p>|
|inserted rows per second|<p>-</p>|`Zabbix agent`|ch_params[InsertedRows]<p>Update: 30s</p>|
|memory for background merges, mutations and fetches.|<p>Total amount of memory (bytes) allocated in background processing pool (that is dedicated for backround merges, mutations and fetches). Note that this value may include a drift when the memory was allocated in a context of background processing pool and freed in other context or vice-versa. This happens naturally due to caches for tables indexes and doesn't indicate memory leaks.</p>|`Zabbix agent`|ch_params[MemoryTrackingInBackgroundProcessingPool]<p>Update: 30s</p>|
|Hardware exceptions in communication with ZooKeeper server|<p>-</p>|`Zabbix agent`|ch_params[ZooKeeperHardwareExceptions]<p>Update: 30s</p>|
|memory for backround moves|<p>Total amount of memory (bytes) allocated in background processing pool (that is dedicated for backround moves). Note that this value may include a drift when the memory was allocated in a context of background processing pool and freed in other context or vice-versa. This happens naturally due to caches for tables indexes and doesn't indicate memory leaks.</p>|`Zabbix agent`|ch_params[MemoryTrackingInBackgroundMoveProcessingPool]<p>Update: 30s</p>|
|current HTTP connections|<p>-</p>|`Zabbix agent`|ch_params[HTTPConnection]<p>Update: 30s</p>|
|write, pwrite, io_getevents, etc. syscalls in fly|<p>-</p>|`Zabbix agent`|ch_params[Write]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{HOST.HOST} clickhouse-server monitoring have no data, possible clickhouse-server is down, check `systemd status clickhouse-server` and check zbx_clickhouse_monitor.sh and `systemd status zabbix-agent`|<p>-</p>|high|
|{HOST.HOST} clickhouse-server recently restated|<p>-</p>|warning|
|{HOST.HOST} clickhouse DNS errors occured|<p>Please check DNS settings and remote_servers part of /etc/clickhouse-server/ https://clickhouse.tech/docs/en/operations/server_settings/settings/#server_settings_remote_servers https://clickhouse.tech/docs/en/operations/server_settings/settings/#server-settings-disable_internal_dns_cache https://clickhouse.tech/docs/en/query_language/system/#query_language-system-drop-dns-cache</p>|warning|
|{HOST.HOST} clickhouse version changed|<p>-</p>|warning|
|{HOST.HOST} distributed connection exceptions occured|<p>please check communications between Clickhouse servers and <remote_servers> in config.xml https://clickhouse.tech/docs/en/operations/table_engines/distributed/ https://clickhouse.tech/docs/en/query_language/system/#query_language-system-distributed https://clickhouse.tech/docs/en/operations/server_settings/settings/#server_settings_remote_servers When you insert data to distributed table. Data is written to target *MergreTree tables asynchronously. When inserted in the table, the data block is just written to the local file system. The data is sent to the remote servers in the background as soon as possible. The period for sending data is managed by the distributed_directory_monitor_sleep_time_ms and distributed_directory_monitor_max_sleep_time_ms settings. The Distributed engine sends each file with inserted data separately, but you can enable batch sending of files with the distributed_directory_monitor_batch_inserts setting.</p>|average|
|{HOST.HOST} have INSERT queries that are throttled due to high number of active data parts for partition in a MergeTree, please decrease INSERT frequency|<p>INSERT queries that are throttled due to high number of active data parts for partition in a MergeTree table.</p>|disaster|
|{HOST.HOST} have queries which running more than {$MAX_QUERY_TIME} sec|<p>-</p>|warning|
|{HOST.HOST} have read-only replicated tables, check Zookeeper state|<p>Number of Replicated tables that are currently in readonly state due to re-initialization after ZooKeeper session loss or due to startup without ZooKeeper configured.</p>|disaster|
|{HOST.HOST} have replication lag more {$MAX_REPLICA_DELAY_DISTIBUTED_QUERIES} sec|<p>When replica have too much lag, it can be skipped from Distributed SELECT Queries without errors and you will have wrong query results Check disks and networks on monitoring servers</p>|high|
|{HOST.HOST} HTTP connections >= {$MAX_HTTP_CONNECTIONS}|<p>The clickhouse is adapted to run not a very large number of parallel requests, not every HTTP connection means a running sql request, but a large number of open tcp connections can cause a spike in sudden sql requests, resulting in performance degradation.</p>|warning|
|{HOST.HOST} MergeTree parts 90% of {$MAX_PARTS_PER_PARTITION}, please descease INSERT queries frequency|<p>Clickhouse MergeTree table engine split each INSERT query to partitions (PARTITION BY expression) and add one or more PARTS per INSERT inside each partition, after that background merge process run, and when you have too much unmerged parts inside partition, SELECT queries performance can significate degrade, so clickhouse try delay insert, or abort it</p>|high|
|{HOST.HOST} MySQL connections >= {$MAX_MYSQL_CONNECTIONS}|<p>The clickhouse is adapted to run not a very large number of parallel requests, not every MySQL connection means a running sql request, but a large number of open tcp connections can cause a spike in sudden sql requests, resulting in performance degradation.</p>|warning|
|{HOST.HOST} please increase inserted rows per INSERT query|<p>Clickhouse team recommends inserting data in packets of at least 1000 rows or no more than a single request per second. Please use Buffer table https://clickhouse.tech/docs/en/operations/table_engines/buffer/ or https://github.com/nikepan/clickhouse-bulk</p>|high|
|{HOST.HOST} running queries 90% of {$MAX_CONCURRENT_QUERIES}|<p>Each concurrent SELECT query use memory in JOINs use CPU for running aggregation function and can read lot of data from disk when scan parts in partitions and utilize disk IO. Each concurrent INSERT query, allocate around 1MB per each column in an inserted table and can utilize disk IO. Look at following documentation parts https://clickhouse.tech/docs/en/operations/settings/query_complexity/ https://clickhouse.tech/docs/en/operations/quotas/</p>|high|
|{HOST.HOST} TCP connections >= {$MAX_TCP_CONNECTIONS}|<p>The clickhouse is adapted to run not a very large number of parallel requests, not every tcp connection means a running sql request, but a large number of open tcp connections can cause a spike in sudden sql requests, resulting in performance degradation.</p>|warning|
