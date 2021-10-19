# Template App Zookeeper

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$ZOO_IP}|<p>-</p>|`127.0.0.1`|Text macro|
|{$ZOO_PORT}|<p>-</p>|`2181`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|zk - $1|<p>Maximum number of file descriptors allowed for the ZooKeeper process.</p>|`Dependent item`|zookeeper[Max File Descriptor Count]<p>Update: 0</p>|
|zk - $1|<p>Number of ZooKeeper network packets sent by second</p>|`Dependent item`|zookeeper[Packets Sent / second]<p>Update: 0</p>|
|zk - $1|<p>Number of file descriptors open by the ZooKeeper process.</p>|`Dependent item`|zookeeper[Open File Descriptor Count]<p>Update: 0</p>|
|zk - $1|<p>-</p>|`Dependent item`|zookeeper[Server State]<p>Update: 0</p>|
|zk - $1|<p>Number of ZooKeeper network packets received by second</p>|`Dependent item`|zookeeper[Packets Received / second]<p>Update: 0</p>|
|zk - $1|<p>zk_znode_count is the total count of znodes stored in the ZooKeeper ensemble. Every time a client creates a new znode, this counter will increment. Every time a client deletes a new znode (either explicitly or by dropping its ephemeral znodes after disconnection), this counter will decrement.</p>|`Dependent item`|zookeeper[Znode Count]<p>Update: 0</p>|
|zk - $1|<p>Minimum latency</p>|`Dependent item`|zookeeper[Latency (min)]<p>Update: 0</p>|
|zk - $1|<p>Number of connections to ZooKeeper that are currently alive.</p>|`Dependent item`|zookeeper[Alive Connections]<p>Update: 0</p>|
|zk - $1|<p>Average latency between ensemble hosts</p>|`Dependent item`|zookeeper[Latency (avg)]<p>Update: 0</p>|
|zk - $1|<p>Maximum latency</p>|`Dependent item`|zookeeper[Latency (max)]<p>Update: 0</p>|
|zk - $1|<p>zk_approximate_data_size is the approximate memory consumption for all znodes stored in the ZooKeeper ensemble</p>|`Dependent item`|zookeeper[Approximate Data Size]<p>Update: 0</p>|
|zk - $1|<p>-</p>|`Zabbix agent (active)`|echo2nc[mntr,{$ZOO_IP},{$ZOO_PORT}]<p>Update: 5m</p>|
|zk - $1|<p>-</p>|`Zabbix agent (active)`|echo2nc[ruok,{$ZOO_IP},{$ZOO_PORT}]<p>Update: 1m</p>|
|zk - $1|<p>Number of outstanding requests that need to be processed by the cluster.</p>|`Dependent item`|zookeeper[Outstanding requests]<p>Update: 0</p>|
|zk - $1|<p>Number of watches currently set on the local ZooKeeper process.</p>|`Dependent item`|zookeeper[Watch Count]<p>Update: 0</p>|
|zk - $1|<p>-</p>|`Dependent item`|zookeeper[Version]<p>Update: 0</p>|
|zk - $1|<p>Number of ephemeral znodes.</p>|`Dependent item`|zookeeper[Ephemerals Count]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|zk - Node have no alive connection|<p>-</p>|average|
|zk - Node is not OK|<p>{ITEM.VALUE}</p>|high|
|zk - Node State change to {ITEM.VALUE}|<p>-</p>|information|
|zk - Open File Descriptor near the Max File Descriptor|<p>Open File Descriptor Count: {ITEM.VALUE1} Max File Descriptor Count: {ITEM.VALUE2}</p>|average|
