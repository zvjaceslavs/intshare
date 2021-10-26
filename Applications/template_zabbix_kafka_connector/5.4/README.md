# Kafka Connector

## Overview

 Read my zabbix blog soon..



## Author

Ronald Schouw

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Connector discovery|<p>-</p>|`Zabbix agent`|connector.discovery<p>Update: 5m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|State of {#CONNECTOR}  connector|<p>Check the state of a Kafka connector. Value's PAUSED RUNNING or FAILED.</p>|`Zabbix agent`|state[{#CONNECTOR}]<p>Update: 5m</p><p>LLD</p>|
|State of {#CONNECTOR_ID} task|<p>Check the state of a Kafka connector task. Value's PAUSED RUNNING or FAILED.</p>|`Zabbix agent`|task[{#CONNECTOR_ID}]<p>Update: 5m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Kafka Connector {#CONNECTOR} on {HOST.NAME} is FAILED|<p>-</p>|<p>**Expression**: find(/Kafka Connector/state[{#CONNECTOR}],,"like","FAILED")=1</p><p>**Recovery expression**: </p>|not classified|
|Kafka Connector {#CONNECTOR} on {HOST.NAME} is not RUNNING|<p>Update this issue to the OC Team</p>|<p>**Expression**: find(/Kafka Connector/state[{#CONNECTOR}],6h,"like","RUNNING")=0 and find(/Kafka Connector/state[{#CONNECTOR}],,"like","FAILED")=1</p><p>**Recovery expression**: </p>|warning|
|Kafka Connector task {#CONNECTOR_ID} on {HOST.NAME} is FAILED|<p>Needed for restart a connector task. NEVER EVER CHANGE URL ABOVE !! Used by remote action "Restart Kafka Connector Task" The conector task should get the state RUNNING.</p>|<p>**Expression**: find(/Kafka Connector/task[{#CONNECTOR_ID}],,"like","FAILED")=1</p><p>**Recovery expression**: </p>|not classified|
|Kafka Connector task {#CONNECTOR_ID} on {HOST.NAME} is not RUNNING|<p>Update this issue to the OC Team</p>|<p>**Expression**: find(/Kafka Connector/task[{#CONNECTOR_ID}],6h,"like","RUNNING")=0 and find(/Kafka Connector/task[{#CONNECTOR_ID}],,"like","FAILED")=1</p><p>**Recovery expression**: </p>|warning|
|Kafka Connector {#CONNECTOR} on {HOST.NAME} is FAILED (LLD)|<p>-</p>|<p>**Expression**: find(/Kafka Connector/state[{#CONNECTOR}],,"like","FAILED")=1</p><p>**Recovery expression**: </p>|not classified|
|Kafka Connector {#CONNECTOR} on {HOST.NAME} is not RUNNING (LLD)|<p>Update this issue to the OC Team</p>|<p>**Expression**: find(/Kafka Connector/state[{#CONNECTOR}],6h,"like","RUNNING")=0 and find(/Kafka Connector/state[{#CONNECTOR}],,"like","FAILED")=1</p><p>**Recovery expression**: </p>|warning|
|Kafka Connector task {#CONNECTOR_ID} on {HOST.NAME} is FAILED (LLD)|<p>Needed for restart a connector task. NEVER EVER CHANGE URL ABOVE !! Used by remote action "Restart Kafka Connector Task" The conector task should get the state RUNNING.</p>|<p>**Expression**: find(/Kafka Connector/task[{#CONNECTOR_ID}],,"like","FAILED")=1</p><p>**Recovery expression**: </p>|not classified|
|Kafka Connector task {#CONNECTOR_ID} on {HOST.NAME} is not RUNNING (LLD)|<p>Update this issue to the OC Team</p>|<p>**Expression**: find(/Kafka Connector/task[{#CONNECTOR_ID}],6h,"like","RUNNING")=0 and find(/Kafka Connector/task[{#CONNECTOR_ID}],,"like","FAILED")=1</p><p>**Recovery expression**: </p>|warning|
