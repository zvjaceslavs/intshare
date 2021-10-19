# Template App PHP-FPM

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$HOST.PHPFPM}|<p>-</p>|`127.0.0.1:8080`|Text macro|
|{$PROTO}|<p>-</p>|`http`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|PHP-FPM Pools Discovery|<p>-</p>|`Zabbix agent`|php-fpm.discover_pools<p>Update: 120s</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Memory Used by Pool {#POOLNAME}|<p>-</p>|`Zabbix agent`|proc.mem["php-fpm: pool {#POOLNAME}",,,,pmem]<p>Update: 120s</p>|
|PHP-FPM Pool {#POOLNAME} status page|<p>-</p>|`HTTP agent`|php-fpm.status[{#POOLNAME}]<p>Update: 60s</p>|
|Process for pool {#POOLNAME}|<p>-</p>|`Zabbix agent`|proc.num["php-fpm: pool {#POOLNAME}"]<p>Update: 60s</p>|
|PHP-FPM ({#POOLNAME}): Accepted Connections Per Second|<p>The number of incoming requests per second that the pool has accepted; when a connection is accepted it is removed from the listen queue (displayed in real time).</p>|`Dependent item`|php-fpm.accepted_conn[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Active Processes|<p>The number of servers current processing a page - the minimum is 1 (so even on a fully idle server, the result will be not read 0).</p>|`Dependent item`|php-fpm.active_processes[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Listen Queue|<p>The current number of connections that have been initiated, but not yet accepted. If this value is non-zero it typically means that all the available server processes are currently busy, and there are no processes available to serve the next request. Raising pm.max_children (provided the server can handle it) should help keep this number low. This property follows from the fact that PHP-FPM listens via a socket (TCP or file based), and thus inherits some of the characteristics of sockets.</p>|`Dependent item`|php-fpm.listen_queue[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Listen Queue Len|<p>The upper limit on the number of connections that will be queued. Once this limit is reached, subsequent connections will either be refused, or ignored. This value is set by the php-fpm per pool configuration option 'listen.backlog', which defaults to -1 (unlimited). However, this value is also limited by the system (sysctl) value 'net.core.somaxconn', which defaults to 128 on many Linux systems.</p>|`Dependent item`|php-fpm.listen_queue_len[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Max Active Processes|<p>The highest value that 'active processes' has reached since the php-fpm server started. This value should not exceed pm.max_children.</p>|`Dependent item`|php-fpm.max_active_processes[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Max Children Reached|<p>The number of times that pm.max_children has been reached since the php-fpm pool started (only applicable if the process manager is ondemand or dynamic).</p>|`Dependent item`|php-fpm.max_children_reached[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Max Listen Queue|<p>The maximum number of requests in the queue of pending connections since this FPM pool has started.</p>|`Dependent item`|php-fpm.max_listen_queue[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Pool Name|<p>The name of this pool.</p>|`Dependent item`|php-fpm.pool[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Process Manager|<p>The method used by the process manager to control the number of child processes (possible values: ondemand, dynamic or static) for this pool.</p>|`Dependent item`|php-fpm.process_manager[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Slow Requests|<p>The number of requests that exceeded your request_slowlog_timeout value.</p>|`Dependent item`|php-fpm.slow_requests[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Start Since|<p>How long has this pool been running.</p>|`Dependent item`|php-fpm.start_since[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Start Time|<p>The time when this pool was started.</p>|`Dependent item`|php-fpm.start_time[{#POOLNAME}]<p>Update: 0</p>|
|PHP-FPM ({#POOLNAME}): Total Processes|<p>The total number of server processes currently running; the sum of idle processes + active processes. If the process manager is static, this number will match pm.max_children.</p>|`Dependent item`|php-fpm.total_processes[{#POOLNAME}]<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

