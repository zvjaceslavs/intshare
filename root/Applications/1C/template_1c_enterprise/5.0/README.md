# Template 1C Enterprise

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
|Infobases|<p>-</p>|`Zabbix agent`|1cEnt.infobases<p>Update: 2m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Infobase sessions {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Zabbix agent`|1cEnt.sessions[{#INFOBASE},{#CLUSTER}]<p>Update: 5m</p>|
|Total sessions in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Calculated`|1cEnt.sessions.totalSessions[{#INFOBASE}, {#CLUSTER}]<p>Update: 5m</p>|
|Background jobs in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.bjobs[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
|Blocked objects by DBMS in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.blocked-by-dbms[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
|Data in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.bytes-all[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
|COM connections in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.comconn[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
|Block duration in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.db-proc-took[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
|Designer clients in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.designers[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
|Thick clients in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.thickClient[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
|Thin clients in {#NAME}, cluster {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.thinClient[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
|Web clients in {#NAME}, {#CLUSTER_NAME}|<p>-</p>|`Dependent item`|1cEnt.sessions.webclients[{#INFOBASE}, {#CLUSTER}]<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

