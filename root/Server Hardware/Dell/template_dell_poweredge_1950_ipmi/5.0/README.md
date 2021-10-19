# 3-IPMI Dell Power Edge 1950

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
|FAN MOD 4D RPM|<p>-</p>|`IPMI agent`|ipmi.fan.4d.rpm<p>Update: 300</p>|
|FAN MOD 1D RPM|<p>-</p>|`IPMI agent`|ipmi.fan.1d.rpm<p>Update: 300</p>|
|FAN MOD 4B RPM|<p>-</p>|`IPMI agent`|ipmi.fan.4b.rpm<p>Update: 300</p>|
|FAN MOD 2C RPM|<p>-</p>|`IPMI agent`|ipmi.fan.2c.rpm<p>Update: 300</p>|
|FAN MOD 3D RPM|<p>-</p>|`IPMI agent`|ipmi.fan.3d.rpm<p>Update: 300</p>|
|FAN MOD 2B RPM|<p>-</p>|`IPMI agent`|ipmi.fan.2b.rpm<p>Update: 300</p>|
|FAN MOD 4A RPM|<p>-</p>|`IPMI agent`|ipmi.fan.4a.rpm<p>Update: 300</p>|
|FAN MOD 3B RPM|<p>-</p>|`IPMI agent`|ipmi.fan.3b.rpm<p>Update: 300</p>|
|Power|<p>-</p>|`IPMI agent`|power<p>Update: 300</p>|
|FAN MOD 3A RPM|<p>-</p>|`IPMI agent`|ipmi.fan.3a.rpm<p>Update: 300</p>|
|FAN MOD 1C RPM|<p>-</p>|`IPMI agent`|ipmi.fan.1c.rpm<p>Update: 300</p>|
|Ambient Temp|<p>-</p>|`IPMI agent`|ipmi.ambient.temp<p>Update: 300</p>|
|FAN MOD 1B RPM|<p>-</p>|`IPMI agent`|ipmi.fan.1b.rpm<p>Update: 300</p>|
|FAN MOD 3C RPM|<p>-</p>|`IPMI agent`|ipmi.fan.3c.rpm<p>Update: 300</p>|
|FAN MOD 4C RPM|<p>-</p>|`IPMI agent`|ipmi.fan.4c.rpm<p>Update: 300</p>|
|FAN MOD 2D RPM|<p>-</p>|`IPMI agent`|ipmi.fan.2d.rpm<p>Update: 300</p>|
|FAN MOD 1A RPM|<p>-</p>|`IPMI agent`|ipmi.fan.1a.rpm<p>Update: 300</p>|
|FAN MOD 2A RPM|<p>-</p>|`IPMI agent`|ipmi.fan.2a.rpm<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Ambient Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|Ambient Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Ambient Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|Ambient Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|FAN MOD 1A RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 1B RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 1C RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 1D RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 2A RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 2B RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 2C RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 2D RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 3A RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 3B RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 3C RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 3D RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 4A RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 4B RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 4C RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|FAN MOD 4D RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Power status changed on {HOSTNAME}|<p>-</p>|high|
