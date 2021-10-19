# Template Module Linux systemd by Zabbix agent 2

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
|Systemd services discovery|<p>-</p>|`Zabbix agent`|systemd.unit.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|State of service: {#UNIT.NAME}|<p>Description: {#UNIT.DESCRIPTION} Path: {#UNIT.PATH}</p>|`Zabbix agent`|systemd.unit.info["{#UNIT.NAME}"]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Service {#UNIT.NAME} is not running!|<p>Description: {#UNIT.DESCRIPTION} Path: {#UNIT.PATH}</p>|warning|
