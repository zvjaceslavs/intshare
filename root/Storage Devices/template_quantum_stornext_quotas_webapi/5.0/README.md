# Template Stornext Quota

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$FSNAME_VALUE_STORNEXT}|<p>-</p>|``|Text macro|
|{$PASSWORD_VALUE_STORNEXT}|<p>-</p>|``|Text macro|
|{$USERNAME_VALUE_STORNEXT}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Quotas|<p>-</p>|`HTTP agent`|snquotas.discovery<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Quota on all filesystems|<p>-</p>|`HTTP agent`|snquotas.onfs.all<p>Update: 30m</p>|
|Used space on fs {#SNQUOTAID}|<p>-</p>|`Calculated`|snquotas.onfs.curSize.percent.[calc,{#SNQUOTAID}]<p>Update: 30m</p>|
|Quota on fs {#SNQUOTAID} Current Size|<p>-</p>|`Dependent item`|snquotas.onfs.curSize.[{#SNQUOTAID}]<p>Update: 0</p>|
|Quota on fs {#SNQUOTAID} Grace Period|<p>-</p>|`Dependent item`|snquotas.onfs.gracePeriod.[{#SNQUOTAID}]<p>Update: 0</p>|
|Quota on fs {#SNQUOTAID} Hard Limit|<p>-</p>|`Dependent item`|snquotas.onfs.hardLimit.[{#SNQUOTAID}]<p>Update: 0</p>|
|Quota on fs {#SNQUOTAID} Soft Limit|<p>-</p>|`Dependent item`|snquotas.onfs.softLimit.[{#SNQUOTAID}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Free disk quota is less than 0% on fs {#SNQUOTAID}|<p>-</p>|average|
|Free disk quota is less than 5% on fs {#SNQUOTAID}|<p>-</p>|warning|
