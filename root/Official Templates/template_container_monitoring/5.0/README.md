# Template Container Monitoring

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$URL}|<p>A URL deve seguir o seguinte formato - http://ip_ou_dns:port/metrics</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|LLD - container_cpu_load_average_10s|<p>-</p>|`Dependent item`|container_cpu_load_average_10s<p>Update: 0</p>|
|LLD - container_cpu_system_seconds_total|<p>-</p>|`Dependent item`|container_cpu_system_seconds_total<p>Update: 0</p>|
|LLD - container_cpu_usage_seconds_total|<p>-</p>|`Dependent item`|container_cpu_usage_seconds_total<p>Update: 0</p>|
|LLD - container_cpu_user_seconds_total|<p>-</p>|`Dependent item`|container_cpu_user_seconds_total<p>Update: 0</p>|
|LLD - container_fs_inodes_free|<p>-</p>|`Dependent item`|container_fs_inodes_free<p>Update: 0</p>|
|LLD - container_fs_inodes_total|<p>-</p>|`Dependent item`|container_fs_inodes_total<p>Update: 0</p>|
|LLD - container_fs_io_current|<p>-</p>|`Dependent item`|container_fs_io_current<p>Update: 0</p>|
|LLD - container_fs_io_time_seconds_total|<p>-</p>|`Dependent item`|container_fs_io_time_seconds_total<p>Update: 0</p>|
|LLD - container_fs_io_time_weighted_seconds_total|<p>-</p>|`Dependent item`|container_fs_io_time_weighted_seconds_total<p>Update: 0</p>|
|LLD - container_fs_limit_bytes|<p>-</p>|`Dependent item`|container_fs_limit_bytes<p>Update: 0</p>|
|LLD - container_fs_reads_bytes_total|<p>-</p>|`Dependent item`|container_fs_reads_bytes_total<p>Update: 0</p>|
|LLD - container_fs_read_seconds_total|<p>-</p>|`Dependent item`|container_fs_read_seconds_total<p>Update: 0</p>|
|LLD - container_fs_reads_merged_total|<p>-</p>|`Dependent item`|container_fs_reads_merged_total<p>Update: 0</p>|
|LLD - container_fs_reads_total|<p>-</p>|`Dependent item`|container_fs_reads_total<p>Update: 0</p>|
|LLD - container_fs_sector_reads_total|<p>-</p>|`Dependent item`|container_fs_sector_reads_total<p>Update: 0</p>|
|LLD - container_fs_sector_writes_total|<p>-</p>|`Dependent item`|container_fs_sector_writes_total<p>Update: 0</p>|
|LLD - container_fs_usage_bytes|<p>-</p>|`Dependent item`|container_fs_usage_bytes<p>Update: 0</p>|
|LLD - container_fs_writes_bytes_total|<p>-</p>|`Dependent item`|container_fs_writes_bytes_total<p>Update: 0</p>|
|LLD - container_fs_write_seconds_total|<p>-</p>|`Dependent item`|container_fs_write_seconds_total<p>Update: 0</p>|
|LLD - container_fs_writes_merged_total|<p>-</p>|`Dependent item`|container_fs_writes_merged_total<p>Update: 0</p>|
|LLD - container_fs_writes_total|<p>-</p>|`Dependent item`|container_fs_writes_total<p>Update: 0</p>|
|LLD - container_last_seen|<p>-</p>|`Dependent item`|container_last_seen<p>Update: 0</p>|
|LLD - container_memory_cache|<p>-</p>|`Dependent item`|container_memory_cache<p>Update: 0</p>|
|LLD - container_memory_failcnt|<p>-</p>|`Dependent item`|container_memory_failcnt<p>Update: 0</p>|
|LLD - container_memory_failures_total|<p>-</p>|`Dependent item`|container_memory_failures_total<p>Update: 0</p>|
|LLD - container_memory_rss|<p>-</p>|`Dependent item`|container_memory_rss<p>Update: 0</p>|
|LLD - container_memory_swap|<p>-</p>|`Dependent item`|container_memory_swap<p>Update: 0</p>|
|LLD - container_memory_usage_bytes|<p>-</p>|`Dependent item`|container_memory_usage_bytes<p>Update: 0</p>|
|LLD - container_memory_working_set_bytes|<p>-</p>|`Dependent item`|container_memory_working_set_bytes<p>Update: 0</p>|
|LLD - container_network_receive_bytes_total|<p>-</p>|`Dependent item`|container_network_receive_bytes_total<p>Update: 0</p>|
|LLD - container_network_receive_errors_total|<p>-</p>|`Dependent item`|container_network_receive_errors_total<p>Update: 0</p>|
|LLD - container_network_receive_packets_dropped_total|<p>-</p>|`Dependent item`|container_network_receive_packets_dropped_total<p>Update: 0</p>|
|LLD - container_network_receive_packets_total|<p>-</p>|`Dependent item`|container_network_receive_packets_total<p>Update: 0</p>|
|LLD - container_network_tcp_usage_total|<p>-</p>|`Dependent item`|container_network_tcp_usage_total<p>Update: 0</p>|
|LLD - container_network_transmit_bytes_total|<p>-</p>|`Dependent item`|container_network_transmit_bytes_total<p>Update: 0</p>|
|LLD - container_network_transmit_errors_total|<p>-</p>|`Dependent item`|container_network_transmit_errors_total<p>Update: 0</p>|
|LLD - container_network_transmit_packets_dropped_total|<p>-</p>|`Dependent item`|container_network_transmit_packets_dropped_total<p>Update: 0</p>|
|LLD - container_network_transmit_packets_total|<p>-</p>|`Dependent item`|container_network_transmit_packets_total<p>Update: 0</p>|
|LLD - container_network_udp_usage_total|<p>-</p>|`Dependent item`|container_network_udp_usage_total<p>Update: 0</p>|
|LLD - container_scrape_error|<p>-</p>|`Dependent item`|container_scrape_error<p>Update: 0</p>|
|LLD - container_spec_cpu_period|<p>-</p>|`Dependent item`|container_spec_cpu_period<p>Update: 0</p>|
|LLD - container_spec_cpu_shares|<p>-</p>|`Dependent item`|container_spec_cpu_shares<p>Update: 0</p>|
|LLD - container_spec_memory_limit_bytes|<p>-</p>|`Dependent item`|container_spec_memory_limit_bytes<p>Update: 0</p>|
|LLD - container_spec_memory_swap_limit_bytes|<p>-</p>|`Dependent item`|container_spec_memory_swap_limit_bytes<p>Update: 0</p>|
|LLD - container_start_time_seconds|<p>-</p>|`Dependent item`|container_start_time_seconds<p>Update: 0</p>|
|LLD - container_tasks_state|<p>-</p>|`Dependent item`|container_tasks_state<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|cAdvisor Exporter|<p>-</p>|`HTTP agent`|master<p>Update: 5m</p>|
|{#METRIC} on {#ID}|<p>{#HELP}</p>|`Dependent item`|cpu[{#METRIC},{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_cpu_system_seconds_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} na cpu={#CPUI} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_cpu_usage_seconds_total[{#CPU},{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_cpu_user_seconds_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} | id={#ID} | image={#IMAGE} | name={#NAME}|<p>{#HELP}</p>|`Dependent item`|container_fs_inodes_free[{#DEVICE},{#ID},{#IMAGE},{#NAME}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} | id={#ID} | image={#IMAGE} | name={#NAME}|<p>{#HELP}</p>|`Dependent item`|container_fs_inodes_total[{#DEVICE},{#ID},{#IMAGE},{#NAME}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_io_current[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_io_time_seconds_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_io_time_weighted_seconds_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_limit_bytes[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_reads_bytes_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_read_seconds_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_reads_merged_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_reads_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_sector_reads_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_sector_writes_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_usage_bytes[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_writes_bytes_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_write_seconds_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_writes_merged_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_writes_total[{#DEVICE},{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_last_seen[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_cache[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_failcnt[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_failures_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_rss[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_swap[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_usage_bytes[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_working_set_bytes[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_receive_bytes_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_receive_errors_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_receive_packets_dropped_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_receive_packets_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_tcp_usage_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_transmit_bytes_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_transmit_errors_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_transmit_packets_dropped_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_transmit_packets_total[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_udp_usage_total[{#ID}]<p>Update: 0</p>|
|{#METRIC}|<p>{#HELP}</p>|`Dependent item`|err[{#METRIC}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_spec_cpu_period[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_spec_cpu_shares[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_spec_memory_limit_bytes[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_spec_memory_swap_limit_bytes[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_start_time_seconds[{#ID}]<p>Update: 0</p>|
|{#METRIC} no id={#ID} e state={#STATE}|<p>Number of tasks in running state</p>|`Dependent item`|container_tasks_state[{#ID},{#STATE}]<p>Update: 0</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} na cpu={#CPUI} e id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|average|
|{#METRIC}|<p>-</p>|average|
|{#METRIC} no id={#ID} foi reiniciado|<p>-</p>|disaster|
|{#METRIC} no id={#ID} não está em execução|<p>-</p>|disaster|
