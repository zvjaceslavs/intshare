# 3-IPMI Dell Power Edge T300

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
|FAN 2 RPM|<p>-</p>|`IPMI agent`|ipmi.fan.2.rpm<p>Update: 300</p>|
|Ambient Temp|<p>-</p>|`IPMI agent`|ipmi.ambient.temp<p>Update: 300</p>|
|Planar Temp|<p>-</p>|`IPMI agent`|ipmi.planar.temp<p>Update: 300</p>|
|Power|<p>-</p>|`IPMI agent`|power<p>Update: 300</p>|
|FAN 1 RPM|<p>-</p>|`IPMI agent`|ipmi.fan.1.rpm<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Ambient Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|Ambient Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Ambient Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|Ambient Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|FAN 1 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN 2 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Planar Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|Planar Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Planar Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|Planar Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Power status changed on {HOSTNAME}|<p>-</p>|high|
