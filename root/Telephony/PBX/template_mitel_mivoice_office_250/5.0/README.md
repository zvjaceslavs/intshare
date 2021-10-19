# Mitel MiVoice Office 250

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$AWS.PORT}|<p>-</p>|`443`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|License status|<p>MiVO 250 License Status</p>|`Dependent item`|mitel.mivo250.licstat<p>Update: 0</p>|
|Call Processing version|<p>MiVO 250 Call Processing version</p>|`Dependent item`|mitel.mivo250.cpver<p>Update: 0</p>|
|MiVO 250 Status blob|<p>-</p>|`HTTP agent`|mitel.mivo250.status<p>Update: 180s</p>|
|Free space on flash card|<p>MiVO 250 free space on flash in bytes</p>|`Dependent item`|mitel.mivo250.flashspace<p>Update: 0</p>|
|Active calls|<p>MiVO 250 Active calls</p>|`Dependent item`|mitel.mivo250.activecalls<p>Update: 0</p>|
|Release version|<p>MiVO 250 Release version</p>|`Dependent item`|mitel.mivo250.relver<p>Update: 0</p>|
|Percent free on flash card|<p>MiVO 250 free space on flash in bytes</p>|`Dependent item`|mitel.mivo250.flashpercfree<p>Update: 0</p>|
|Alarm status|<p>MiVO 250 Alarm status</p>|`Dependent item`|mitel.mivo250.alarm<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Alarm status is non-zero|<p>-</p>|warning|
|Less than 10% free on flash card|<p>less than 10% disk space on flash card remaining. Perhaps delete some voicemails.</p>|warning|
