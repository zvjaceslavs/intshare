# KHP-BROCADE-FC-PORT

## Overview

templates was tested for Zabbix 3.0.1


you also need Fibre Channel Switch MIB = SW.mib ([v7.4.1b\_all\_mibs.tar.gz](http://www.techhelp24.net/download/brocade/FOS/MIB/v7.4.1b_all_mibs.tar.gz))


This template is distributed under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version. ### Copyright Copyright (c) Jean-Jacques Martrès ### Authors Jean-Jacques Martrès (jjmartres |at| gmail |dot| com)

## Author

Jean-Jacques Martrès (original)

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interface|<p>-</p>|`SNMP agent`|ifDescr<p>Update: 300</p>|
|FiberChannel Ports|<p>-</p>|`SNMP agent`|swFCPortIndex<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Incoming traffic on $1 (LLD)|<p>-</p>|`SNMP agent`|ifInOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Outgoing traffic on $1 (LLD)|<p>-</p>|`SNMP agent`|ifOutOctets[{#SNMPVALUE}]<p>Update: 60</p>|
|Admin status of port $1 (LLD)|<p>"The desired state of the port. A management station may place the port in a desired state by setting this object accordingly. The testing(3) state indicates that no user frames can be passed. As the result of either explicit management action or per configuration information accessible by the switch, swFCPortAdmStatus is then changed to either the online(1) or testing(3) states, or remains in the offline(2) state."</p>|`SNMP agent`|swFcPortAdmStatus[{#SNMPVALUE}]<p>Update: 300</p>|
|Truncated too-long frames received on port $1 (LLD)|<p>"This object counts the number of received frames that are too long."</p>|`SNMP agent`|swFCPortRxTooLongs[{#SNMPVALUE}]<p>Update: 300</p>|
|Words transmitted on port $1 (LLD)|<p>"This object counts the number of Fibre Channel words that the port has transmitted."</p>|`SNMP agent`|swFCPortTxWords[{#SNMPVALUE}]<p>Update: 300</p>|
|Transmitter type of port $1 (LLD)|<p>"This object indicates the media transmitter type of the port. The value may be: unknown(1) cannot determined to the port driver lw(2) long wave laser sw(3) short wave laser ld(4) long wave LED cu(5) copper (electrical)."</p>|`SNMP agent`|swFCPortTxType[{#SNMPVALUE}]<p>Update: 300</p>|
|Multicast frames transmitted on port $1 (LLD)|<p>"This object counts the number of Multicast frames that has been transmitted."</p>|`SNMP agent`|swFCPortTxMcasts[{#SNMPVALUE}]<p>Update: 300</p>|
|Frames transmitted on port $1 (LLD)|<p>"This object counts the number of (Fibre Channel) frames that the port has transmitted."</p>|`SNMP agent`|swFCPortTxFrames[{#SNMPVALUE}]<p>Update: 300</p>|
|Speed of port $1 (LLD)|<p>"The desired baud rate for the port. It can have the values of 1GB (1), 2GB (2), Auto-Negotiate (3), 4GB (4), 8GB (5), 10GB (6), 16GB (8). Some of the above values may not be supported by all type of switches."</p>|`SNMP agent`|swFCPortSpeed[{#SNMPVALUE}]<p>Update: 300</p>|
|Words received on port $1 (LLD)|<p>"This object counts the number of Fibre Channel words that the port has received."</p>|`SNMP agent`|swFCPortRxWords[{#SNMPVALUE}]<p>Update: 300</p>|
|Truncated frames received on port $1 (LLD)|<p>"This object counts the number of truncated frames that the port has received."</p>|`SNMP agent`|swFCPortRxTruncs[{#SNMPVALUE}]<p>Update: 300</p>|
|Multicast frames received on port $1 (LLD)|<p>"This object counts the number of Multicast frames that the port has received."</p>|`SNMP agent`|swFCPortRxMcasts[{#SNMPVALUE}]<p>Update: 300</p>|
|Description of port $1 (LLD)|<p>"A string indicates the name of the addressed port. The names should be persistent across switch reboots. Port names do not have to be unique within a switch or within a fabric."</p>|`SNMP agent`|swFCPortName[{#SNMPVALUE}]<p>Update: 300</p>|
|Frames received on port $1 (LLD)|<p>"This object counts the number of (Fibre Channel) frames that the port has received."</p>|`SNMP agent`|swFCPortRxFrames[{#SNMPVALUE}]<p>Update: 300</p>|
|Disparity errors received on port $1 (LLD)|<p>"This object counts the number of encoding error or disparity error outside frames received."</p>|`SNMP agent`|swFCPortRxEncOutFrs[{#SNMPVALUE}]<p>Update: 300</p>|
|Encoding or disparity errors in frames received on port $1 (LLD)|<p>"This object counts the number of encoding error or disparity error inside frames received."</p>|`SNMP agent`|swFCPortRxEncInFrs[{#SNMPVALUE}]<p>Update: 300</p>|
|CRC errors received on port $1 (LLD)|<p>"This object counts the number of CRC errors detected for frames received."</p>|`SNMP agent`|swFCPortRxCrcs[{#SNMPVALUE}]<p>Update: 300</p>|
|Class3 frames received on port $1 (LLD)|<p>"This object counts the number of Class 3 frames that the port has received."</p>|`SNMP agent`|swFCPortRxC3Frames[{#SNMPVALUE}]<p>Update: 300</p>|
|Class2 frames received on port $1 (LLD)|<p>"This object counts the number of Class 2 frames that the port has received."</p>|`SNMP agent`|swFCPortRxC2Frames[{#SNMPVALUE}]<p>Update: 300</p>|
|Bad EOF delimited frames received on port $1 (LLD)|<p>"This object counts the number of received frames that have bad EOF delimiter."</p>|`SNMP agent`|swFCPortRxBadEofs[{#SNMPVALUE}]<p>Update: 300</p>|
|Operational status of port $1 (LLD)|<p>"This object identifies the operational status of the port. The online(1) state indicates that user frames can be passed. The unknown(0) state indicates that likely the port module is physically absent (see swFCPortPhyState)."</p>|`SNMP agent`|swFCPortOpStatus[{#SNMPVALUE}]<p>Update: 300</p>|
|WWN of port $1 (LLD)|<p>"The World_wide_Name of the Fibre Channel port. The contents of an instance are in the IEEE extended format as specified in FC-PH; the 12-bit port identifier represents the port number within the switch."</p>|`SNMP agent`|swFCPortWwn[{#SNMPVALUE}]<p>Update: 300</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Error(s) was detected on {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {KHP-BROCADE-FC-PORT:swFCPortRxCrcs[{#SNMPVALUE}].last(0)}>0 or {KHP-BROCADE-FC-PORT:swFCPortRxBadEofs[{#SNMPVALUE}].avg(1)}>0 or {KHP-BROCADE-FC-PORT:swFCPortRxEncOutFrs[{#SNMPVALUE}].avg(1)}>0 or {KHP-BROCADE-FC-PORT:swFCPortRxTooLongs[{#SNMPVALUE}].avg(1)}>0 or {KHP-BROCADE-FC-PORT:swFCPortRxTruncs[{#SNMPVALUE}].avg(1)}>0</p><p>**Recovery expression**: </p>|average|
|Operational status {HOST.NAME} has changed on port {#SNMPVALUE}|<p>-</p>|<p>**Expression**: {KHP-BROCADE-FC-PORT:swFcPortAdmStatus[{#SNMPVALUE}].prev()}<1 and {KHP-BROCADE-FC-PORT:swFCPortOpStatus[{#SNMPVALUE}].prev()}<>1</p><p>**Recovery expression**: </p>|average|
|Error(s) was detected on {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {KHP-BROCADE-FC-PORT:swFCPortRxCrcs[{#SNMPVALUE}].last(0)}>0 or {KHP-BROCADE-FC-PORT:swFCPortRxBadEofs[{#SNMPVALUE}].avg(1)}>0 or {KHP-BROCADE-FC-PORT:swFCPortRxEncOutFrs[{#SNMPVALUE}].avg(1)}>0 or {KHP-BROCADE-FC-PORT:swFCPortRxTooLongs[{#SNMPVALUE}].avg(1)}>0 or {KHP-BROCADE-FC-PORT:swFCPortRxTruncs[{#SNMPVALUE}].avg(1)}>0</p><p>**Recovery expression**: </p>|average|
|Operational status {HOST.NAME} has changed on port {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: {KHP-BROCADE-FC-PORT:swFcPortAdmStatus[{#SNMPVALUE}].prev()}<1 and {KHP-BROCADE-FC-PORT:swFCPortOpStatus[{#SNMPVALUE}].prev()}<>1</p><p>**Recovery expression**: </p>|average|
