# AWS CloudWatch via Docker Wrapper

## Description

Monitorizacion de AWS via CloudWatch utilizando un Wrapper desarrollado en NodeJS.

## Overview

Repository for access to Cloudwatch via API REST using AWS-SDK + NodeJS Wrapper. The templatre only use HTTP Agent to recolect all metrics from AWS Cloudwatch.


 


[Git Repo](https://github.com/mobarrio/cloudwatch_wrapper "Git Repo")

## Author

Mariano J. Obarrio Miles

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$API_SERVER}|<p>IP y Puerto en que escucha la API</p>|`http://10.1.2.100:3000`|Text macro|
|{$BASICTOKEN}|<p>Usr: admin Psw: zabbix</p>|`YWRtaW46emFiYml4`|Text macro|
|{$REGION}|<p>Region de AWS</p>|`eu-west-1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Get Credentials|<p>Recupera el Bearer token con el cual podremos acceder a la API</p>|`HTTP agent`|get.bearer.token<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|EC2 CPUUtilization (LLD)|<p>The percentage of CPU utilization. Units: Percent</p>|`HTTP agent`|get.ec2.CPUUtilization[{#ACCOUNT}]<p>Update: 5m</p>|
|ElastiCache CacheHitRate (LLD)|<p>The number of unsuccessful read-only key lookups in the main dictionary. This is derived fromkeyspace_misses statistic at Redis INFO.</p>|`HTTP agent`|get.ElastiCache.CacheHitRate[{#ACCOUNT}]<p>Update: 5m</p>|
|ElastiCache CPUUtilization (LLD)|<p>The percentage of CPU utilization for the entire host. Because Redis is single-threaded, we recommend you monitor EngineCPUUtilization metric for nodes with 4 or more vCPUs.</p>|`HTTP agent`|get.ElastiCache.CPUUtilization[{#ACCOUNT}]<p>Update: 5m</p>|
|ElastiCache CurrConnections (LLD)|<p>The number of client connections, excluding connections from read replicas. ElastiCache uses two to four of the connections to monitor the cluster in each case. This is derived from the connected_clients statistic at Redis INFO.</p>|`HTTP agent`|get.ElastiCache.CurrConnections[{#ACCOUNT}]<p>Update: 5m</p>|
|ElastiCache SwapUsage (LLD)|<p>The amount of swap used on the host.</p>|`HTTP agent`|get.ElastiCache.SwapUsage[{#ACCOUNT}]<p>Update: 5m</p>|
|RDS CPUUtilization (LLD)|<p>The percentage of CPU utilization. Units: Percent</p>|`HTTP agent`|get.rds.CPUUtilization[{#ACCOUNT}]<p>Update: 5m</p>|
|RDS DatabaseConnections (LLD)|<p>The number of database connections in use. The metric value might not include broken database connections that haven't been cleaned up by your database yet. So, the number of database connections recorded by your database might be higher than the metric value. Units: Count</p>|`HTTP agent`|get.rds.DatabaseConnections[{#ACCOUNT}]<p>Update: 5m</p>|
|RDS FreeableMemory (LLD)|<p>"The amount of available random access memory. For MariaDB, MySQL, Oracle, and PostgreSQL DB instances, this metric reports the value of the MemAvailable field of /proc/meminfo. Units: Bytes"</p>|`HTTP agent`|get.rds.FreeableMemory[{#ACCOUNT}]<p>Update: 5m</p>|
|RDS FreeStorageSpace (LLD)|<p>"The amount of available storage space. Units: Bytes"</p>|`HTTP agent`|get.rds.FreeStorageSpace[{#ACCOUNT}]<p>Update: 5m</p>|
|RDS List Metrics (LLD)|<p>-</p>|`HTTP agent`|get.rds.metrics[{#ACCOUNT}]<p>Update: 1d</p>|
|RDS SwapUsage (LLD)|<p>"The amount of swap space used on the DB instance. This metric is not available for SQL Server. Units: Bytes"</p>|`HTTP agent`|get.rds.SwapUsage[{#ACCOUNT}]<p>Update: 5m</p>|
## Triggers

There are no triggers in this template.

