# Template App ActiveMQ JMX

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$AMQ_BROKER_MEM_USAGE_THRESHOLD}|<p>-</p>|`85`|Text macro|
|{$AMQ_BROKER_STORE_USAGE_THRESHOLD}|<p>-</p>|`85`|Text macro|
|{$AMQ_BROKER_TMP_USAGE_THRESHOLD}|<p>-</p>|`85`|Text macro|
|{$BRKNAME}|<p>-</p>|`none`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|mem Object Pending Finalization Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",ObjectPendingFinalizationCount]<p>Update: 1m</p>|
|StorePercentUsage for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",StorePercentUsage]<p>Update: 60</p>|
|th Daemon Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",DaemonThreadCount]<p>Update: 1m</p>|
|TempPercentUsage for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",TempPercentUsage]<p>Update: 60</p>|
|TotalEnqueueCount per minute for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",TotalEnqueueCount]<p>Update: 30s</p>|
|QueueSize for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Destination,brokerName={$BRKNAME}",QueueSize]<p>Update: 60</p>|
|jvm Version|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",VmVersion]<p>Update: 1h</p>|
|ConsumerCount for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Destination,brokerName={$BRKNAME}",ConsumerCount]<p>Update: 60</p>|
|MemoryPercentUsage for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",MemoryPercentUsage]<p>Update: 60</p>|
|ExpiredCount per minute for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Destination,brokerName={$BRKNAME}",ExpiredCount]<p>Update: 30s</p>|
|TotalMessageCount per minute for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",TotalMessageCount]<p>Update: 30s</p>|
|os Open File Descriptor Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",OpenFileDescriptorCount]<p>Update: 1m</p>|
|MemoryLimit for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",MemoryLimit]<p>Update: 3600</p>|
|TotalConsumerCount for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",TotalConsumerCount]<p>Update: 60</p>|
|jvm Uptime|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",Uptime]<p>Update: 1m</p>|
|TempLimit for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",TempLimit]<p>Update: 3600</p>|
|TotalDequeueCount per minute for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",TotalDequeueCount]<p>Update: 30s</p>|
|mem Heap Memory used|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.used]<p>Update: 1m</p>|
|th Peak Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",PeakThreadCount]<p>Update: 1m</p>|
|mem Non-Heap Memory used|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.used]<p>Update: 1m</p>|
|Size of {$BRKNAME} Kaha DB|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME},service=PersistenceAdapter,instanceName=KahaDBPersistenceAdapter[/kahadb_Index_/kahadb]",Size]<p>Update: 60</p>|
|mem Heap Memory max|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.max]<p>Update: 1h</p>|
|mem Heap Memory committed|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",HeapMemoryUsage.committed]<p>Update: 1m</p>|
|ProducerCount for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Destination,brokerName={$BRKNAME}",ProducerCount]<p>Update: 60</p>|
|DequeueCount per minute for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Destination,brokerName={$BRKNAME}",DequeueCount]<p>Update: 30s</p>|
|jvm Name|<p>-</p>|`JMX agent`|jmx["java.lang:type=Runtime",VmName]<p>Update: 1h</p>|
|th Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",ThreadCount]<p>Update: 1m</p>|
|AverageEnqueueTime for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Destination,brokerName={$BRKNAME}",AverageEnqueueTime]<p>Update: 300</p>|
|th Total Started Thread Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=Threading",TotalStartedThreadCount]<p>Update: 1m</p>|
|os Max File Descriptor Count|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",MaxFileDescriptorCount]<p>Update: 1h</p>|
|StoreLimit for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Broker,brokerName={$BRKNAME}",StoreLimit]<p>Update: 3600</p>|
|EnqueueCount per minute for {$BRKNAME}|<p>-</p>|`JMX agent`|jmx["org.apache.activemq:type=Destination,brokerName={$BRKNAME}",EnqueueCount]<p>Update: 30s</p>|
|os Process CPU Load|<p>-</p>|`JMX agent`|jmx["java.lang:type=OperatingSystem",ProcessCpuLoad]<p>Update: 1m</p>|
|mem Non-Heap Memory committed|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.committed]<p>Update: 1m</p>|
|mem Non-Heap Memory max|<p>-</p>|`JMX agent`|jmx["java.lang:type=Memory",NonHeapMemoryUsage.max]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|70% mem Heap Memory used on {HOST.NAME}|<p>-</p>|average|
|70% mem Non-Heap Memory used on {HOST.NAME}|<p>-</p>|average|
|70% os Opened File Descriptor Count used on {HOST.NAME}|<p>-</p>|average|
|70% os Process CPU Load on {HOST.NAME}|<p>-</p>|average|
|mem Heap Memory fully committed on {HOST.NAME}|<p>-</p>|warning|
|mem Non-Heap Memory fully committed on {HOST.NAME}|<p>-</p>|warning|
|MemoryPercentUsage >{$AMQ_BROKER_MEM_USAGE_THRESHOLD}% for broker {$BRKNAME}|<p>-</p>|high|
|StorePercentUsage >{$AMQ_BROKER_STORE_USAGE_THRESHOLD}% for broker {$BRKNAME}|<p>-</p>|high|
|TempPercentUsage >{$AMQ_BROKER_TMP_USAGE_THRESHOLD}% for broker {$BRKNAME}|<p>-</p>|high|
|{HOST.NAME} is not reachable|<p>-</p>|average|
|{HOST.NAME} runs suboptimal VM type|<p>-</p>|information|
