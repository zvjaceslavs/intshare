# Draytek Vigor 130 (v1.0)

## Description

Template for the Draytek Vigor 130 VDSL Modem.

## Overview

Simple SNMP agent for the Draytek Vigor 130 ADSL/VDSL Modem.


Provides the following:


Items


* LAN Status
* LAN Traffic IN
* LAN Traffic OUT
* Uptime
* VDSL Rx Attenuation
* VDSL Rx Rate (Actual)
* VDSL Rx Rate (Attainable)
* VDSL Rx SNR Margin
* VDSL Tx (Actual)
* VSDL Upstream Noise
* WAN1 Status
* WAN1 Traffic IN
* WAN1 Traffic OUT


Graphs


* Actual Tx Rates
* LAN Traffic
* WAN1 Traffic
* WAN Attainable vs. Actual Rx Rates
* WAN Noise Levels


Triggers


* Device has just been restarted
* LAN is down
* WAN1 down


## Author

Sean Gordon

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|VDSL Rx Rate (Actual)|<p>Actual transmit rate on this channel.</p>|`SNMP agent`|adslAtucChanCurrTxRate.4<p>Update: 30</p>|
|VSDL Upstream Noise|<p>Measured total output power transmitted by this ATU. This is the measurement that was reported during the last activation sequence.</p>|`SNMP agent`|adslAturCurrOutputPwr.4<p>Update: 30</p>|
|WAN1 Status|<p>-</p>|`SNMP agent`|ifOperStatus.4<p>Update: 30</p>|
|VDSL Rx Attenuation|<p>Measured difference in the total power transmitted by the peer ATU and the total power received by this ATU.</p>|`SNMP agent`|adslAturCurrAtn.4<p>Update: 30</p>|
|VDSL Tx (Actual)|<p>Actual transmit rate on this channel.</p>|`SNMP agent`|adslAturChanCurrTxRate.4<p>Update: 30</p>|
|VDSL Rx Rate (Attainable)|<p>Indicates the maximum currently attainable data rate by the ATU. This value will be equal or greater than the current line rate.</p>|`SNMP agent`|adslAturCurrAttainableRate.4<p>Update: 30</p>|
|LAN Status|<p>-</p>|`SNMP agent`|ifOperStatus.1<p>Update: 30</p>|
|Uptime|<p>-</p>|`SNMP agent`|sysUpTimeInstance<p>Update: 30</p>|
|LAN Traffic OUT|<p>-</p>|`SNMP agent`|ifOutOctects.1<p>Update: 30</p>|
|LAN Traffic IN|<p>-</p>|`SNMP agent`|ifInOctects.1<p>Update: 30</p>|
|VDSL Rx SNR Margin|<p>Noise Margin as seen by this ATU with respect to its received signal in tenth dB.</p>|`SNMP agent`|adslAturCurrSnrMgn.4<p>Update: 30</p>|
|WAN1 Traffic OUT|<p>-</p>|`SNMP agent`|ifOutOctects.4<p>Update: 30</p>|
|WAN1 Traffic IN|<p>-</p>|`SNMP agent`|ifInOctects.4<p>Update: 30</p>|
## Triggers

There are no triggers in this template.

