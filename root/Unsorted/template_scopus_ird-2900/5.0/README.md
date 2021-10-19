# Template Scopus IRD-2900 SNMP Sensors

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|SatteliteStatus.BER|<p>Viterbi Bit Error Rate. Uncorrected FEC bits errors. BER is measured over 10^7 symbols.</p>|`SNMP agent`|.1.3.6.1.4.1.4466.1.2.10.1.1.1.2.1.5.1392508928<p>Update: 30</p>|
|SatteliteStatus.EbN0|<p>Received signal Eb/N0 measurement</p>|`SNMP agent`|.1.3.6.1.4.1.4466.1.2.10.1.1.1.2.1.3.1392508928<p>Update: 30</p>|
|SatteliteStatus.SignalQuality|<p>Signal Quality – Qualitative indicator of the received signal C/N relative to the maximum C/N that can be measured without forcing the receiver to saturation. The signal quality is calculated by: SQ[%]=C/N [dB]/36 *100</p>|`SNMP agent`|.1.3.6.1.4.1.4466.1.2.10.1.1.1.2.1.6.1392508928<p>Update: 30</p>|
|SatteliteStatus.LinkMargin|<p>Link Margin – Estimated C/N of the received signal relative to the C/N in EN 300-421 for a given FEC rate.</p>|`SNMP agent`|.1.3.6.1.4.1.4466.1.2.10.1.1.1.2.1.4.1392508928<p>Update: 30</p>|
|SatteliteStatus.CN|<p>Shows the Carrier to Noise ratio</p>|`SNMP agent`|.1.3.6.1.4.1.4466.1.2.10.1.1.1.2.1.9.1392508928<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Link Margin is less than 1.0 dB|<p>Link Margin is less than 1 dB for last 1 minute</p>|warning|
|Signal Quality is low|<p>Signal Quality is less than 30% for last 2 minutes.</p>|information|
