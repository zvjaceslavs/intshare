# APC Smart-UPS through apcupsd and ssh

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
|apc device numxfers|<p>-</p>|`Dependent item`|apc_device.numxfers<p>Update: 0</p>|
|apc device serial number|<p>-</p>|`Dependent item`|apc_device.sn<p>Update: 0</p>|
|apc device name|<p>-</p>|`Dependent item`|apc_device.name<p>Update: 0</p>|
|apc device status info|<p>-</p>|`SSH agent`|ssh.run[apc_device.statusinfo]<p>Update: {$UPS_GET_STATUS_PERIOD}</p>|
|apc device model|<p>-</p>|`Dependent item`|apc_device.model<p>Update: 0</p>|
|apc device status|<p>-</p>|`Dependent item`|apc_device.status<p>Update: 0</p>|
|apc battery timeleft|<p>-</p>|`Dependent item`|apc_battery.timeleft<p>Update: 0</p>|
|apc battery charge level|<p>-</p>|`Dependent item`|apc_battery.chargelevel<p>Update: 0</p>|
|apc device info|<p>-</p>|`SSH agent`|ssh.run[apc_device.info]<p>Update: {$UPS_GET_MAININFO_PERIOD}</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|apc status is {ITEM.LASTVALUE} on {HOST.HOST}|<p>-</p>|high|
|apc timeleft is {ITEM.LASTVALUE} on {HOST.HOST}|<p>-</p>|high|
