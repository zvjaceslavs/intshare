# Template App Pi-Hole

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
|DNS queries today|<p>-</p>|`Dependent item`|json.pihole.dns_queries_today<p>Update: 0</p>|
|SOA|<p>-</p>|`Dependent item`|json.pihole.querytypes.soa<p>Update: 0</p>|
|DNS queries all types|<p>-</p>|`Dependent item`|json.pihole.dns_queries_all_types<p>Update: 0</p>|
|DNSKEY|<p>-</p>|`Dependent item`|json.pihole.querytypes.dnskey<p>Update: 0</p>|
|Ads blocked today|<p>-</p>|`Dependent item`|json.pihole.ads_blocked_today<p>Update: 0</p>|
|SRV|<p>-</p>|`Dependent item`|json.pihole.querytypes.srv<p>Update: 0</p>|
|TXT|<p>-</p>|`Dependent item`|json.pihole.querytypes.txt<p>Update: 0</p>|
|DS|<p>-</p>|`Dependent item`|json.pihole.querytypes.ds<p>Update: 0</p>|
|Reply CNAME|<p>-</p>|`Dependent item`|json.pihole.reply_CNAME<p>Update: 0</p>|
|Reply NXDOMAIN|<p>-</p>|`Dependent item`|json.pihole.reply_NXDOMAIN<p>Update: 0</p>|
|Unique domains|<p>-</p>|`Dependent item`|json.pihole.unique_domains<p>Update: 0</p>|
|OTHER|<p>-</p>|`Dependent item`|json.pihole.querytypes.other<p>Update: 0</p>|
|RRSIG|<p>-</p>|`Dependent item`|json.pihole.querytypes.rrsig<p>Update: 0</p>|
|Ads percentage today|<p>-</p>|`Dependent item`|json.pihole.ads_percentage_today<p>Update: 0</p>|
|MX|<p>-</p>|`Dependent item`|json.pihole.querytypes.mx<p>Update: 0</p>|
|Queries cached|<p>-</p>|`Dependent item`|json.pihole.queries_cached<p>Update: 0</p>|
|Domains being blocked|<p>-</p>|`Dependent item`|json.pihole.domains_being_blocked<p>Update: 0</p>|
|PTR|<p>-</p>|`Dependent item`|json.pihole.querytypes.ptr<p>Update: 0</p>|
|ANY|<p>-</p>|`Dependent item`|json.pihole.querytypes.any<p>Update: 0</p>|
|Unique clients|<p>-</p>|`Dependent item`|json.pihole.unique_clients<p>Update: 0</p>|
|Reply IP|<p>-</p>|`Dependent item`|json.pihole.reply_IP<p>Update: 0</p>|
|Clients ever seen|<p>-</p>|`Dependent item`|json.pihole.clients_ever_seen<p>Update: 0</p>|
|NAPTR|<p>-</p>|`Dependent item`|json.pihole.querytypes.naptr<p>Update: 0</p>|
|API_getQueryTypes|<p>-</p>|`HTTP agent`|json.pihole.querytypes<p>Update: 1m</p>|
|API_SummaryRaw|<p>-</p>|`HTTP agent`|json.pihole<p>Update: 1m</p>|
|Queries forwarded|<p>-</p>|`Dependent item`|json.pihole.queries_forwarded<p>Update: 0</p>|
|A (IPv4)|<p>-</p>|`Dependent item`|json.pihole.querytypes.a<p>Update: 0</p>|
|AAAA (IPv6)|<p>-</p>|`Dependent item`|json.pihole.querytypes.aaaa<p>Update: 0</p>|
|Reply NODATA|<p>-</p>|`Dependent item`|json.pihole.reply_NODATA<p>Update: 0</p>|
## Triggers

There are no triggers in this template.

