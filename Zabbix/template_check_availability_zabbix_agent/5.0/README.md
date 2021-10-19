# Template TCP Zabbix Agent

## Description

Simple template to check the Zabbix Agent Service on server This template uses "Simple Check" of Zabbix (ping and tcp control). by Federico Coppola

## Overview

This is a simple template to check the availability of Zabbix Agent.  
It uses Zabbix Simple Check (ping and tcp).


I have personally tested on Zabbix 3.4


You have just only import this template and associate it to an host. This template do not need the community.  
I have create it becouse I need another control about Zabbix Agent and I use it with other template to collect other information.


Thanks


Federico Coppola

## Author

Federico Coppola

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|PING-CONTROL|<p>Simple check about ping</p>|`Simple check`|icmpping<p>Update: 1m</p>|
|TCP-CONTROL|<p>Item about check tcp service on port 10050 (Zabbix Agent)</p>|`Simple check`|net.tcp.service[tcp,,10050]<p>Update: 1m</p>|
## Triggers

There are no triggers in this template.

