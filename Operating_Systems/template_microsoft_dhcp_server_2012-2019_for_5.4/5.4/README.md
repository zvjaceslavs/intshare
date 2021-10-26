# APP Discovery DHCP scopes

## Description

Created by Dušan Priechodský edited by Edson Freitas

## Overview

I'm not the template creator, I just adapted this "APP Discovery DHCP scopes.xml" to zabbix version 5.4.


Who created it is Dusan Priechodsky, original link [https://share.zabbix.com/operating-systems/windows/microsoft-dhcp-server-2012-2016-2019](operating-systems/windows/microsoft-dhcp-server-2012-2016-2019)


 


Microsoft-DHCP-Server-2012-2016-2019 - Compatible with Zabbix 5.4


 Features: DHCP Server service status, Support of SuperScopes, Failover, Discovery all scopes (FreeIP, UsedIP, atc.. ), Load-tuned powershell script


Instalation:


- copy scripts and zabbix\_agentd.conf.d in to zabbix agent install folder. - Download from Dusan's link - https://share.zabbix.com/operating-systems/windows/microsoft-dhcp-server-2012-2016-2019


- first inmport template "APP Discovery DHCP scopes.xml" (From this download link)


- second import template "Microsoft\_DHCP.xml" - Download from Dusan's link - https://share.zabbix.com/operating-systems/windows/microsoft-dhcp-server-2012-2016-2019


<p style="margin: 0px 0px 1.5em; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; ba

## Author

Dusan Priechodsky

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DHCP Scopes|<p>-</p>|`Zabbix agent`|DHCPv4LLD<p>Update: 1h</p>|
|DHCP Super Scopes|<p>-</p>|`Zabbix agent`|DHCPv4SuperScopeStats<p>Update: 30m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - All Free IP (except the excluded and reserved)|<p>-</p>|`Calculated`|DHCPv4ScopeStats.Allip[{#SCOPENETWORK}]<p>Update: 1m</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - json object|<p>-</p>|`Zabbix agent`|DHCPv4ScopeStats[{#SCOPENETWORK}]<p>Update: 1m</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Addresses Free On Partner Server|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.AddressesFreeOnPartnerServer[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Addresses Free On This Server|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.AddressesFreeOnThisServer[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - AddressesFree|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.AddressesFree[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Addresses In Use On Partner Server|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.AddressesInUseOnPartnerServer[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Addresses In Use On This Server|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.AddressesInUseOnThisServer[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Free|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.Free[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - InUse|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.InUse[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Pending|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.Pending[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - PercentageInUse|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.PercentageInUse[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Reserved|<p>-</p>|`Dependent item`|DHCPv4ScopeStats.Reserved[{#SCOPENETWORK}]<p>Update: 0</p><p>LLD</p>|
|DHCP Super Scope {#S.SCOPE.NAME} - All IP (except the excluded and reserved)|<p>-</p>|`Calculated`|DHCPv4SuperScopeStats.allip[{#S.SCOPE.NAME}]<p>Update: 30m</p><p>LLD</p>|
|DHCP Super Scope {#S.SCOPE.NAME} - Available IP|<p>-</p>|`Calculated`|DHCPv4SuperScopeStats.available[{#S.SCOPE.NAME}]<p>Update: 30m</p><p>LLD</p>|
|DHCP Super Scope {#S.SCOPE.NAME} - Use IP|<p>-</p>|`Calculated`|DHCPv4SuperScopeStats.in.use[{#S.SCOPE.NAME}]<p>Update: 30m</p><p>LLD</p>|
|DHCP Super Scope {#S.SCOPE.NAME} - SubScopes|<p>-</p>|`Calculated`|DHCPv4SuperScopeStats.numscopes[{#S.SCOPE.NAME}]<p>Update: 30m</p><p>LLD</p>|
|DHCP Super Scope {#S.SCOPE.NAME} - % Used IP|<p>-</p>|`Calculated`|DHCPv4SuperScopeStats.p.inuse[{#S.SCOPE.NAME}]<p>Update: 30m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Inactive state|<p>-</p>|<p>**Expression**: last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.Free[{#SCOPENETWORK}])=0 and last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.InUse[{#SCOPENETWORK}])=0 and last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.Pending[{#SCOPENETWORK}])=0 and last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.Reserved[{#SCOPENETWORK}])=0</p><p>**Recovery expression**: </p>|information|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - is full for free addresses|<p>-</p>|<p>**Expression**: last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.PercentageInUse[{#SCOPENETWORK}])>97</p><p>**Recovery expression**: </p>|warning|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - Inactive state (LLD)|<p>-</p>|<p>**Expression**: last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.Free[{#SCOPENETWORK}])=0 and last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.InUse[{#SCOPENETWORK}])=0 and last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.Pending[{#SCOPENETWORK}])=0 and last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.Reserved[{#SCOPENETWORK}])=0</p><p>**Recovery expression**: </p>|information|
|DHCP Scope {#SSCOPENAME} -> {#SCOPENAME} [{#SCOPENETWORK}] - is full for free addresses (LLD)|<p>-</p>|<p>**Expression**: last(/APP Discovery DHCP scopes/DHCPv4ScopeStats.PercentageInUse[{#SCOPENETWORK}])>97</p><p>**Recovery expression**: </p>|warning|
