# NTP[Remote]

## Overview

NTP accuracy Infomation Template


Japanese version template is in the [link](cat-app/ntp-accuracy-template-japanese) .  
日本語版テンプレートは[こちら](cat-app/ntp-accuracy-template-japanese)


Sammeln Sie alle Informationen, die in der ntpq Befehl angezeigt wird.


 When you use a template  
 Please make the following settings zabbix\_agentd.conf.


EnableRemoteCommands=1


UnsafeUserParameters=1


 
 

In ZabbixAgent is installed environment  
It will use the NTP template.  
  
 ZabbxAgent can not be installed system  
 For example, in as NTP appliance  
 Please use the NTP [Remoto] template.  
 In the NTP [Remoto] template and the IP address of the destination NTP appliance  
You set the macro as {$ NTP\_IP}.
## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$NTP_IP}|<p>-</p>|`127.0.0.1`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|ntp[{$NTP_IP}]|<p>"*" It represents the server in the reference synchronization "+" Server that pass the clock error check "#" It is in the in the reference synchronization , but distance is distant server " " Blank , does not refer to a server "x" Server that fail to clock error check ". " Server that are excluded from the reference list refid Host name or IP address of the high-stratum NTP server NTP server is referencing st NTP Server stratum t stratum type l:local,u:unicast,m:multicast,b:broadcast when The number of seconds after receiving the last packet poll Interval number of seconds to query reach Register data for reachability *octal delay [milliseconds] offset [milliseconds] jitter [milliseconds]</p>|`Zabbix agent (active)`|system.run[ntpq -p {$NTP_IP}]<p>Update: 3600</p>|
|NTP jitter[({$NTP_IP}]|<p>Past 8 dispersion average value of NTP offset</p>|`Zabbix agent (active)`|system.run[ntpq -p {$NTP_IP}|grep \* |awk '{print$10}']<p>Update: 1800</p>|
|NTP synchronized server [{$NTP_IP}]|<p>NTP server name that is synchronized</p>|`Zabbix agent (active)`|system.run[ntpq -p {$NTP_IP}|grep \* |awk '{print$1}'|sed s/*//]<p>Update: 1800</p>|
|NTP refid [{$NTP_IP}]|<p>The upper NTP server of the NTP server that is synchronized</p>|`Zabbix agent (active)`|system.run[ntpq -p {$NTP_IP}|grep \* |awk '{print$2}']<p>Update: 1800</p>|
|NTP stratum [{$NTP_IP}]|<p>Stratum of the NTP server that is synchronized</p>|`Zabbix agent (active)`|system.run[ntpq -p {$NTP_IP}|grep \* |awk '{print$3}']<p>Update: 1800</p>|
|NTP polling [{$NTP_IP}]|<p>Synchronization period with the NTP server</p>|`Zabbix agent (active)`|system.run[ntpq -p {$NTP_IP}|grep \* |awk '{print$6}']<p>Update: 1800</p>|
|NTP delay [{$NTP_IP}]|<p>Estimated delay time of the NTP packet</p>|`Zabbix agent (active)`|system.run[ntpq -p {$NTP_IP}|grep \* |awk '{print$8}']<p>Update: 1800</p>|
|NTP offset [{$NTP_IP}]|<p>Time deviation between the NTP server</p>|`Zabbix agent (active)`|system.run[ntpq -p {$NTP_IP}|grep \* |awk '{print$9}']<p>Update: 1800</p>|
## Triggers

There are no triggers in this template.

# NTP

## Overview

NTP accuracy Infomation Template


Japanese version template is in the [link](cat-app/ntp-accuracy-template-japanese) .  
日本語版テンプレートは[こちら](cat-app/ntp-accuracy-template-japanese)


Sammeln Sie alle Informationen, die in der ntpq Befehl angezeigt wird.


 When you use a template  
 Please make the following settings zabbix\_agentd.conf.


EnableRemoteCommands=1


UnsafeUserParameters=1


 
 

In ZabbixAgent is installed environment  
It will use the NTP template.  
  
 ZabbxAgent can not be installed system  
 For example, in as NTP appliance  
 Please use the NTP [Remoto] template.  
 In the NTP [Remoto] template and the IP address of the destination NTP appliance  
You set the macro as {$ NTP\_IP}.
## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|proc num NTP|<p>-</p>|`Zabbix agent`|proc.num[ntpd]<p>Update: 60</p>|
|ntpd Version|<p>-</p>|`Zabbix agent (active)`|system.run[ntpq -c version]<p>Update: 3600</p>|
|ntpq|<p>"*" It represents the server in the reference synchronization "+" Server that pass the clock error check "#" It is in the in the reference synchronization , but distance is distant server " " Blank , does not refer to a server "x" Server that fail to clock error check ". " Server that are excluded from the reference list refid Host name or IP address of the high-stratum NTP server NTP server is referencing st NTP Server stratum t stratum type l:local,u:unicast,m:multicast,b:broadcast when The number of seconds after receiving the last packet poll Interval number of seconds to query reach Register data for reachability *octal delay [milliseconds] offset [milliseconds] jitter [milliseconds]</p>|`Zabbix agent (active)`|system.run[ntpq -p]<p>Update: 3600</p>|
|NTP jitter|<p>Past 8 dispersion average value of NTP offset</p>|`Zabbix agent (active)`|system.run[ntpq -p|grep \* |awk '{print$10}']<p>Update: 1800</p>|
|NTP synchronized server|<p>NTP server name that is synchronized</p>|`Zabbix agent (active)`|system.run[ntpq -p|grep \* |awk '{print$1}'|sed s/*//]<p>Update: 1800</p>|
|NTP refid|<p>The upper NTP server of the NTP server that is synchronized</p>|`Zabbix agent (active)`|system.run[ntpq -p|grep \* |awk '{print$2}']<p>Update: 1800</p>|
|NTP stratum|<p>Stratum of the NTP server that is synchronized</p>|`Zabbix agent (active)`|system.run[ntpq -p|grep \* |awk '{print$3}']<p>Update: 1800</p>|
|NTP polling|<p>Synchronization period with the NTP server</p>|`Zabbix agent (active)`|system.run[ntpq -p|grep \* |awk '{print$6}']<p>Update: 1800</p>|
|NTP delay|<p>Estimated delay time of the NTP packet</p>|`Zabbix agent (active)`|system.run[ntpq -p|grep \* |awk '{print$8}']<p>Update: 1800</p>|
|NTP offset|<p>Time deviation between the NTP server</p>|`Zabbix agent (active)`|system.run[ntpq -p|grep \* |awk '{print$9}']<p>Update: 1800</p>|
## Triggers

There are no triggers in this template.

