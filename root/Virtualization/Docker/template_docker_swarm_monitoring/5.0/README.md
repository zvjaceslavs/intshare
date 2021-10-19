# Template App Docker swarm

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CERT_FNAME}|<p>-</p>|`dclient-cert.pem`|Text macro|
|{$KEY_FNAME}|<p>-</p>|`dclient-key.pem`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Docker swarm services discovery|<p>-</p>|`HTTP agent`|docker.swarm.services.lld<p>Update: 5m</p>|
|Docker swarm nodes discovery|<p>-</p>|`HTTP agent`|docker.swarm.nodes.lld<p>Update: 1h</p>|
|Docker swarm containers discovery|<p>-</p>|`HTTP agent`|docker.containers.lld<p>Update: 10m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Docker swarm nodes raw|<p>-</p>|`HTTP agent`|docker.swarm.nodes.raw<p>Update: 1m</p>|
|Docker swarm updated at|<p>-</p>|`Dependent item`|docker.swarm.updated_at<p>Update: 0</p>|
|Docker swarm managers nodes|<p>-</p>|`Dependent item`|docker.swarm.nodes.manager<p>Update: 0</p>|
|Docker swarm nodes|<p>-</p>|`Dependent item`|docker.swarm.nodes.total<p>Update: 0</p>|
|Docker swarm tasks raw info|<p>-</p>|`HTTP agent`|docker.swarm.tasks.raw.info<p>Update: 1m</p>|
|Docker swarm ready nodes|<p>-</p>|`Dependent item`|docker.swarm.nodes.ready<p>Update: 0</p>|
|Docker swarm raw info|<p>-</p>|`HTTP agent`|docker.swarm.info.raw<p>Update: 1m</p>|
|Docker swarm services raw|<p>-</p>|`HTTP agent`|docker.swarm.services.raw<p>Update: 5m</p>|
|Docker swarm leader node|<p>-</p>|`Dependent item`|docker.swarm.nodes.leader<p>Update: 0</p>|
|Docker swarm uptime {#SERVICE}|<p>-</p>|`Dependent item`|docker.swarm.service.uptime[{#SERVICE}]<p>Update: 0</p>|
|Docker swarm number running tasks for {#SERVICE}|<p>-</p>|`Dependent item`|docker.swarm.tasks.running[{#SERVICE}]<p>Update: 0</p>|
|Raw data node {#NAME} at {#ADDR}|<p>-</p>|`HTTP agent`|docker.nodes[{#ID}]<p>Update: 5m</p>|
|Node {#NAME} availability|<p>-</p>|`Dependent item`|docker.node.availability[{#ID}]<p>Update: 0</p>|
|Node {#NAME} engine version|<p>-</p>|`Dependent item`|docker.node.engine_version[{#ID}]<p>Update: 0</p>|
|Node {#NAME} manager status|<p>-</p>|`Dependent item`|docker.node.manager_status[{#ID}]<p>Update: 0</p>|
|Node {#NAME} resources CPUs|<p>-</p>|`Dependent item`|docker.node.resources.cpu[{#ID}]<p>Update: 0</p>|
|Node {#NAME} resources memory|<p>-</p>|`Dependent item`|docker.node.resources.mem[{#ID}]<p>Update: 0</p>|
|Node {#NAME} role|<p>-</p>|`Dependent item`|docker.node.role[{#ID}]<p>Update: 0</p>|
|Node {#NAME} status|<p>-</p>|`Dependent item`|docker.node.status[{#ID}]<p>Update: 0</p>|
|{#NAME} CPU load %|<p>-</p>|`Calculated`|docker.container.cpu_load[{#ID}]<p>Update: 1m</p>|
|Raw data container stats {#NAME}|<p>-</p>|`HTTP agent`|docker.container.stats[{#ID}]<p>Update: 1m</p>|
|Raw data container info {#NAME}|<p>-</p>|`HTTP agent`|docker.container[{#ID}]<p>Update: 5m</p>|
|{#NAME} CPU usage|<p>-</p>|`Dependent item`|docker.container.cpu[{#ID}]<p>Update: 0</p>|
|{#NAME} CPU number|<p>-</p>|`Dependent item`|docker.container.cpu_num[{#ID}]<p>Update: 0</p>|
|{#NAME} Mem usage|<p>-</p>|`Dependent item`|docker.container.mem[{#ID}]<p>Update: 0</p>|
|{#NAME} CPU system usage|<p>-</p>|`Dependent item`|docker.container.system_cpu[{#ID}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Docker swarm leader node changed|<p>-</p>|high|
|Docker swarm ready nodes changed|<p>-</p>|high|
|Docker swarm no info last 5 min|<p>-</p>|high|
|Docker swarm updated service {#SERVICE}|<p>-</p>|warning|
|Docker swarm no running tasks for {#SERVICE}|<p>-</p>|average|
|Docker swarm no running tasks for {#SERVICE} changed|<p>-</p>|average|
