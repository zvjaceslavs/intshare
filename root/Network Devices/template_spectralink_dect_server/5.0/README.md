# Spectralink DECT server

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
|DECT Users Subscription|<p>-</p>|`SNMP agent`|ipDectUsersDectSubscribed<p>Update: 30</p>|
|Abnormal Release total|<p>-</p>|`SNMP agent`|ipDectAbnormalReleaseTotal<p>Update: 30</p>|
|Serial number|<p>-</p>|`SNMP agent`|ipDectSerial<p>Update: 30</p>|
|System ARI|<p>-</p>|`SNMP agent`|ipDectAri<p>Update: 30</p>|
|DECT Users Total|<p>-</p>|`SNMP agent`|ipDectUsersTotal<p>Update: 30</p>|
|Base Station Up|<p>-</p>|`SNMP agent`|pDectRfpsUp<p>Update: 30</p>|
|Software Version|<p>-</p>|`SNMP agent`|ipDectSoftwareVersion<p>Update: 30</p>|
|SIP User Registered|<p>-</p>|`SNMP agent`|ipDectUsersSipRegistered<p>Update: 30</p>|
|Voice Call Max|<p>-</p>|`SNMP agent`|ipDectVoiceCallMax<p>Update: 30</p>|
|Call Attempts in last 60 min|<p>-</p>|`SNMP agent`|ipDectCallAttempts60min<p>Update: 300</p>|
|Base Station Down|<p>-</p>|`SNMP agent`|pDectRfpsDown<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Base station is DOWN|<p>-</p>|warning|
