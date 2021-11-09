# Elasticsearch Cluster by HTTP zbx 4.2

## Description

## Description The template to monitor Elasticsearch by Zabbix that work without any external scripts. It works with both standalone and cluster instances. The metrics are collected in one pass remotely using an HTTP agent. They are getting values from REST API _cluster/health, _cluster/stats, _nodes/stats requests. You can set {$ELASTICSEARCH.USERNAME} and {$ELASTICSEARCH.PASSWORD} macros in the template for using on the host level. If you use an atypical location ES API, don't forget to change the macros {$ELASTICSEARCH.SCHEME},{$ELASTICSEARCH.PORT}. Parsed manually from https://git.zabbix.com/projects/ZBX/repos/zabbix/browse/templates/app/elasticsearch_http from zabbix version 5.0 to 4.2 and add triggers ## Overview This is fork of official [Zabbix template Elasticsearch Cluster by HTTP (Zabbix 5.0)](https://www.zabbix.com/integrations/elasticsearch) Features: * Compatible with Zabbix 4.2 + * Added trigger of Maximum allocated shards on ES cluster Be default in ES max shards per node is 1000 ({$ELASTICSEARCH.MAX _SHARDS _PER _NODE}) if number of shrads is maximum then elasticshearch will be sillently reject write requests. Tested on Zabbix 4.2 and Elasticsearch 7.4.2 ## Author R N 

## Overview

This is fork of official [Zabbix template Elasticsearch Cluster by HTTP (Zabbix 5.0)](https://www.zabbix.com/integrations/elasticsearch)


Features:


* Compatible with Zabbix 4.2 +
* Added trigger of Maximum allocated shards on ES cluster  
Be default in ES max shards per node is 1000 ({$ELASTICSEARCH.MAX\_SHARDS\_PER\_NODE}) if number of shrads is maximum then elasticshearch will be sillently reject write requests.


Tested on Zabbix 4.2 and Elasticsearch 7.4.2



## Author

R N

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ELASTICSEARCH.FETCH_LATENCY.MAX.WARN}|<p>-</p>|`100`|Text macro|
|{$ELASTICSEARCH.FLUSH_LATENCY.MAX.WARN}|<p>-</p>|`100`|Text macro|
|{$ELASTICSEARCH.HEAP_USED.MAX.CRIT}|<p>-</p>|`95`|Text macro|
|{$ELASTICSEARCH.HEAP_USED.MAX.WARN}|<p>-</p>|`85`|Text macro|
|{$ELASTICSEARCH.INDEXING_LATENCY.MAX.WARN}|<p>-</p>|`100`|Text macro|
|{$ELASTICSEARCH.MAX_SHARDS_PER_NODE}|<p>-</p>|`1000`|Text macro|
|{$ELASTICSEARCH.PASSWORD}|<p>-</p>|``|Text macro|
|{$ELASTICSEARCH.PORT}|<p>-</p>|`9200`|Text macro|
|{$ELASTICSEARCH.QUERY_LATENCY.MAX.WARN}|<p>-</p>|`100`|Text macro|
|{$ELASTICSEARCH.RESPONSE_TIME.MAX.WARN}|<p>-</p>|`10s`|Text macro|
|{$ELASTICSEARCH.SCHEME}|<p>-</p>|`http`|Text macro|
|{$ELASTICSEARCH.USERNAME}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Cluster nodes discovery|<p>Discovery ES cluster nodes.</p>|`HTTP agent`|es.nodes.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ES: Number of nodes|<p>The number of nodes within the cluster.</p>|`Dependent item`|es.cluster.number_of_nodes<p>Update: 0</p>|
|ES: Number of data nodes|<p>The number of nodes that are dedicated to data nodes.</p>|`Dependent item`|es.cluster.number_of_data_nodes<p>Update: 0</p>|
|ES: Service response time|<p>Checks performance of the TCP service.</p>|`Simple check`|net.tcp.service.perf["{$ELASTICSEARCH.SCHEME}","{HOST.CONN}","{$ELASTICSEARCH.PORT}"]<p>Update: 1m</p>|
|ES: Total shards|<p>Total number of shards</p>|`Dependent item`|es.shards.total<p>Update: 0</p>|
|ES: Task max waiting in queue|<p>The time expressed in seconds since the earliest initiated task is waiting for being performed.</p>|`Dependent item`|es.cluster.task_max_waiting_in_queue<p>Update: 0</p>|
|ES: Number of relocating shards|<p>The number of shards that are under relocation.</p>|`Dependent item`|es.cluster.relocating_shards<p>Update: 0</p>|
|ES: Get cluster stats|<p>Returns cluster statistics.</p>|`HTTP agent`|es.cluster.get_stats<p>Update: 1m</p>|
|ES: Number of unassigned shards|<p>The number of shards that are not allocated.</p>|`Dependent item`|es.cluster.unassigned_shards<p>Update: 0</p>|
|ES: Total available size to JVM in all file stores|<p>The total number of bytes available to JVM in the file stores across all selected nodes. Depending on OS or process-level restrictions, this number may be less than nodes.fs.free_in_byes. This is the actual amount of free disk space the selected Elasticsearch nodes can use.</p>|`Dependent item`|es.nodes.fs.available_in_bytes<p>Update: 0</p>|
|ES: Number of pending tasks|<p>The number of cluster-level changes that have not yet been executed.</p>|`Dependent item`|es.cluster.number_of_pending_tasks<p>Update: 0</p>|
|ES: Delayed unassigned shards|<p>The number of shards whose allocation has been delayed by the timeout settings.</p>|`Dependent item`|es.cluster.delayed_unassigned_shards<p>Update: 0</p>|
|ES: Get cluster health|<p>Returns the health status of a cluster.</p>|`HTTP agent`|es.cluster.get_health<p>Update: 1m</p>|
|ES: Get cluster version|<p>Returns the cluster version</p>|`HTTP agent`|es.cluster.get_version<p>Update: 1h</p>|
|ES: Cluster health status|<p>Health status of the cluster, based on the state of its primary and replica shards. Statuses are: green All shards are assigned. yellow All primary shards are assigned, but one or more replica shards are unassigned. If a node in the cluster fails, some data could be unavailable until that node is repaired. red One or more primary shards are unassigned, so some data is unavailable. This can occur briefly during cluster startup as primary shards are assigned.</p>|`Dependent item`|es.cluster.status<p>Update: 0</p>|
|ES: Cluster uptime|<p>Uptime duration in seconds since JVM has last started.</p>|`Dependent item`|es.nodes.jvm.max_uptime[{#ES.NODE}]<p>Update: 0</p>|
|ES: Number of initializing shards|<p>The number of shards that are under initialization.</p>|`Dependent item`|es.cluster.initializing_shards<p>Update: 0</p>|
|ES: Number of non-deleted documents|<p>The total number of non-deleted documents across all primary shards assigned to the selected nodes. This number is based on the documents in Lucene segments and may include the documents from nested fields.</p>|`Dependent item`|es.indices.docs.count<p>Update: 0</p>|
|ES: Nodes with the master role|<p>The number of selected nodes with the master role.</p>|`Dependent item`|es.nodes.count.master<p>Update: 0</p>|
|ES: Inactive shards percentage|<p>The ratio of inactive shards in the cluster expressed as a percentage.</p>|`Dependent item`|es.cluster.inactive_shards_percent_as_number<p>Update: 0</p>|
|ES: Nodes with the ingest role|<p>The number of selected nodes with the ingest role.</p>|`Dependent item`|es.nodes.count.ingest<p>Update: 0</p>|
|ES: Total size of all file stores|<p>The total size in bytes of all file stores across all selected nodes.</p>|`Dependent item`|es.nodes.fs.total_in_bytes<p>Update: 0</p>|
|ES: Indices with shards assigned to nodes|<p>The total number of indices with shards assigned to the selected nodes.</p>|`Dependent item`|es.indices.count<p>Update: 0</p>|
|ES: Nodes with the data role|<p>The number of selected nodes with the data role.</p>|`Dependent item`|es.nodes.count.data<p>Update: 0</p>|
|ES: Service status|<p>Checks if the service is running and accepting TCP connections.</p>|`Simple check`|net.tcp.service["{$ELASTICSEARCH.SCHEME}","{HOST.CONN}","{$ELASTICSEARCH.PORT}"]<p>Update: 1m</p>|
|ES: Get nodes stats|<p>Returns cluster nodes statistics.</p>|`HTTP agent`|es.nodes.get_stats<p>Update: 1m</p>|
|ES {#ES.NODE}: Maximum JVM memory available for use|<p>The maximum amount of memory, in bytes, available for use by the heap.</p>|`Dependent item`|es.node.jvm.mem.heap_max_in_bytes[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Amount of JVM heap currently in use|<p>The memory, in bytes, currently in use by the heap.</p>|`Dependent item`|es.node.jvm.mem.heap_used_in_bytes[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Percent of JVM heap currently in use|<p>The percentage of memory currently in use by the heap.</p>|`Dependent item`|es.node.jvm.mem.heap_used_percent[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Node uptime|<p>JVM uptime in seconds.</p>|`Dependent item`|es.node.jvm.uptime[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Refresh thread pool tasks in queue|<p>The number of tasks in queue for the refresh thread pool.</p>|`Dependent item`|es.node.thread_pool.refresh.queue[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Refresh thread pool executor tasks completed|<p>The number of tasks completed by the refresh thread pool executor.</p>|`Dependent item`|es.node.thread_pool.refresh.completed.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Refresh thread pool executor tasks rejected|<p>The number of tasks rejected by the refresh thread pool executor.</p>|`Dependent item`|es.node.thread_pool.refresh.rejected.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Search thread pool active threads|<p>The number of active threads in the search thread pool.</p>|`Dependent item`|es.node.thread_pool.search.active[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Search thread pool executor tasks completed|<p>The number of tasks completed by the search thread pool executor.</p>|`Dependent item`|es.node.thread_pool.search.completed.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Search thread pool tasks in queue|<p>The number of tasks in queue for the search thread pool.</p>|`Dependent item`|es.node.thread_pool.search.queue[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Search thread pool executor tasks rejected|<p>The number of tasks rejected by the search thread pool executor.</p>|`Dependent item`|es.node.thread_pool.search.rejected.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Write thread pool active threads|<p>The number of active threads in the write thread pool.</p>|`Dependent item`|es.node.thread_pool.write.active[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Write thread pool executor tasks completed|<p>The number of tasks completed by the write thread pool executor.</p>|`Dependent item`|es.node.thread_pool.write.completed.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Write thread pool tasks in queue|<p>The number of tasks in queue for the write thread pool.</p>|`Dependent item`|es.node.thread_pool.write.queue[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Time spent performing query|<p>Time in seconds spent performing query operations for the last measuring span.</p>|`Dependent item`|es.node.indices.search.query_time[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Rate of queries|<p>The number of query operations per second.</p>|`Dependent item`|es.node.indices.search.query.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Current query operations|<p>The number of query operations currently running.</p>|`Dependent item`|es.node.indices.search.query_current[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Time spent throttling operations|<p>Time in seconds spent throttling operations for the last measuring span.</p>|`Dependent item`|es.node.indices.indexing.throttle_time[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Number of open HTTP connections|<p>The number of currently open HTTP connections for the node.</p>|`Dependent item`|es.node.http.current_open[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Rate of HTTP connections opened|<p>The number of HTTP connections opened for the node per second.</p>|`Dependent item`|es.node.http.opened.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total number of index flushes to disk|<p>The total number of flush operations.</p>|`Dependent item`|es.node.indices.flush.total[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total time spent on flushing indices to disk|<p>Total time in milliseconds spent performing flush operations.</p>|`Dependent item`|es.node.indices.flush.total_time_in_millis[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Current indexing operations|<p>The number of indexing operations currently running.</p>|`Dependent item`|es.node.indices.indexing.index_current[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total time spent performing indexing|<p>Total time in milliseconds spent performing indexing operations.</p>|`Dependent item`|es.node.indices.indexing.index_time_in_millis[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total number of indexing|<p>The total number of indexing operations.</p>|`Dependent item`|es.node.indices.indexing.index_total[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Time spent throttling merge operations|<p>Time in seconds spent throttling merge operations for the last measuring span.</p>|`Dependent item`|es.node.indices.merges.total_throttled_time[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total size|<p>Total size (in bytes) of all file stores.</p>|`Dependent item`|es.node.fs.total.total_in_bytes[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Time spent throttling recovery operations|<p>Time in seconds spent throttling recovery operations for the last measuring span.</p>|`Dependent item`|es.node.indices.recovery.throttle_time[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Rate of index refreshes|<p>The number of refresh operations per second.</p>|`Dependent item`|es.node.indices.refresh.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Time spent performing refresh|<p>Time in seconds spent performing refresh operations for the last measuring span.</p>|`Dependent item`|es.node.indices.refresh.time[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Rate of fetch|<p>The number of fetch operations per second.</p>|`Dependent item`|es.node.indices.search.fetch.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Current fetch operations|<p>The number of fetch operations currently running.</p>|`Dependent item`|es.node.indices.search.fetch_current[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Time spent performing fetch|<p>Time in seconds spent performing fetch operations for the last measuring span.</p>|`Dependent item`|es.node.indices.search.fetch_time[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total time spent performing fetch|<p>Time in milliseconds spent performing fetch operations.</p>|`Dependent item`|es.node.indices.search.fetch_time_in_millis[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total number of fetch|<p>The total number of fetch operations.</p>|`Dependent item`|es.node.indices.search.fetch_total[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Write thread pool executor tasks rejected|<p>The number of tasks rejected by the write thread pool executor.</p>|`Dependent item`|es.node.thread_pool.write.rejected.rate[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Flush latency|<p>The average flush latency calculated from the available flush.total and flush.total_time_in_millis metrics.</p>|`Calculated`|es.node.indices.flush.latency[{#ES.NODE}]<p>Update: 1m</p><p>LLD</p>|
|ES {#ES.NODE}: Fetch latency|<p>The average fetch latency calculated by sampling the total number of fetches and the total elapsed time at regular intervals.</p>|`Calculated`|es.node.indices.search.fetch_latency[{#ES.NODE}]<p>Update: 1m</p><p>LLD</p>|
|ES {#ES.NODE}: Indexing latency|<p>The average indexing latency calculated from the available index_total and index_time_in_millis metrics.</p>|`Calculated`|es.node.indices.indexing.index_latency[{#ES.NODE}]<p>Update: 1m</p><p>LLD</p>|
|ES {#ES.NODE}: Query latency|<p>The average query latency calculated by sampling the total number of queries and the total elapsed time at regular intervals.</p>|`Calculated`|es.node.indices.search.query_latency[{#ES.NODE}]<p>Update: 1m</p><p>LLD</p>|
|ES {#ES.NODE}: Total available size|<p>The total number of bytes available to this Java virtual machine on all file stores. Depending on OS or process level restrictions, this might appear less than fs.total.free_in_bytes. This is the actual amount of free disk space the Elasticsearch node can utilize.</p>|`Dependent item`|es.node.fs.total.available_in_bytes[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Refresh thread pool active threads|<p>The number of active threads in the refresh thread pool.</p>|`Dependent item`|es.node.thread_pool.refresh.active[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total time spent performing query|<p>Time in milliseconds spent performing query operations.</p>|`Dependent item`|es.node.indices.search.query_time_in_millis[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Total number of query|<p>The total number of query operations.</p>|`Dependent item`|es.node.indices.search.query_total[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
|ES {#ES.NODE}: Amount of JVM heap committed|<p>The amount of memory, in bytes, available for use by the heap.</p>|`Dependent item`|es.node.jvm.mem.heap_committed_in_bytes[{#ES.NODE}]<p>Update: 0</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|ES {#ES.NODE}: Fetch latency is too high (over {$ELASTICSEARCH.FETCH_LATENCY.MAX.WARN}ms for 5m)|<p>The fetch phase should typically take much less time than the query phase. If you notice this metric consistently increasing, this could indicate a problem with slow disks, enriching of documents (highlighting the relevant text in search results, etc.), or requesting too many results.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.indices.search.fetch_latency[{#ES.NODE}].min(5m)}>100</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Flush latency is too high (over {$ELASTICSEARCH.FLUSH_LATENCY.MAX.WARN}ms for 5m)|<p>If you see this metric increasing steadily, it may indicate a problem with slow disks; this problem may escalate and eventually prevent you from being able to add new information to your index.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.indices.flush.latency[{#ES.NODE}].min(5m)}>100</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Indexing latency is too high (over {$ELASTICSEARCH.INDEXING_LATENCY.MAX.WARN}ms for 5m)|<p>If the latency is increasing, it may indicate that you are indexing too many documents at the same time (Elasticsearch’s documentation recommends starting with a bulk indexing size of 5 to 15 megabytes and increasing slowly from there).</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.indices.indexing.index_latency[{#ES.NODE}].min(5m)}>100</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Node {#ES.NODE} has been restarted (uptime < 10m)|<p>Uptime is less than 10 minutes</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.jvm.uptime[{#ES.NODE}].last()}<10m</p><p>**Recovery expression**: </p>|information|
|ES {#ES.NODE}: Percent of JVM heap in use is critical (over {$ELASTICSEARCH.HEAP_USED.MAX.CRIT}% for 1h)|<p>This indicates that the rate of garbage collection isn’t keeping up with the rate of garbage creation. To address this problem, you can either increase your heap size (as long as it remains below the recommended guidelines stated above), or scale out the cluster by adding more nodes.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.jvm.mem.heap_used_percent[{#ES.NODE}].min(1h)}>95</p><p>**Recovery expression**: </p>|high|
|ES {#ES.NODE}: Percent of JVM heap in use is high (over {$ELASTICSEARCH.HEAP_USED.MAX.WARN}% for 1h)|<p>This indicates that the rate of garbage collection isn’t keeping up with the rate of garbage creation. To address this problem, you can either increase your heap size (as long as it remains below the recommended guidelines stated above), or scale out the cluster by adding more nodes.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.jvm.mem.heap_used_percent[{#ES.NODE}].min(1h)}>85</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Query latency is too high (over {$ELASTICSEARCH.QUERY_LATENCY.MAX.WARN}ms for 5m)|<p>If latency exceeds a threshold, look for potential resource bottlenecks, or investigate whether you need to optimize your queries.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.indices.search.query_latency[{#ES.NODE}].min(5m)}>100</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Refresh thread pool executor has the rejected tasks (for 5m)|<p>The number of tasks rejected by the refresh thread pool executor is over 0 for 5m.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.thread_pool.refresh.rejected.rate[{#ES.NODE}].min(5m)}>0</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Search thread pool executor has the rejected tasks (for 5m)|<p>The number of tasks rejected by the search thread pool executor is over 0 for 5m.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.thread_pool.search.rejected.rate[{#ES.NODE}].min(5m)}>0</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Write thread pool executor has the rejected tasks (for 5m)|<p>The number of tasks rejected by the write thread pool executor is over 0 for 5m.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.thread_pool.write.rejected.rate[{#ES.NODE}].min(5m)}>0</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Fetch latency is too high (over {$ELASTICSEARCH.FETCH_LATENCY.MAX.WARN}ms for 5m) (LLD)|<p>The fetch phase should typically take much less time than the query phase. If you notice this metric consistently increasing, this could indicate a problem with slow disks, enriching of documents (highlighting the relevant text in search results, etc.), or requesting too many results.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.indices.search.fetch_latency[{#ES.NODE}].min(5m)}>100</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Flush latency is too high (over {$ELASTICSEARCH.FLUSH_LATENCY.MAX.WARN}ms for 5m) (LLD)|<p>If you see this metric increasing steadily, it may indicate a problem with slow disks; this problem may escalate and eventually prevent you from being able to add new information to your index.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.indices.flush.latency[{#ES.NODE}].min(5m)}>100</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Indexing latency is too high (over {$ELASTICSEARCH.INDEXING_LATENCY.MAX.WARN}ms for 5m) (LLD)|<p>If the latency is increasing, it may indicate that you are indexing too many documents at the same time (Elasticsearch’s documentation recommends starting with a bulk indexing size of 5 to 15 megabytes and increasing slowly from there).</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.indices.indexing.index_latency[{#ES.NODE}].min(5m)}>100</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Node {#ES.NODE} has been restarted (uptime < 10m) (LLD)|<p>Uptime is less than 10 minutes</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.jvm.uptime[{#ES.NODE}].last()}<10m</p><p>**Recovery expression**: </p>|information|
|ES {#ES.NODE}: Percent of JVM heap in use is critical (over {$ELASTICSEARCH.HEAP_USED.MAX.CRIT}% for 1h) (LLD)|<p>This indicates that the rate of garbage collection isn’t keeping up with the rate of garbage creation. To address this problem, you can either increase your heap size (as long as it remains below the recommended guidelines stated above), or scale out the cluster by adding more nodes.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.jvm.mem.heap_used_percent[{#ES.NODE}].min(1h)}>95</p><p>**Recovery expression**: </p>|high|
|ES {#ES.NODE}: Percent of JVM heap in use is high (over {$ELASTICSEARCH.HEAP_USED.MAX.WARN}% for 1h) (LLD)|<p>This indicates that the rate of garbage collection isn’t keeping up with the rate of garbage creation. To address this problem, you can either increase your heap size (as long as it remains below the recommended guidelines stated above), or scale out the cluster by adding more nodes.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.jvm.mem.heap_used_percent[{#ES.NODE}].min(1h)}>85</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Query latency is too high (over {$ELASTICSEARCH.QUERY_LATENCY.MAX.WARN}ms for 5m) (LLD)|<p>If latency exceeds a threshold, look for potential resource bottlenecks, or investigate whether you need to optimize your queries.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.indices.search.query_latency[{#ES.NODE}].min(5m)}>100</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Refresh thread pool executor has the rejected tasks (for 5m) (LLD)|<p>The number of tasks rejected by the refresh thread pool executor is over 0 for 5m.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.thread_pool.refresh.rejected.rate[{#ES.NODE}].min(5m)}>0</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Search thread pool executor has the rejected tasks (for 5m) (LLD)|<p>The number of tasks rejected by the search thread pool executor is over 0 for 5m.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.thread_pool.search.rejected.rate[{#ES.NODE}].min(5m)}>0</p><p>**Recovery expression**: </p>|warning|
|ES {#ES.NODE}: Write thread pool executor has the rejected tasks (for 5m) (LLD)|<p>The number of tasks rejected by the write thread pool executor is over 0 for 5m.</p>|<p>**Expression**: {Elasticsearch Cluster by HTTP zbx 4.2:es.node.thread_pool.write.rejected.rate[{#ES.NODE}].min(5m)}>0</p><p>**Recovery expression**: </p>|warning|
