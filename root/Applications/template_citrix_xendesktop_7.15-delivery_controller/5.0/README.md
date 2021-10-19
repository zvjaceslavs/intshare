# C24_CVAD-715_Broker_v1.00

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$CTX_LIC_SRV}|<p>-</p>|`add your host name`|Text macro|
|{$DB_SRV}|<p>-</p>|`add your host name`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Broker_CitrixDelegatedAdmin|<p>-</p>|`Zabbix agent`|service.info[CitrixDelegatedAdmin]<p>Update: 1m</p>|
|Broker_Event_1150|<p>-</p>|`Zabbix agent (active)`|eventlog[Application,,Information,"Citrix Broker Service",1150,,]<p>Update: 1m</p>|
|Broker_CitrixEnvTest|<p>-</p>|`Zabbix agent`|service.info[CitrixEnvTest]<p>Update: 1m</p>|
|Broker_CitrixConnector|<p>-</p>|`Zabbix agent`|service.info[CitrixConnector]<p>Update: 1m</p>|
|Broker_CitrixAnalytics|<p>-</p>|`Zabbix agent`|service.info[CitrixAnalytics]<p>Update: 1m</p>|
|Broker_Event_3500|<p>The Citrix Broker Service has detected that the issue with communication with the database has been resolved and will resume normal brokering activity using configuration in the main site database.</p>|`Zabbix agent (active)`|eventlog[Application,,Information,,3500,,]<p>Update: 1m</p>|
|Broker_CitrixADIdentityService|<p>-</p>|`Zabbix agent`|service.info[CitrixADIdentityService]<p>Update: 1m</p>|
|Broker_CitrixOrchestration|<p>-</p>|`Zabbix agent`|service.info[CitrixOrchestration]<p>Update: 1m</p>|
|Broker_CitrixMonitor|<p>-</p>|`Zabbix agent`|service.info[CitrixMonitor]<p>Update: 1m</p>|
|Broker_Event_1201|<p>The connection between the Citrix Broker Service and the database has been lost.</p>|`Zabbix agent (active)`|eventlog[Application,,Warning,"Citrix Broker Service",1201,,]<p>Update: 1m</p>|
|Broker_PerfCounter_Brokered Sessions|<p>-</p>|`Zabbix agent`|perf_counter[\Citrix Broker Service\Brokered Sessions,]<p>Update: 1m</p>|
|Broker_Event_1151|<p>-</p>|`Zabbix agent (active)`|eventlog[Application,,Error,"Citrix Broker Service",1151,,]<p>Update: 1m</p>|
|Broker_Event_1169|<p>Controller {HOSTNAME} has entered the out-of-box grace period as no suitable licenses were found on the license server {$CTX_LIC_SRV}. You have 281 hour(s) remaining before this controller stops providing desktop and application sessions.</p>|`Zabbix agent (active)`|eventlog[Application,,,,1169,,]<p>Update: 1m</p>|
|Broker_Event_1200|<p>The connection between the Citrix Broker Service and the database has been restored.</p>|`Zabbix agent (active)`|eventlog[Application,,Information,"Citrix Broker Service",1200,,]<p>Update: 1m</p>|
|Broker_CitrixMachineCreationService|<p>-</p>|`Zabbix agent`|service.info[CitrixMachineCreationService]<p>Update: 1m</p>|
|Broker_CitrixConfigSyncService|<p>-</p>|`Zabbix agent`|service.info[CitrixConfigSyncService]<p>Update: 1m</p>|
|Broker_CitrixStorefront|<p>-</p>|`Zabbix agent`|service.info[CitrixStorefront]<p>Update: 1m</p>|
|Broker_Event_1199|<p>-</p>|`Zabbix agent (active)`|eventlog[Application,,,,1199,,]<p>Update: 1m</p>|
|Broker_CitrixTrust|<p>-</p>|`Zabbix agent`|service.info[CitrixTrust]<p>Update: 1m</p>|
|Broker_Event_505|<p>Information An import to the local DB failed; see below for more information</p>|`Zabbix agent (active)`|eventlog[Application,,,,505,,]<p>Update: 1m</p>|
|Broker_CitrixHighAvailabilityService|<p>-</p>|`Zabbix agent`|service.info[CitrixHighAvailabilityService]<p>Update: 1m</p>|
|Broker_CitrixBrokerService|<p>-</p>|`Zabbix agent`|service.info[CitrixBrokerService]<p>Update: 1m</p>|
|Broker_CitrixConfigurationService|<p>-</p>|`Zabbix agent`|service.info[CitrixConfigurationService]<p>Update: 1m</p>|
|Broker_CitrixHostService|<p>-</p>|`Zabbix agent`|service.info[CitrixHostService]<p>Update: 1m</p>|
|Broker_CitrixPrivilegedService|<p>-</p>|`Zabbix agent`|service.info[CitrixPrivilegedService]<p>Update: 1m</p>|
|Broker_Event_1170|<p>The Citrix Broker Service has successfully detected suitable licenses on the license server 'dc01.lab.citrix24.ctx'. This controller is no longer in the out-of-box licensing grace period.</p>|`Zabbix agent (active)`|eventlog[Application,,,,1170,,]<p>Update: 1m</p>|
|Broker_CitrixTelemetryService|<p>-</p>|`Zabbix agent`|service.info[CitrixTelemetryService]<p>Update: 1m</p>|
|Broker_CitrixAppLibrary|<p>-</p>|`Zabbix agent`|service.info[CitrixAppLibrary]<p>Update: 1m</p>|
|Broker_CitrixConfigurationLogging|<p>-</p>|`Zabbix agent`|service.info[CitrixConfigurationLogging]<p>Update: 1m</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|"Citrix AD Identity Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Analytics Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix App Library Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Broker Service" on {HOSTNAME} is unreachable|<p>-</p>|high|
|"Citrix Config Synchronizer Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Configuration Logging Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Configuration Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Delegated Administration Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Environment Test Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix High Availability Service" on {HOSTNAME} is unreachable|<p>-</p>|high|
|"Citrix Host Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Machine Creation Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Monitor Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Orchestration Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Smart Tools Agent Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Storefront Privileged Administration Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Storefront Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Telemetry Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|"Citrix Trust Service" on {HOSTNAME} is unreachable|<p>-</p>|warning|
|Connection from {HOSTNAME} to database has been lost {SOURCE}|<p>-</p>|warning|
|Controller {HOSTNAME} - no suitable licenses were found on the license server {$CTX_LIC_SRV}|<p>Controller {HOSTNAME} has entered the out-of-box grace period as no suitable licenses were found on the license server {$CTX_LIC_SRV}. You have 281 hour(s) remaining before this controller stops providing desktop and application sessions.</p>|high|
|Controller {HOSTNAME} cannot contact database server {$DB_SRV}|<p>-</p>|high|
|Controller {HOSTNAME} cannot contact the license server {$CTX_LIC_SRV}|<p>Controller {HOSTNAME} cannot contact the license server {$CTX_LIC_SRV}. Please ensure that the license server is functioning correctly and that the details identifying the license server are correct in the XenDesktop configuration.</p>|warning|
|The Citrix Config Sync Service on {HOSTNAME} failed an import.|<p>Error details: Security identifier does not represent a Windows account Solution: Remove an orphaned SID of user or security group which already got deleted in Active Directory. For more details visit: https://blog.citrix24.com/xendesktop-7-x-monitoring-template-delivery-controller/</p>|average|
