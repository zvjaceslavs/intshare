# Time Drift OS Linux

## Overview

Monitor NTP drift and local offset from an NTP server. Two templates are included for time.offset and time.drift, along with appropriate triggers. Developed for CentOS 6.4


Add these lines to the Zabbix configuration file at /etc/zabbix/zabbix\_agent.conf  
  
UserParameter=time.drift[*],cat /var/lib/ntp/drift  
UserParameter=time.offset[*],ntpdate -p 1 -q pool.ntp.org | grep -oP '(?<=offset ).*?(?= sec)'


 


 



## Author

Jeffrey H. Simonson

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAXTIMEDRIFT}|<p>-</p>|`20`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Time-Drift|<p>Units in the file /var/lib/ntp/drift are PPM. So, multiply PPM by 0.0864 to get seconds per day.</p>|`Zabbix agent`|time.drift<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

# Time Offset OS Linux

## Overview

Monitor NTP drift and local offset from an NTP server. Two templates are included for time.offset and time.drift, along with appropriate triggers. Developed for CentOS 6.4


Add these lines to the Zabbix configuration file at /etc/zabbix/zabbix\_agent.conf  
  
UserParameter=time.drift[*],cat /var/lib/ntp/drift  
UserParameter=time.offset[*],ntpdate -p 1 -q pool.ntp.org | grep -oP '(?<=offset ).*?(?= sec)'


 


 



## Author

Jeffrey H. Simonson

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$MAXTIMEOFFSET}|<p>-</p>|`1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Time-Offset|<p>server 199.165.76.11, stratum 1, offset 0.018816, delay 0.02599 31 Aug 12:23:53 ntpdate[16741]: adjust time server 199.165.76.11 offset 0.018816 sec</p>|`Zabbix agent`|time.offset<p>Update: 60</p>|
## Triggers

There are no triggers in this template.

