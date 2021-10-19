# Template JMX Wildlfy

## Description

Install and info: https://github.com/hermanekt/Zabbix_wildfly_eap_jboss_monitoring https://share.zabbix.com/official-templates/wildfly-eap-jboss-discovery Version 1.2

## Overview

This is auto Discovery template for monitoring Wildfly, EAP, Jboss servers
==========================================================================


**Install instruction: https://github.com/hermanekt/Zabbix\_wildfly\_eap\_jboss\_monitoring/**


Static item:



```
JMX Wildfly Memory
JMX Wildfly Runtime
JMX Wildfly Threading
JMX Wildlfy Classes
JMX Wildlfy Server
```

Discovery:



```
Datasource JDBC
Datasource POOL
Garbage Collector
Memory Pool
Server
```


## Author

Tomas Hermanek

## Macros used

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
|Garbage Collector|<p>-</p>|`JMX agent`|jmx.get[beans,"*:type=GarbageCollector,name=*"]<p>Update: 30m</p>|
|Memory Pool|<p>-</p>|`JMX agent`|jmx.get[beans,"*:type=MemoryPool,name=*"]<p>Update: 30m</p>|
|Datasource JDBC|<p>-</p>|`JMX agent`|jmx.get[beans,"jboss.as:subsystem=datasources,data-source=*,statistics=jdbc"]<p>Update: 30m</p>|
|Datasource POOL|<p>-</p>|`JMX agent`|jmx.get[beans,"jboss.as:subsystem=datasources,data-source=*,statistics=pool"]<p>Update: 30m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",ThreadCount]<p>Update: 1m</p>|
|Peak Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",PeakThreadCount]<p>Update: 1m</p>|
|Daemon Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",DaemonThreadCount]<p>Update: 1m</p>|
|Max File Descriptor Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",MaxFileDescriptorCount]<p>Update: 1h</p>|
|jvm Vendor|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",VmVendor]<p>Update: 1h</p>|
|jvm Name|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",VmName]<p>Update: 1h</p>|
|Process CPU Load|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",ProcessCpuLoad]<p>Update: 1m</p>|
|Non-Heap Memory used|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.used]<p>Update: 1m</p>|
|Heap Memory used|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.used]<p>Update: 1m</p>|
|Heap Memory max|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.max]<p>Update: 1h</p>|
|Total Loaded Class Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=ClassLoading",TotalLoadedClassCount]<p>Update: 1m</p>|
|Wildfly monitoring interface|<p>-</p>|`Simple check`|net.tcp.service[tcp,,4447]<p>Update: 30s</p>|
|Loaded Class Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=ClassLoading",LoadedClassCount]<p>Update: 1m</p>|
|Object Pending Finalization Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",ObjectPendingFinalizationCount]<p>Update: 1m</p>|
|Heap Memory committed|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.committed]<p>Update: 1m</p>|
|Unloaded Class Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=ClassLoading",UnloadedClassCount]<p>Update: 1m</p>|
|Java Version|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",SpecVersion]<p>Update: 1h</p>|
|Wildfly Web application interface|<p>-</p>|`Simple check`|net.tcp.service[http,,8080]<p>Update: 30s</p>|
|jvm Uptime|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",Uptime]<p>Update: 1m</p>|
|Open File Descriptor Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",OpenFileDescriptorCount]<p>Update: 1m</p>|
|Non-Heap Memory max|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.max]<p>Update: 1h</p>|
|Non-Heap Memory committed|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.committed]<p>Update: 1m</p>|
|jvm Version|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",VmVersion]<p>Update: 1h</p>|
|Total Started Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",TotalStartedThreadCount]<p>Update: 1m</p>|
|Domain host (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},host]<p>Update: 30s</p>|
|Release Codename (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},releaseCodename]<p>Update: 30s</p>|
|Suspend State (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},suspendState]<p>Update: 30s</p>|
|Server State (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},serverState]<p>Update: 30s</p>|
|Server Group (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},serverGroup]<p>Update: 30s</p>|
|Schema Locations (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},schemaLocations]<p>Update: 30s</p>|
|Runtime Configuration State (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},runtimeConfigurationState]<p>Update: 30s</p>|
|Running Mode (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},runningMode]<p>Update: 30s</p>|
|Release Version (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},releaseVersion]<p>Update: 30s</p>|
|Profile Name (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},profileName]<p>Update: 30s</p>|
|Launch type (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},launchType]<p>Update: 30s</p>|
|Product Version (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},productVersion]<p>Update: 30s</p>|
|Product Name (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},productName]<p>Update: 30s</p>|
|Process Type (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},processType]<p>Update: 30s</p>|
|Hostname (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},name]<p>Update: 30s</p>|
|Namespaces (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},namespaces]<p>Update: 30s</p>|
|Management Minor Version (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},managementMinorVersion]<p>Update: 30s</p>|
|Management Micro Version (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},managementMicroVersion]<p>Update: 30s</p>|
|Management Major Version (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},managementMajorVersion]<p>Update: 30s</p>|
|UUID (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},uuid]<p>Update: 30s</p>|
|{#JMXNAME} Collections (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},CollectionCount]<p>Update: 60s</p>|
|{#JMXNAME} Total time spent (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},CollectionTime]<p>Update: 60s</p>|
|{#JMXNAME} committed (LLD)|<p>-</p>|`JMX agent`|jmx[{#JMXOBJ},Usage.committed]<p>Update: 30s</p>|
|{#JMXNAME} max (LLD)|<p>-</p>|`JMX agent`|jmx[{#JMXOBJ},Usage.max]<p>Update: 30s</p>|
|{#JMXNAME} used (LLD)|<p>-</p>|`JMX agent`|jmx[{#JMXOBJ},Usage.used]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Access Count (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheAccessCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Add Count (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheAddCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Current Size (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheCurrentSize]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Delete Count (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheDeleteCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Hit Count (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheHitCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} Cache Miss Count (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},PreparedStatementCacheMissCount]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} ActiveCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},ActiveCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAPrepareMaxTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAPrepareMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XACommitTotalTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XACommitTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAEndAverageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAEndAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAEndCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAEndCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAEndMaxTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAEndMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAEndTotalTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAEndTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAForgetAverageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAForgetAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAForgetCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAForgetCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAForgetMaxTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAForgetMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAForgetTotalTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAForgetTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAPrepareAverageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAPrepareAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAPrepareCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAPrepareCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAPrepareTotalTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAPrepareTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XACommitCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XACommitCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARecoverAverageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARecoverAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARecoverCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARecoverCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARecoverMaxTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARecoverMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARecoverTotalTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARecoverTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARollbackAverageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARollbackAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARollbackCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARollbackCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARollbackMaxTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARollbackMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XARollbackTotalTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XARollbackTotalTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAStartAverageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAStartAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAStartCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAStartCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAStartMaxTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAStartMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XACommitMaxTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XACommitMaxTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XACommitAverageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XACommitAverageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AvailableCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AvailableCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxGetTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxGetTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AverageBlockingTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AverageBlockingTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AverageCreationTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AverageCreationTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AverageGetTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AverageGetTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AveragePoolTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AveragePoolTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} AverageUsageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},AverageUsageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} BlockingFailureCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},BlockingFailureCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} CreatedCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},CreatedCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} DestroyedCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},DestroyedCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} IdleCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},IdleCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} InUseCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},InUseCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxCreationTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxCreationTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxPoolTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxPoolTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} WaitCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},WaitCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxUsageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxUsageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxUsedCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxUsedCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxWaitCount (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxWaitCount]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} MaxWaitTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},MaxWaitTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} statisticsEnabled (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},statisticsEnabled]<p>Update: 30s</p>|
|{#JMXDATA_SOURCE} TimedOut (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TimedOut]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalBlockingTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalBlockingTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalCreationTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalCreationTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalGetTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalGetTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalPoolTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalPoolTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} TotalUsageTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},TotalUsageTime]<p>Update: 30</p>|
|{#JMXDATA_SOURCE} XAStartTotalTime (LLD)|<p>{#JMXDESC}</p>|`JMX agent`|jmx[{#JMXOBJ},XAStartTotalTime]<p>Update: 30</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|The name of the managed domain host that is responsible for managing this server is changed. {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},host].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Server profile has ben changed|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},profileName].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Server need to be restart for configuration change.|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},runtimeConfigurationState].str(ok)}=0</p><p>**Recovery expression**: </p>|high|
|Server Group is changed!|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},serverGroup].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Server controller need to be restart for configuration change.|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},serverState].str(running)}=0</p><p>**Recovery expression**: </p>|high|
|Concurrent {#JMXNAME} in fire fighting mode on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},CollectionCount].last(0)}<{Template JMX Wildlfy:jmx[{#JMXOBJ},CollectionCount].last(0)}</p><p>**Recovery expression**: </p>|average|
|Datasource {#JMXDATA_SOURCE} cache hit is too low!|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},PreparedStatementCacheAccessCount].last(0)}<({Template JMX Wildlfy:jmx[{#JMXOBJ},PreparedStatementCacheHitCount].last(0)}*0.5)</p><p>**Recovery expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},PreparedStatementCacheAccessCount].last(0)}>({Template JMX Wildlfy:jmx[{#JMXOBJ},PreparedStatementCacheHitCount].last(0)}*0.6)</p>|warning|
|Datasource {#JMXDATA_SOURCE} 90% connection is in use {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},InUseCount].last(0)}>({Template JMX Wildlfy:jmx[{#JMXOBJ},AvailableCount].last(0)}*0.9)</p><p>**Recovery expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},InUseCount].last(0)}<({Template JMX Wildlfy:jmx[{#JMXOBJ},AvailableCount].last(0)}*0.7)</p>|disaster|
|Datasource {#JMXDATA_SOURCE} have no active connection on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},ActiveCount].last(300)}=0</p><p>**Recovery expression**: </p>|disaster|
|Datasource {#JMXDATA_SOURCE} monitoring statistic is not enabled!|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},statisticsEnabled].str(true)}=0</p><p>**Recovery expression**: </p>|information|
|Datasource {#JMXDATA_SOURCE} connection is timeout on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},TimedOut].diff(300)}>0</p><p>**Recovery expression**: </p>|disaster|
|Datasource {#JMXDATA_SOURCE} connection is waiting on {HOST.NAME}|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},WaitCount].avg(300)}>0</p><p>**Recovery expression**: </p>|high|
|The name of the managed domain host that is responsible for managing this server is changed. {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},host].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Server profile has ben changed (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},profileName].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Server need to be restart for configuration change. (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},runtimeConfigurationState].str(ok)}=0</p><p>**Recovery expression**: </p>|high|
|Server Group is changed! (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},serverGroup].diff(0)}>0</p><p>**Recovery expression**: </p>|information|
|Server controller need to be restart for configuration change. (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},serverState].str(running)}=0</p><p>**Recovery expression**: </p>|high|
|Concurrent {#JMXNAME} in fire fighting mode on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},CollectionCount].last(0)}<{Template JMX Wildlfy:jmx[{#JMXOBJ},CollectionCount].last(0)}</p><p>**Recovery expression**: </p>|average|
|Datasource {#JMXDATA_SOURCE} cache hit is too low! (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},PreparedStatementCacheAccessCount].last(0)}<({Template JMX Wildlfy:jmx[{#JMXOBJ},PreparedStatementCacheHitCount].last(0)}*0.5)</p><p>**Recovery expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},PreparedStatementCacheAccessCount].last(0)}>({Template JMX Wildlfy:jmx[{#JMXOBJ},PreparedStatementCacheHitCount].last(0)}*0.6)</p>|warning|
|Datasource {#JMXDATA_SOURCE} 90% connection is in use {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},InUseCount].last(0)}>({Template JMX Wildlfy:jmx[{#JMXOBJ},AvailableCount].last(0)}*0.9)</p><p>**Recovery expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},InUseCount].last(0)}<({Template JMX Wildlfy:jmx[{#JMXOBJ},AvailableCount].last(0)}*0.7)</p>|disaster|
|Datasource {#JMXDATA_SOURCE} have no active connection on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},ActiveCount].last(300)}=0</p><p>**Recovery expression**: </p>|disaster|
|Datasource {#JMXDATA_SOURCE} monitoring statistic is not enabled! (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},statisticsEnabled].str(true)}=0</p><p>**Recovery expression**: </p>|information|
|Datasource {#JMXDATA_SOURCE} connection is timeout on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},TimedOut].diff(300)}>0</p><p>**Recovery expression**: </p>|disaster|
|Datasource {#JMXDATA_SOURCE} connection is waiting on {HOST.NAME} (LLD)|<p>-</p>|<p>**Expression**: {Template JMX Wildlfy:jmx[{#JMXOBJ},WaitCount].avg(300)}>0</p><p>**Recovery expression**: </p>|high|
