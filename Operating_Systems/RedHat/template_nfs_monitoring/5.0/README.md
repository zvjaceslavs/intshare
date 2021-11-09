# App NFS Service

## Description

Template to monitor NFS via UserParameters in zabbix-agentd.conf file

## Overview

 


**Zabbix NFS monitoring**


 


This uses the nfsstat command to extract NFS data from a client.


e.g.


$ nfsstat


  
Server rpc stats:  
calls badcalls badclnt badauth xdrcall  
3250 0 0 0 0   
  
Server nfs v4:  
null compound   
16 0% 3234 99%   
  
Server nfs v4 operations:  
op0-unused op1-unused op2-future access close commit   
0 0% 0 0% 0 0% 512 7% 0 0% 0 0%   
create delegpurge delegreturn getattr getfh link   
0 0% 0 0% 0 0% 3232 45% 48 0% 0 0%   
lock lockt locku lookup lookup\_root nverify   
0 0% 0 0% 0 0% 32 0% 0 0% 0 0%   
open openattr open\_conf open\_dgrd putfh putpubfh   
0 0% 0 0% 0 0% 0 0% 3218 45% 0 0%   
putrootfh read readdir readlink remove rename   
16 0% 0 0% 2 0% 0 0% 0 0% 0 0%   
renew restorefh savefh secinfo setattr setcltid   
0 0% 0 0% 0 0% 0 0% 0 0% 0 0%   
setcltidconf verify write rellockowner bc\_ctl bind\_conn   
0 0% 0 0% 0 0% 0 0% 0 0% 0 0%   
exchange\_id create\_ses destroy\_ses free\_stateid getdirdeleg getdevinfo   
0 0% 0 0% 0 0% 0 0% 0 0% 0 0%   
getdevlist layoutcommit layoutget layoutreturn secinfononam sequence   
0 0% 0 0% 0 0% 0 0% 0 0% 0 0%   
set\_ssv test\_stateid want\_deleg destroy\_clid reclaim\_comp   
0 0% 0 0% 0 0% 0 0% 0 0%   



This note is configured to work with NFS V4


 


 


<p class="western" s



## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|NFS setattr|<p>-</p>|`Zabbix agent`|nfs_setattr<p>Update: 30</p>|
|NFS RPC badcalls|<p>-</p>|`Zabbix agent`|nfs_rpc_badcalls<p>Update: 30</p>|
|NFS access|<p>-</p>|`Zabbix agent`|nfs_access<p>Update: 30</p>|
|NFS readlink|<p>-</p>|`Zabbix agent`|nfs_readlink<p>Update: 30</p>|
|NFS RPC calls|<p>-</p>|`Zabbix agent`|nfs_rpc_calls<p>Update: 30</p>|
|NFS read|<p>-</p>|`Zabbix agent`|nfs_read<p>Update: 30</p>|
|NFS deamon running|<p>-</p>|`Zabbix agent`|net.udp.listen[2049]<p>Update: 30</p>|
|NFS write|<p>-</p>|`Zabbix agent`|nfs_write<p>Update: 30</p>|
|NFS create|<p>-</p>|`Zabbix agent`|nfs_create<p>Update: 30</p>|
|NFS lookup|<p>-</p>|`Zabbix agent`|nfs_lookup<p>Update: 30</p>|
|NFS getattr|<p>-</p>|`Zabbix agent`|nfs_getattr<p>Update: 30</p>|
|NFS link|<p>-</p>|`Zabbix agent`|nfs_link<p>Update: 30</p>|
|NFS rename|<p>-</p>|`Zabbix agent`|nfs_rename<p>Update: 30</p>|
|NFS nulls|<p>-</p>|`Zabbix agent`|nfs_nulls<p>Update: 30</p>|
|NFS commit|<p>-</p>|`Zabbix agent`|nfs_commit<p>Update: 30</p>|
|NFS remove|<p>-</p>|`Zabbix agent`|nfs_remove<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

