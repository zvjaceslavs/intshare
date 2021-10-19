# 3-IPMI Dell Power Edge T420

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
|Pwr Consumption|<p>-</p>|`IPMI agent`|ipmi.pwr.consumption<p>Update: 300</p>|
|Voltage 2|<p>-</p>|`IPMI agent`|ipmi.voltage.2<p>Update: 300</p>|
|Power|<p>-</p>|`IPMI agent`|power<p>Update: 300</p>|
|Temp|<p>-</p>|`IPMI agent`|ipmi.temp<p>Update: 300</p>|
|Current 2|<p>-</p>|`IPMI agent`|ipmi.current.2<p>Update: 300</p>|
|Inlet Temp|<p>-</p>|`IPMI agent`|ipmi.inlet.temp<p>Update: 300</p>|
|Sys Fan1 RPM|<p>-</p>|`IPMI agent`|ipmi.sys.fan1.rpm<p>Update: 300</p>|
|Current 1|<p>-</p>|`IPMI agent`|ipmi.current.1<p>Update: 300</p>|
|Voltage 1|<p>-</p>|`IPMI agent`|ipmi.voltage.1<p>Update: 300</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Inlet Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|Inlet Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Inlet Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|Inlet Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Power status changed on {HOSTNAME}|<p>-</p>|high|
|Pwr Consumption watts upper critical on {HOSTNAME}|<p>-</p>|high|
|Pwr Consumption watts upper non-critical on {HOSTNAME}|<p>-</p>|average|
|Sys Fan1 RPM lower critical on {HOSTNAME}|<p>-</p>|high|
|Sys Fan1 RPM lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Temp temperature lower critical on {HOSTNAME}|<p>-</p>|high|
|Temp temperature lower non-critical on {HOSTNAME}|<p>-</p>|average|
|Temp temperature upper critical on {HOSTNAME}|<p>-</p>|high|
|Temp temperature upper non-critical on {HOSTNAME}|<p>-</p>|average|
