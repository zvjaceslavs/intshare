# Template SSLLabs

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
|SSL Certificate Grade|<p>-</p>|`Zabbix trapper`|ssllabs.certificate.grade<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Certificate grade is A|<p>-</p>|information|
|Certificate grade is A+|<p>-</p>|information|
|Certificate grade is B|<p>-</p>|information|
|Certificate grade is C|<p>-</p>|warning|
|Certificate grade is D|<p>-</p>|average|
|Certificate grade is F|<p>-</p>|high|
