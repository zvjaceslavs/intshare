# Template App PHP-FPM

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$AJAX_PORT}|<p>-</p>|`3001`|Text macro|
|{$API_PORT}|<p>-</p>|`3002`|Text macro|
|{$FERM_PORT}|<p>-</p>|`3004`|Text macro|
|{$IMHO_PORT}|<p>-</p>|`3000`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Php-fpm - latency|<p>-</p>|`External check`|fcgi_stat_getter["-h","{HOST.CONN}","-p","3000","-c","latency"]<p>Update: 60</p>|
|Php-fpm - idle processes count|<p>-</p>|`External check`|fcgi_stat_getter["-h","{HOST.CONN}","-p","3000","-c","stat","-k","idle processes"]<p>Update: 60</p>|
|Php-fpm - length of listen queue|<p>-</p>|`External check`|fcgi_stat_getter["-h","{HOST.CONN}","-p","3000","-c","stat","-k","listen queue len"]<p>Update: 60</p>|
|Php-fpm - active processes count|<p>-</p>|`External check`|fcgi_stat_getter["-h","{HOST.CONN}","-p","3000","-c","stat","-k","active processes"]<p>Update: 60</p>|
|Php-fpm - max children reached|<p>-</p>|`External check`|fcgi_stat_getter["-h","{HOST.CONN}","-p","3000","-c","stat","-k","max children reached"]<p>Update: 60</p>|
|Php-fpm|<p>-</p>|`External check`|fcgi_stat_getter["-h","{HOST.CONN}","-p","3000","-c","ping"]<p>Update: 60</p>|
|Php-fpm - connections per sec|<p>-</p>|`External check`|fcgi_stat_getter["-h","{HOST.CONN}","-p","3000","-c","stat","-k","accepted conn"]<p>Update: 60</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|PHP-FPM - child process count is small on {HOST.NAME}|<p>Please, increase pm.max_children (if static) or pm.min_spare_servers and pm.max_spare_servers (if dynamic) in /etc/php-fpm.d/www.conf</p>|information|
|PHP-FPM - is slow to respond on {HOST.NAME}|<p>-</p>|warning|
|PHP-FPM on {HOST.NAME}|<p>-</p>|disaster|
