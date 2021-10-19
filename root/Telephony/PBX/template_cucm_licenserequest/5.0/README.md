# Cisco AXL License data

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
|EnhancedPlus|<p>-</p>|`Dependent item`|uclicense_enhp<p>Update: 0</p>|
|Essential|<p>-</p>|`Dependent item`|uclicense_Essential<p>Update: 0</p>|
|CUWL|<p>-</p>|`Dependent item`|uclicense_cuwl<p>Update: 0</p>|
|Enhanced|<p>-</p>|`Dependent item`|uclicense_Enhanced<p>Update: 0</p>|
|LicenseList|<p>-</p>|`HTTP agent`|uclicense<p>Update: 300s</p>|
|Basic|<p>-</p>|`Dependent item`|uclicense_basic<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|User have more 1 devices|<p>-</p>|warning|
|User have more 2 devices|<p>-</p>|warning|
