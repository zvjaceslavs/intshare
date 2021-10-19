# Template SSL check LLD

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Domains discovery|<p>-</p>|`External check`|list.sh["ssl_check.json","1"]<p>Update: 1h</p>|
|URLs discovery|<p>-</p>|`External check`|list.sh["ssl_check.json"]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Domain {#DOMAIN_NAME} expire in|<p>-</p>|`External check`|whois_expire.sh[{#DOMAIN_NAME}]<p>Update: 1d</p>|
|HTTPS Service on {#URL}:{#PORT} is running|<p>-</p>|`Simple check`|net.tcp.service[https,{#URL},{#PORT}]<p>Update: 5m</p>|
|SSL certificate validity {#URL}:{#PORT}|<p>-</p>|`External check`|zext_ssl_cert.sh[-d,{#URL},{#PORT}]<p>Update: 1h</p>|
|SSL certificate issuer {#URL}:{#PORT}|<p>-</p>|`External check`|zext_ssl_cert.sh[-i,{#URL},{#PORT}]<p>Update: 1h</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Domain {#DOMAIN_NAME} expired|<p>-</p>|disaster|
|Domain {#DOMAIN_NAME} will expire in 14 days|<p>-</p>|high|
|Domain {#DOMAIN_NAME} will expire in 30 days|<p>-</p>|warning|
|HTTPS service is down on {#URL}:{#PORT}|<p>Last value: {ITEM.LASTVALUE1}. HTTPS service is down on {#URL}:{#PORT}</p>|average|
|Falied to establish SSL connectoin on {#URL}:{#PORT} in last 3 hour|<p>-</p>|high|
|SSL certificate on {#URL}:{#PORT} expired|<p>-</p>|disaster|
|SSL certificate on {#URL}:{#PORT} expires in less than 7 days|<p>Last value: {ITEM.LASTVALUE1}. SSL certificate on {#URL}:{#PORT} expires in less than week</p>|high|
|SSL certificate on {#URL}:{#PORT} expires in less than 21 days|<p>Last value: {ITEM.LASTVALUE1}. SSL certificate on {#URL}:{#PORT} expires in less than 3 week</p>|warning|
