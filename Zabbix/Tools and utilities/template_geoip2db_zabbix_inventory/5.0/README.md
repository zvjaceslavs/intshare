# GeoIP2 Location Template

## Description

Template for executing https://github.com/mjtrangoni/geoip2_zabbix This populates the location to the Host Inventory

## Overview

Monitor your host locations with [GeoIP2](https://www.maxmind.com/en/home)

## Author

Mario Trangoni

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|GeoIP2 City|<p>-</p>|`Dependent item`|geoip2.city.name<p>Update: 0</p>|
|GeoIP2 Country|<p>-</p>|`Dependent item`|geoip2.country.name<p>Update: 0</p>|
|GeoIP2 Location latitude|<p>-</p>|`Dependent item`|geoip2.location.latitude<p>Update: 0</p>|
|GeoIP2 Location longitude|<p>-</p>|`Dependent item`|geoip2.location.longitude<p>Update: 0</p>|
|GeoIP2 Postal Code|<p>-</p>|`Dependent item`|geoip2.postal.code<p>Update: 0</p>|
|geoip2_zabbix output|<p>-</p>|`Zabbix agent (active)`|geoip2.zabbix<p>Update: 24h</p>|
## Triggers

There are no triggers in this template.

