# Template Zabbix DB Partitions

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$PASSWORD}|<p>-</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Third Daily Partition Count|<p>ls /var/lib/mysql/zabbixdb | grep -c $(date -d "$(date +%F)"+Xdays "+%Y%m%d") Workflow 1. List the content of the /var/lib/mysql/zabbixdb folder 2. Print the grep count of current date, + X days ahead, printing the format like the partition file name.</p>|`SSH agent`|ssh.run[dpc3,{HOST.HOST},22,]<p>Update: 30s</p>|
|Fifth Daily Partition Count|<p>ls /var/lib/mysql/zabbixdb | grep -c $(date -d "$(date +%F)"+Xdays "+%Y%m%d") Workflow 1. List the content of the /var/lib/mysql/zabbixdb folder 2. Print the grep count of current date, + X days ahead, printing the format like the partition file name.</p>|`SSH agent`|ssh.run[dpc5,{HOST.HOST},22,]<p>Update: 30s</p>|
|Current Daily Partition count|<p>Gets the current count of the number of daily partitions in the /var/lib/mysql/zabbixdb, this will need to be adjusted to fit your environment.</p>|`SSH agent`|ssh.run[dpc,{HOST.HOST},22,]<p>Update: 30s</p>|
|Tomorrow Daily Partition Count|<p>ls /var/lib/mysql/zabbixdb | grep -c $(date -d "$(date +%F)"+Xdays "+%Y%m%d") Workflow 1. List the content of the /var/lib/mysql/zabbixdb folder 2. Print the grep count of current date, + X days ahead, printing the format like the partition file name.</p>|`SSH agent`|ssh.run[dpc1,{HOST.HOST},22,]<p>Update: 30s</p>|
|Fourth Daily Partition Count|<p>ls /var/lib/mysql/zabbixdb | grep -c $(date -d "$(date +%F)"+Xdays "+%Y%m%d") Workflow 1. List the content of the /var/lib/mysql/zabbixdb folder 2. Print the grep count of current date, + X days ahead, printing the format like the partition file name.</p>|`SSH agent`|ssh.run[dpc4,{HOST.HOST},22,]<p>Update: 30s</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Future Partition missing|<p>-</p>|disaster|
