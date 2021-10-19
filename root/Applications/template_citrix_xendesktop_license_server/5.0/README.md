# C24_CVAD-715_CTXLicServer_v1.00

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
|CTXLic_Citrix_GTLicensingProv|<p>-</p>|`Zabbix agent`|service.info[Citrix_GTLicensingProv]<p>Update: 1m</p>|
|CTXLic_CitrixWebServicesforLicensing|<p>-</p>|`Zabbix agent`|service.info[CitrixWebServicesforLicensing]<p>Update: 1m</p>|
|CTXLic_Citrix Licensing|<p>-</p>|`Zabbix agent`|service.info[Citrix Licensing]<p>Update: 1m</p>|
|CTXLic_Citrix_GTLicensingProv_Startup|<p>-</p>|`Zabbix agent`|service.info[Citrix_GTLicensingProv,startup]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Service "Citrix Licensing" on {HOSTNAME} is unreachable|<p>-</p>|high|
|Service "CitrixWebServicesforLicensing" on {HOSTNAME} is unreacheable|<p>-</p>|warning|
|Service "Citrix_GTLicensingProv" on {HOSTNAME} - Startup check|<p>-</p>|not classified|
|Service "Citrix_GTLicensingProv" on {HOSTNAME} is unreachable|<p>-</p>|warning|
