# Template Checkpoint VPN-1

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
|VPN Decrypted Packets/s|<p>-</p>|`SNMP agent`|cpvDecPackets<p>Update: 120</p>|
|Current Outbound IPSec SAs|<p>-</p>|`SNMP agent`|cpvCurrEspSAsOut<p>Update: 120</p>|
|Current IKE SAs|<p>-</p>|`SNMP agent`|cpvIKECurrSAs<p>Update: 120</p>|
|Current Inbound IPSec SAs|<p>-</p>|`SNMP agent`|cpvCurrEspSAsIn<p>Update: 120</p>|
|VPN Encrypted Packets/s|<p>-</p>|`SNMP agent`|cpvEncPackets<p>Update: 120</p>|
## Triggers

There are no triggers in this template.

