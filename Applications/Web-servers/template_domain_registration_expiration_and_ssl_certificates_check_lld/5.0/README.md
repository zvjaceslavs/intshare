# SSL check LLD

## Description

## Overview Main idea is monitoring several URL with SSL in one Zabbix host. Data for LLD provide JSON file. This is originally based on [https://share.zabbix.com/cat-app/web-servers/ssl-certificates-check](cat-app/web-servers/ssl-certificates-check) with modifications to the script and template. Added domain registration expiration check 

## Overview

Main idea is monitoring several URL with SSL in one Zabbix host. Data for LLD provide JSON file.


This is originally based on [https://share.zabbix.com/cat-app/web-servers/ssl-certificates-check](cat-app/web-servers/ssl-certificates-check) with modifications to the script and template.


Added domain registration expiration check



## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|URLs discovery|<p>-</p>|`External check`|list.sh["ssl_check.json"]<p>Update: 1h</p>|
|Domains discovery|<p>-</p>|`External check`|list.sh["ssl_check.json","1"]<p>Update: 1h</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|HTTPS Service on {#URL}:{#PORT} is running|<p>-</p>|`Simple check`|net.tcp.service[https,{#URL},{#PORT}]<p>Update: 5m</p><p>LLD</p>|
|SSL certificate validity {#URL}:{#PORT}|<p>-</p>|`External check`|zext_ssl_cert.sh[-d,{#URL},{#PORT}]<p>Update: 1h</p><p>LLD</p>|
|SSL certificate issuer {#URL}:{#PORT}|<p>-</p>|`External check`|zext_ssl_cert.sh[-i,{#URL},{#PORT}]<p>Update: 1h</p><p>LLD</p>|
|Domain {#DOMAIN_NAME} expire in|<p>-</p>|`External check`|whois_expire.sh[{#DOMAIN_NAME}]<p>Update: 1d</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Domain {#DOMAIN_NAME} expired|<p>-</p>|<p>**Expression**: {SSL check LLD:whois_expire.sh[{#DOMAIN_NAME}].last()}<=0</p><p>**Recovery expression**: </p>|disaster|
|Domain {#DOMAIN_NAME} will expire in 14 days|<p>-</p>|<p>**Expression**: {SSL check LLD:whois_expire.sh[{#DOMAIN_NAME}].last()}<14</p><p>**Recovery expression**: </p>|high|
|Domain {#DOMAIN_NAME} will expire in 30 days|<p>-</p>|<p>**Expression**: {SSL check LLD:whois_expire.sh[{#DOMAIN_NAME}].last()}<30</p><p>**Recovery expression**: </p>|warning|
|HTTPS service is down on {#URL}:{#PORT}|<p>Last value: {ITEM.LASTVALUE1}. HTTPS service is down on {#URL}:{#PORT}</p>|<p>**Expression**: {SSL check LLD:net.tcp.service[https,{#URL},{#PORT}].max(#3)}=0</p><p>**Recovery expression**: </p>|average|
|Falied to establish SSL connectoin on {#URL}:{#PORT} in last 3 hour|<p>-</p>|<p>**Expression**: {SSL check LLD:zext_ssl_cert.sh[-d,{#URL},{#PORT}].nodata(210m)}=1</p><p>**Recovery expression**: </p>|high|
|SSL certificate on {#URL}:{#PORT} expired|<p>-</p>|<p>**Expression**: {SSL check LLD:zext_ssl_cert.sh[-d,{#URL},{#PORT}].last()}<0</p><p>**Recovery expression**: </p>|disaster|
|SSL certificate on {#URL}:{#PORT} expires in less than 7 days|<p>Last value: {ITEM.LASTVALUE1}. SSL certificate on {#URL}:{#PORT} expires in less than week</p>|<p>**Expression**: {SSL check LLD:zext_ssl_cert.sh[-d,{#URL},{#PORT}].last()}<7</p><p>**Recovery expression**: </p>|high|
|SSL certificate on {#URL}:{#PORT} expires in less than 21 days|<p>Last value: {ITEM.LASTVALUE1}. SSL certificate on {#URL}:{#PORT} expires in less than 3 week</p>|<p>**Expression**: {SSL check LLD:zext_ssl_cert.sh[-d,{#URL},{#PORT}].last()}<21</p><p>**Recovery expression**: </p>|warning|
|HTTPS service is down on {#URL}:{#PORT} (LLD)|<p>Last value: {ITEM.LASTVALUE1}. HTTPS service is down on {#URL}:{#PORT}</p>|<p>**Expression**: {SSL check LLD:net.tcp.service[https,{#URL},{#PORT}].max(#3)}=0</p><p>**Recovery expression**: </p>|average|
|Falied to establish SSL connectoin on {#URL}:{#PORT} in last 3 hour (LLD)|<p>-</p>|<p>**Expression**: {SSL check LLD:zext_ssl_cert.sh[-d,{#URL},{#PORT}].nodata(210m)}=1</p><p>**Recovery expression**: </p>|high|
|SSL certificate on {#URL}:{#PORT} expired (LLD)|<p>-</p>|<p>**Expression**: {SSL check LLD:zext_ssl_cert.sh[-d,{#URL},{#PORT}].last()}<0</p><p>**Recovery expression**: </p>|disaster|
|SSL certificate on {#URL}:{#PORT} expires in less than 7 days (LLD)|<p>Last value: {ITEM.LASTVALUE1}. SSL certificate on {#URL}:{#PORT} expires in less than week</p>|<p>**Expression**: {SSL check LLD:zext_ssl_cert.sh[-d,{#URL},{#PORT}].last()}<7</p><p>**Recovery expression**: </p>|high|
|SSL certificate on {#URL}:{#PORT} expires in less than 21 days (LLD)|<p>Last value: {ITEM.LASTVALUE1}. SSL certificate on {#URL}:{#PORT} expires in less than 3 week</p>|<p>**Expression**: {SSL check LLD:zext_ssl_cert.sh[-d,{#URL},{#PORT}].last()}<21</p><p>**Recovery expression**: </p>|warning|
|Domain {#DOMAIN_NAME} expired (LLD)|<p>-</p>|<p>**Expression**: {SSL check LLD:whois_expire.sh[{#DOMAIN_NAME}].last()}<=0</p><p>**Recovery expression**: </p>|disaster|
|Domain {#DOMAIN_NAME} will expire in 14 days (LLD)|<p>-</p>|<p>**Expression**: {SSL check LLD:whois_expire.sh[{#DOMAIN_NAME}].last()}<14</p><p>**Recovery expression**: </p>|high|
|Domain {#DOMAIN_NAME} will expire in 30 days (LLD)|<p>-</p>|<p>**Expression**: {SSL check LLD:whois_expire.sh[{#DOMAIN_NAME}].last()}<30</p><p>**Recovery expression**: </p>|warning|
