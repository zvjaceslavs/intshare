# IPMI Dell Power Edge T310

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
|Power State|<p>-</p>|`IPMI agent`|ipmi.power.state<p>Update: 300</p>|
|Fan 1|<p>-</p>|`IPMI agent`|ipmi.fan1.rpm<p>Update: 300</p>|
|Power consumption|<p>-</p>|`IPMI agent`|ipmi.power.consumption<p>Update: 300</p>|
|Ambient Temp|<p>-</p>|`IPMI agent`|ipmi.ambient.temp<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Ambient Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|Ambient Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Ambient Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|Ambient Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|FAN MOD 1A RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Power consumption too high|<p>-</p>|average|
|Power status changed on {HOSTNAME}|<p>-</p>|high|
