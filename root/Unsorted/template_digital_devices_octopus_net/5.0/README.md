# Octopus NET DD Bridge satelite mon

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
|tuner 3 SNR|<p>-</p>|`Dependent item`|tuner3_snr<p>Update: 0</p>|
|tuners mon|<p>Collect all statistics from json on device</p>|`HTTP agent`|tuners_info<p>Update: 30s</p>|
|Tuner 1 LOCK|<p>-</p>|`Dependent item`|tuner1_lock<p>Update: 0</p>|
|Tuner 3 LOCK|<p>-</p>|`Dependent item`|tuner3_lock<p>Update: 0</p>|
|tuner 1 SNR|<p>-</p>|`Dependent item`|tuner1_snr<p>Update: 0</p>|
|Tuner 2 LOCK|<p>-</p>|`Dependent item`|tuner2_lock<p>Update: 0</p>|
|tuner 2 SNR|<p>-</p>|`Dependent item`|tuner2_snr<p>Update: 0</p>|
|Tuner 4 LOCK|<p>-</p>|`Dependent item`|tuner4_lock<p>Update: 0</p>|
|tuner 4 SNR|<p>-</p>|`Dependent item`|tuner4_snr<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|Tuner 1 has lost LOCK!!!|<p>-</p>|disaster|
|tuner 1 SNR too low|<p>-</p>|high|
|Tuner 2 has lost LOCK!!!|<p>-</p>|disaster|
|tuner 2 SNR too low|<p>-</p>|high|
|Tuner 3 has lost LOCK!!!|<p>-</p>|disaster|
|tuner 3 SNR too low|<p>-</p>|high|
|Tuner 4 has lost LOCK!!!|<p>-</p>|disaster|
|tuner 4 SNR too low|<p>-</p>|high|
