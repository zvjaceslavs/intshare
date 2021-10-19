# WeblogicHealth

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

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|OIMSERVER1|<p>-</p>|`JMX agent`|jmx["com.bea:Name=oim_server1,Type=ServerRuntime","State"]<p>Update: 30s</p>|
|SOASERVER1|<p>-</p>|`JMX agent`|jmx["com.bea:Name=soa_server1,Type=ServerRuntime","State"]<p>Update: 30s</p>|
|SOASERVER2|<p>-</p>|`JMX agent`|jmx["com.bea:Name=soa_server2,Type=ServerRuntime","State"]<p>Update: 30s</p>|
|OIMSERVER1 Leaked Connection Count|<p>-</p>|`JMX agent`|jmx["com.bea:ServerRuntime=oim_server1,Name=ApplicationDB,Type=JDBCConnectionPoolRuntime","LeakedConnectionCount"]<p>Update: 30s</p>|
|OIMSERVER2|<p>-</p>|`JMX agent`|jmx["com.bea:Name=oim_server2,Type=ServerRuntime","State"]<p>Update: 30s</p>|
|OIMSERVER1 Average Connection Count|<p>-</p>|`JMX agent`|jmx["com.bea:ServerRuntime=oim_server1,Name=ApplicationDB,Type=JDBCConnectionPoolRuntime","ActiveConnectionsAverageCount"]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|OIM SERVER 1 Trigger|<p>-</p>|disaster|
|OIM SERVER 2 Trigger|<p>-</p>|disaster|
|SOA Server 1 Trigger|<p>-</p>|disaster|
|SOA Server 2 Trigger|<p>-</p>|disaster|
