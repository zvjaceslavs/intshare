# Template_VNX_monitoring_and_reporting

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
|Database|<p>-</p>|`Zabbix agent`|proc.num[,vnx,,/opt/VNX/Databases/MySQL/Default/bin/mysqld]<p>Update: 30s</p>|
|Backend|<p>-</p>|`Zabbix agent`|proc.num[java,vnx,,APG-Backend]<p>Update: 30s</p>|
|Scheduler|<p>-</p>|`Zabbix agent`|proc.num[java,vnx,,com.watch4net.apg.scheduler.Bootstrap]<p>Update: 30s</p>|
|Alerting|<p>-</p>|`Zabbix agent`|proc.num[java,vnx,,com.watch4net.alerting.engine.AlertingEngine]<p>Update: 30s</p>|
|Web Portal|<p>-</p>|`Zabbix agent`|proc.num[java,vnx,,Web-Servers]<p>Update: 30s</p>|
|Topology|<p>-</p>|`Zabbix agent`|proc.num[java,vnx,,com.emc.srm.topology.TopoServiceApp]<p>Update: 30s</p>|
|Collecting|<p>-</p>|`Zabbix agent`|proc.num[java,vnx,,com.watch4net.apg.v2.collector.Bootstrap]<p>Update: 30s</p>|
|Event processing|<p>-</p>|`Zabbix agent`|proc.num[java,vnx,,com.watch4net.events.processing.manager.Bootstrap]<p>Update: 30s</p>|
|Topology Mapping|<p>-</p>|`Zabbix agent`|proc.num[java,vnx,,com.emc.srm.topology.processor.TopoMappingServiceApp]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Alerting is not running on {HOST.NAME}|<p>-</p>|average|
|Backend  is not running on {HOST.NAME}|<p>-</p>|average|
|Collecting is not running on {HOST.NAME}|<p>-</p>|average|
|Database is not running on {HOST.NAME}|<p>-</p>|average|
|Event Processing is not running on {HOST.NAME}|<p>-</p>|average|
|Scheduler is not running on {HOST.NAME}|<p>-</p>|average|
|Topology is not running on {HOST.NAME}|<p>-</p>|average|
|Topology Mapping is not running on {HOST.NAME}|<p>-</p>|average|
|Web Portal is not running on {HOST.NAME}|<p>-</p>|average|
