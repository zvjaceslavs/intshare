# _T_Zbx_Lin_HAPROXY2_stats_Prometheus

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|HAProxy Backend Discover|<p>-</p>|`Dependent item`|haproxy.backend.discovery<p>Update: 0</p>|
|HAProxy Server discovery|<p>-</p>|`Dependent item`|haproxy.server.discovery<p>Update: 0</p>|
|HAProxy Frontend Discover|<p>-</p>|`Dependent item`|haproxy.frontend.discovery<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Haproxy Prometheus Metrics|<p>-</p>|`HTTP agent`|haproxy.prometheus.allmetrics<p>Update: 1m</p>|
|backend  [{#BACKEND_NAME}] active|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,act]<p>Update: 0</p>|
|backend [{#BACKEND_NAME}] backup|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,bck]<p>Update: 0</p>|
|backend  [{#BACKEND_NAME}] backend up-down transitions|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,chkdown]<p>Update: 0</p>|
|backend [{#BACKEND_NAME}] downtime|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,downtime]<p>Update: 0</p>|
|backend [{#BACKEND_NAME}] Number of available servers|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,nb_available_servers_by_backend]<p>Update: 0</p>|
|backend [{#BACKEND_NAME}] Number of servers|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,nb_servers_by_backend]<p>Update: 0</p>|
|backend [{#BACKEND_NAME}] current sessions|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,scur]<p>Update: 0</p>|
|backend [{#BACKEND_NAME}] max sessions|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,smax]<p>Update: 0</p>|
|backend [{#BACKEND_NAME}] status|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},BACKEND,status]<p>Update: 0</p>|
|Server [{#BACKEND_NAME}/{#SERVER_NAME}] backend server up-down transitions|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},{#SERVER_NAME},chkdown]<p>Update: 0</p>|
|Server [{#BACKEND_NAME}/{#SERVER_NAME}] backend server downtime|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},{#SERVER_NAME},downtime]<p>Update: 0</p>|
|Server [{#BACKEND_NAME}/{#SERVER_NAME}] backend server status|<p>-</p>|`Dependent item`|haproxy.stats[{#BACKEND_NAME},{#SERVER_NAME},status]<p>Update: 0</p>|
|frontend [{#FRONTEND_NAME}] current sessions|<p>-</p>|`Dependent item`|haproxy.stats[{#FRONTEND_NAME},FRONTEND,scur]<p>Update: 0</p>|
|frontend [{#FRONTEND_NAME}] session limit|<p>-</p>|`Dependent item`|haproxy.stats[{#FRONTEND_NAME},FRONTEND,slim]<p>Update: 0</p>|
|frontend [{#FRONTEND_NAME}] max sessions|<p>-</p>|`Dependent item`|haproxy.stats[{#FRONTEND_NAME},FRONTEND,smax]<p>Update: 0</p>|
|frontend [{#FRONTEND_NAME}] status|<p>-</p>|`Dependent item`|haproxy.stats[{#FRONTEND_NAME},FRONTEND,status]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Backend {#BACKEND_NAME} is degraded|<p>-</p>|average|
|Backend {#BACKEND_NAME} number of down state change|<p>-</p>|high|
|Backend {#BACKEND_NAME} state is not UP|<p>-</p>|high|
|Frontend {#FRONTEND_NAME} current connexion > 90% of limit|<p>-</p>|average|
|Frontend {#FRONTEND_NAME} current connexion > 95% of limit|<p>-</p>|high|
|Frontend {#FRONTEND_NAME}  state is not OPEN|<p>-</p>|high|
