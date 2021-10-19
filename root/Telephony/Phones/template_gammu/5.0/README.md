# 16TemplateGammuSMS

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
|smsd_sentitems|<p>-</p>|`Database monitor`|db.odbc.select[smsd_sentitems,smsd]<p>Update: 1m</p>|
|smsd_outbox|<p>-</p>|`Database monitor`|db.odbc.select[smsd_outbox,smsd]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Gammu Outbox Overflow|<p>-</p>|average|
