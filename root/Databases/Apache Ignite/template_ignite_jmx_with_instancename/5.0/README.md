# Template App Ignite JMX

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$IGNITE_JMX_PASS}|<p>-</p>|``|Text macro|
|{$IGNITE_JMX_USER}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Cache Groups|<p>-</p>|`JMX agent`|jmx.discovery[beans,"org.apache:igniteInstanceName=*,group=\"Cache groups\",name=*"]<p>Update: 30m</p>|
|Data Region Metrics|<p>-</p>|`JMX agent`|jmx.discovery[beans,"org.apache:igniteInstanceName=*,group=DataRegionMetrics,name=*"]<p>Update: 30m</p>|
|Ingite Kernal Metrics|<p>-</p>|`JMX agent`|jmx.discovery[beans,"org.apache:igniteInstanceName=*,group=Kernal,name=IgniteKernal"]<p>Update: 30m</p>|
|Cache Metrics|<p>-</p>|`JMX agent`|jmx.discovery[beans,"org.apache:igniteInstanceName=*,group=*,name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\""]<p>Update: 30m</p>|
|Thread Pool Metrics|<p>-</p>|`JMX agent`|jmx.discovery[beans,"org.apache:igniteInstanceName=*,group=\"Thread Pools\",name=*"]<p>Update: 30m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Backups|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=\"Cache groups\",name={#JMXNAME}",Backups]<p>Update: 30m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - CacheList|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=\"Cache groups\",name={#JMXNAME}",Caches]<p>Update: 30m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - LocalNodeMovingPartitionsCount|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=\"Cache groups\",name={#JMXNAME}",LocalNodeMovingPartitionsCount]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - LocalNodeRentingEntriesCount|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=\"Cache groups\",name={#JMXNAME}",LocalNodeRentingEntriesCount]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - LocalNodeRentingPartitionsCount|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=\"Cache groups\",name={#JMXNAME}",LocalNodeRentingPartitionsCount]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - NumberOfPartitionCopies|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=\"Cache groups\",name={#JMXNAME}",MinimumNumberOfPartitionCopies]<p>Update: 10m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Checkpoint buffer utilization|<p>-</p>|`Calculated`|checkpointBufferUtilization[{#JMXIGNITEINSTANCENAME}_{#JMXNAME}]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - DataRegion utilisation|<p>-</p>|`Calculated`|dataRegion.util[{#JMXIGNITEINSTANCENAME}_{#JMXNAME}]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - AllocationRate|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",AllocationRate]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - CheckpointBufferSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",CheckpointBufferSize]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - DirtyPages|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",DirtyPages]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - EvictionRate|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",EvictionRate]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - MaxSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",MaxSize]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - OffHeapSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",OffHeapSize]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - OffheapUsedSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",OffheapUsedSize]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - PagesFillFactor|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",PagesFillFactor]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - PagesReplaceRate|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",PagesReplaceRate]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - UsedCheckpointBufferSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=DataRegionMetrics,name={#JMXNAME}",UsedCheckpointBufferSize]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - OffHeapFree|<p>-</p>|`Calculated`|offHeapFree[{#JMXIGNITEINSTANCENAME}_{#JMXNAME}]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - CurrentCancelledJobs|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterLocalNodeMetricsMXBeanImpl",CurrentCancelledJobs]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - CommunicationSentMessagesPerSecond|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpCommunicationSpi",SentMessagesCount]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - TransactionsRolledBackNumber|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=TransactionMetrics,name=TransactionMetricsMxBeanImpl",TransactionsRolledBackNumber]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - TransactionsHoldingLockNumber|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=TransactionMetrics,name=TransactionMetricsMxBeanImpl",TransactionsHoldingLockNumber]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - TransactionsCommittedNumber|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=TransactionMetrics,name=TransactionMetricsMxBeanImpl",TransactionsCommittedNumber]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - OwnerTransactionsNumber|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=TransactionMetrics,name=TransactionMetricsMxBeanImpl",OwnerTransactionsNumber]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - LockedKeysNumber|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=TransactionMetrics,name=TransactionMetricsMxBeanImpl",LockedKeysNumber]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - DiscoveryTotalReceivedMessages|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpDiscoverySpi",TotalReceivedMessages]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - TotalProcessedMessages|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpDiscoverySpi",TotalProcessedMessages]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - ReconnectCount|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpDiscoverySpi",ReconnectCount]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - NodesLeft|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpDiscoverySpi",NodesLeft]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - DiscoveryMessageWorkerQueueSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpDiscoverySpi",MessageWorkerQueueSize]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - NodeOrder|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpDiscoverySpi",LocalNodeFormatted]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - CurrentCoordinator|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpDiscoverySpi",Coordinator]<p>Update: 2m</p>|
|{#JMXIGNITEINSTANCENAME} - CoordinatorSinceTimestamp|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpDiscoverySpi",CoordinatorSinceTimestamp]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - CommunicationReconnectCount|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpCommunicationSpi",ReconnectCount]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - CurrentPmeDuration|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterLocalNodeMetricsMXBeanImpl",CurrentPmeDuration]<p>Update: 10s</p>|
|{#JMXIGNITEINSTANCENAME} - CommunicationReceivedMessagesPerSecond|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpCommunicationSpi",ReceivedMessagesCount]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - CommunicationOutMessagesQueueSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=SPIs,name=TcpCommunicationSpi",OutboundMessagesQueueSize]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - UpTimeFormatted|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=IgniteKernal",UpTimeFormatted]<p>Update: 2m</p>|
|{#JMXIGNITEINSTANCENAME} - LocalNodeId|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=IgniteKernal",LocalNodeId]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - IgniteVersion|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=IgniteKernal",FullVersion]<p>Update: 10m</p>|
|{#JMXIGNITEINSTANCENAME} - TotalServerNodes|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterMetricsMXBeanImpl",TotalServerNodes]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - TotalNodes|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterMetricsMXBeanImpl",TotalNodes]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - TotalClientNodes|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterMetricsMXBeanImpl",TotalClientNodes]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - TotalBaselineNodes|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterMetricsMXBeanImpl",TotalBaselineNodes]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - HeapMemoryUsed|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterLocalNodeMetricsMXBeanImpl",HeapMemoryUsed]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - CurrentWaitingJobs|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterLocalNodeMetricsMXBeanImpl",CurrentWaitingJobs]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - CurrentThreadCount|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterLocalNodeMetricsMXBeanImpl",CurrentThreadCount]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - CurrentRejectedJobs|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=Kernal,name=ClusterLocalNodeMetricsMXBeanImpl",CurrentRejectedJobs]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - StripedExecutor - QueueSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=\"Thread Pools\",name=StripedExecutor",TotalQueueSize]<p>Update: 1m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - CacheGets|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group={#JMXGROUP},name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\"",CacheGets]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - CachePuts|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group={#JMXGROUP},name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\"",CachePuts]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - CacheRemovals|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group={#JMXGROUP},name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\"",CacheRemovals]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - CacheSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group={#JMXGROUP},name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\"",CacheSize]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - CacheTxCommits|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group={#JMXGROUP},name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\"",CacheTxCommits]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - CacheTxRollbacks|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group={#JMXGROUP},name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\"",CacheTxRollbacks]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - HeapEntriesCount|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group={#JMXGROUP},name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\"",HeapEntriesCount]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - NodeKeyCount|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group={#JMXGROUP},name=\"org.apache.ignite.internal.processors.cache.CacheLocalMetricsMXBeanImpl\"",Size]<p>Update: 5m</p>|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - QueueSize|<p>-</p>|`JMX agent`|jmx["{#JMXDOMAIN}:igniteInstanceName={#JMXIGNITEINSTANCENAME},group=\"Thread Pools\",name={#JMXNAME}",QueueSize]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - One or more backups are unavailiable|<p>-</p>|warning|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Rebalance in progress|<p>-</p>|information|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - There is no copy for partitions|<p>-</p>|average|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Checkpoint buffer utilization > 66%|<p>Checkpoint buffer utilization is high. Threads will be throttled to avoid buffer overflow. It can be coused by high disk utilization.</p>|warning|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Checkpoint buffer utilization > 80%|<p>Checkpoint buffer utilization is high. Threads will be throttled to avoid buffer overflow. It can be caused by high disk utilization.</p>|high|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Data region utilization > 80%|<p>Data region utilization is high. Increase data region size or delete any data.</p>|warning|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Data region utilization > 90%|<p>Data region utilization is high. Increase data region size or delete any data.</p>|average|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Data region utilization > 95%|<p>Data region utilization is high. Increase data region size or delete any data.</p>|high|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Node started to evict pages|<p>You store more data then region can accommodate. Data started to move to disk it can make requests work slower.</p>|information|
|{#JMXIGNITEINSTANCENAME} - There are nodes is not in topology|<p>-</p>|information|
|{#JMXIGNITEINSTANCENAME} - Looks like PME is hung|<p>-</p>|high|
|{#JMXIGNITEINSTANCENAME} - PME on cluster|<p>-</p>|information|
|{#JMXIGNITEINSTANCENAME} - Too long pme|<p>-</p>|warning|
|{#JMXIGNITEINSTANCENAME} - Too many running threads|<p>-</p>|warning|
|{#JMXIGNITEINSTANCENAME} - More then 10 jobs in queue|<p>-</p>|warning|
|{#JMXIGNITEINSTANCENAME} - Node added to topology|<p>-</p>|information|
|{#JMXIGNITEINSTANCENAME} - Server node left the topology|<p>-</p>|warning|
|{#JMXIGNITEINSTANCENAME} - Coordinator has changed|<p>Your coordinator just changed</p>|warning|
|{#JMXIGNITEINSTANCENAME} - StripedExecutor - Too many messages in queue|<p>-</p>|average|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - All entries are in heap|<p>All entries are in heap. Possibly you use eager queries it may cause out of memory exceptions for big caches.</p>|information|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - There are more then 50% rollbacks|<p>-</p>|warning|
|{#JMXIGNITEINSTANCENAME} - {#JMXGROUP} - There is no success transactions for cache|<p>-</p>|average|
|{#JMXIGNITEINSTANCENAME} - {#JMXNAME} - Too many messages in  queue|<p>There are more then 1000 messages in {#JMXNAME} queue</p>|high|
