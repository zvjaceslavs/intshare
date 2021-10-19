# Asterisk

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
|Asterisk trunks|<p>Finds out number of channels sorted by trunks. Each thunk's name should start with "tru_"</p>|`Zabbix agent`|asterisk.calls.discovery<p>Update: 6;6/1-7,07:55-21:05;30/1-7,00:00-07:54;30/1-7,21:06-23:59</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Calls in {#TRUNK}|<p>-</p>|`Calculated`|asterisk.calls[{#TRUNK}]<p>Update: 6</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Number of calls in {#TRUNK} is {#CALLS}|<p>-</p>|average|
