# Cisco AXL DataBase Replication status

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
|API PerfmonRequet State of Replication|<p>-</p>|`HTTP agent`|ucdbreplication<p>Update: 30s</p>|
|DB Replication State|<p>-</p>|`Dependent item`|dbrepstate<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|DB replication fail !!!|<p>-</p>|disaster|
