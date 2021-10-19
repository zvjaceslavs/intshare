# Template JMX Wildlfy

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$JMX.PROTOCOL}|<p>-</p>|`remote`|Text macro|
|{$WILDFLY.PASS}|<p>-</p>|`heslo`|Text macro|
|{$WILDFLY.USER}|<p>-</p>|`zabbix`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Server|<p>-</p>|`JMX agent`|jmx.get[attributes,"jboss.as:management-root=server,*"]<p>Update: 30m</p>|
|Datasource JDBC|<p>-</p>|`JMX agent`|jmx.get[beans,"jboss.as:subsystem=datasources,data-source=*,statistics=jdbc"]<p>Update: 30m</p>|
|Datasource POOL|<p>-</p>|`JMX agent`|jmx.get[beans,"jboss.as:subsystem=datasources,data-source=*,statistics=pool"]<p>Update: 30m</p>|
|Garbage Collector|<p>-</p>|`JMX agent`|jmx.get[beans,"*:type=GarbageCollector,name=*"]<p>Update: 30m</p>|
|Memory Pool|<p>-</p>|`JMX agent`|jmx.get[beans,"*:type=MemoryPool,name=*"]<p>Update: 30m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Loaded Class Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=ClassLoading",LoadedClassCount]<p>Update: 1m</p>|
|Total Loaded Class Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=ClassLoading",TotalLoadedClassCount]<p>Update: 1m</p>|
|Unloaded Class Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=ClassLoading",UnloadedClassCount]<p>Update: 1m</p>|
|Heap Memory committed|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.committed]<p>Update: 1m</p>|
|Heap Memory max|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.max]<p>Update: 1h</p>|
|Heap Memory used|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.used]<p>Update: 1m</p>|
|Non-Heap Memory committed|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.committed]<p>Update: 1m</p>|
|Non-Heap Memory max|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.max]<p>Update: 1h</p>|
|Non-Heap Memory used|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.used]<p>Update: 1m</p>|
|Object Pending Finalization Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",ObjectPendingFinalizationCount]<p>Update: 1m</p>|
|Max File Descriptor Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",MaxFileDescriptorCount]<p>Update: 1h</p>|
|Open File Descriptor Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",OpenFileDescriptorCount]<p>Update: 1m</p>|
|Process CPU Load|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",ProcessCpuLoad]<p>Update: 1m</p>|
|Java Version|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",SpecVersion]<p>Update: 1h</p>|
|jvm Uptime|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",Uptime]<p>Update: 1m</p>|
|jvm Name|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",VmName]<p>Update: 1h</p>|
|jvm Vendor|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",VmVendor]<p>Update: 1h</p>|
|jvm Version|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",VmVersion]<p>Update: 1h</p>|
|Daemon Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",DaemonThreadCount]<p>Update: 1m</p>|
|Peak Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",PeakThreadCount]<p>Update: 1m</p>|
|Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",ThreadCount]<p>Update: 1m</p>|
|Total Started Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",TotalStartedThreadCount]<p>Update: 1m</p>|
|Wildfly Web application interface|<p>-</p>|`Simple check`|net.tcp.service[http,,8080]<p>Update: 30s</p>|
|Wildfly monitoring interface|<p>-</p>|`Simple check`|net.tcp.service[tcp,,4447]<p>Update: 30s</p>|
|Domain host|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},host]<p>Update: 30s</p>|
|Release Codename|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},releaseCodename]<p>Update: 30s</p>|
|Suspend State|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},suspendState]<p>Update: 30s</p>|
|Server State|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},serverState]<p>Update: 30s</p>|
|Server Group|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},serverGroup]<p>Update: 30s</p>|
|Schema Locations|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},schemaLocations]<p>Update: 30s</p>|
|Runtime Configuration State|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},runtimeConfigurationState]<p>Update: 30s</p>|
|Running Mode|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},runningMode]<p>Update: 30s</p>|
|Release Version|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},releaseVersion]<p>Update: 30s</p>|
|Profile Name|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},profileName]<p>Update: 30s</p>|
|Launch type|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},launchType]<p>Update: 30s</p>|
|Product Version|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},productVersion]<p>Update: 30s</p>|
|Product Name|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},productName]<p>Update: 30s</p>|
|Process Type|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},processType]<p>Update: 30s</p>|
|Hostname|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},name]<p>Update: 30s</p>|
|Namespaces|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},namespaces]<p>Update: 30s</p>|
|Management Minor Version|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},managementMinorVersion]<p>Update: 30s</p>|
|Management Micro Version|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},managementMicroVersion]<p>Update: 30s</p>|
|Management Major Version|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},managementMajorVersion]<p>Update: 30s</p>|
|UUID|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},uuid]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Access Count|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheAccessCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Add Count|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheAddCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Current Size|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheCurrentSize]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Delete Count|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheDeleteCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Hit Count|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheHitCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Miss Count|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheMissCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} ActiveCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},ActiveCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAPrepareMaxTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAPrepareMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XACommitTotalTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XACommitTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAEndAverageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAEndAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAEndCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAEndCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAEndMaxTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAEndMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAEndTotalTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAEndTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAForgetAverageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAForgetAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAForgetCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAForgetCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAForgetMaxTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAForgetMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAForgetTotalTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAForgetTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAPrepareAverageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAPrepareAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAPrepareCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAPrepareCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAPrepareTotalTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAPrepareTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XACommitCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XACommitCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARecoverAverageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARecoverAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARecoverCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARecoverCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARecoverMaxTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARecoverMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARecoverTotalTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARecoverTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARollbackAverageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARollbackAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARollbackCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARollbackCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARollbackMaxTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARollbackMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARollbackTotalTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARollbackTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAStartAverageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAStartAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAStartCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAStartCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAStartMaxTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAStartMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XACommitMaxTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XACommitMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XACommitAverageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XACommitAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AvailableCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AvailableCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxGetTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxGetTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AverageBlockingTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AverageBlockingTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AverageCreationTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AverageCreationTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AverageGetTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AverageGetTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AveragePoolTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AveragePoolTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AverageUsageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AverageUsageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} BlockingFailureCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},BlockingFailureCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} CreatedCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},CreatedCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} DestroyedCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},DestroyedCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} IdleCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},IdleCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} InUseCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},InUseCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxCreationTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxCreationTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxPoolTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxPoolTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} WaitCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},WaitCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxUsageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxUsageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxUsedCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxUsedCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxWaitCount|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxWaitCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxWaitTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxWaitTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} statisticsEnabled|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},statisticsEnabled]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} TimedOut|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TimedOut]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalBlockingTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalBlockingTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalCreationTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalCreationTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalGetTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalGetTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalPoolTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalPoolTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalUsageTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalUsageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAStartTotalTime|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAStartTotalTime]<p>Update: 30</p>|
|{#JMXNAME} Collections|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},CollectionCount]<p>Update: 60s</p>|
|{#JMXNAME} Total time spent|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},CollectionTime]<p>Update: 60s</p>|
|{#JMXNAME} committed|<p>-</p>|`JMX agent`|jmx[{#JMXOBJ},Usage.committed]<p>Update: 30s</p>|
|{#JMXNAME} max|<p>-</p>|`JMX agent`|jmx[{#JMXOBJ},Usage.max]<p>Update: 30s</p>|
|{#JMXNAME} used|<p>-</p>|`JMX agent`|jmx[{#JMXOBJ},Usage.used]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|70% Heap Memory used on {HOST.NAME}|<p>-</p>|average|
|70% Non-Heap Memory used on {HOST.NAME}|<p>-</p>|average|
|70% Opened File Descriptor Count used on {HOST.NAME}|<p>-</p>|average|
|90% Heap Memory used on {HOST.NAME}|<p>-</p>|disaster|
|90% Non-Heap Memory used on {HOST.NAME}|<p>-</p>|disaster|
|90% Opened File Descriptor Count used on {HOST.NAME}|<p>-</p>|disaster|
|Heap Memory fully committed on {HOST.NAME}|<p>-</p>|warning|
|Non-Heap Memory fully committed on {HOST.NAME}|<p>-</p>|warning|
|70% Process CPU Load on {HOST.NAME}|<p>-</p>|average|
|90% Process CPU Load on {HOST.NAME}|<p>-</p>|disaster|
|Wildlfy on {HOST.NAME} has just been restarted|<p>-</p>|information|
|{HOST.NAME} Wildlfy is not reachable|<p>-</p>|disaster|
|{HOST.NAME} runs suboptimal VM type|<p>-</p>|information|
|{HOST.NAME}: Wildfly Application port is down!|<p>-</p>|disaster|
|{HOST.NAME}: Wildfly Monitoring port is down!|<p>-</p>|disaster|
|The name of the managed domain host that is responsible for managing this server is changed. {HOST.NAME}|<p>-</p>|information|
|Server profile has ben changed|<p>-</p>|information|
|Server need to be restart for configuration change.|<p>-</p>|high|
|Server Group is changed!|<p>-</p>|information|
|Server controller need to be restart for configuration change.|<p>-</p>|high|
|Datasource {#JMXDATA_SOURCE} cache hit is too low!|<p>-</p>|warning|
|Datasource {#JMXDATA_SOURCE} 90% connection is in use {HOST.NAME}|<p>-</p>|disaster|
|Datasource {#JMXDATA_SOURCE} have no active connection on {HOST.NAME}|<p>-</p>|disaster|
|Datasource {#JMXDATA_SOURCE} monitoring statistic is not enabled!|<p>-</p>|information|
|Datasource {#JMXDATA_SOURCE} connection is timeout on {HOST.NAME}|<p>-</p>|disaster|
|Datasource {#JMXDATA_SOURCE} connection is waiting on {HOST.NAME}|<p>-</p>|high|
|Concurrent {#JMXNAME} in fire fighting mode on {HOST.NAME}|<p>-</p>|average|
