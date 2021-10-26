# Container Monitoring

## Overview

Template desenvolvido para monitorar containers.


- Esse template explora o recurso de integração nativa do Zabbix com o Prometheus.


- Com excessão do item master, todos os demais items, além das triggers e gráficos, serão criados por LLD.


- No campo URL do item master, foi declarado uma macro. Para setar o valor dessa macro, deve-se linkar o template no host, herdar a macro e setar o valor à nível de host.


- A URL declarada, será usada pelo o Zabbix para extrair as métricas expostas em determinada porta pelo o exporter cAdvisor.


- A URL deve seguir o seguinte formato: [http://ip\_ou\_dns:port/metrics](http://ip_ou_dnsport) ou [https://ip\_ou\_dns:port/metrics](https://ip_ou_dnsport)


- O IP/DNS, aponta para o servidor onde os containers estão rodando.


- A porta deve ser a mesma que o cAdvisor utiliza para expor as métricas. Por padrão é a 8080.


- O Template foi desenvolvido na versão 4.4.1 do Zabbix.



## Author

Lucas de Araújo

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$URL}|<p>A URL deve seguir o seguinte formato - http://ip_ou_dns:port/metrics</p>|``|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|LLD - container_memory_swap|<p>-</p>|`Dependent item`|container_memory_swap<p>Update: 0</p>|
|LLD - container_cpu_load_average_10s|<p>-</p>|`Dependent item`|container_cpu_load_average_10s<p>Update: 0</p>|
|LLD - container_fs_reads_merged_total|<p>-</p>|`Dependent item`|container_fs_reads_merged_total<p>Update: 0</p>|
|LLD - container_memory_working_set_bytes|<p>-</p>|`Dependent item`|container_memory_working_set_bytes<p>Update: 0</p>|
|LLD - container_network_transmit_packets_total|<p>-</p>|`Dependent item`|container_network_transmit_packets_total<p>Update: 0</p>|
|LLD - container_spec_cpu_period|<p>-</p>|`Dependent item`|container_spec_cpu_period<p>Update: 0</p>|
|LLD - container_cpu_user_seconds_total|<p>-</p>|`Dependent item`|container_cpu_user_seconds_total<p>Update: 0</p>|
|LLD - container_memory_cache|<p>-</p>|`Dependent item`|container_memory_cache<p>Update: 0</p>|
|LLD - container_fs_io_time_weighted_seconds_total|<p>-</p>|`Dependent item`|container_fs_io_time_weighted_seconds_total<p>Update: 0</p>|
|LLD - container_fs_sector_reads_total|<p>-</p>|`Dependent item`|container_fs_sector_reads_total<p>Update: 0</p>|
|LLD - container_last_seen|<p>-</p>|`Dependent item`|container_last_seen<p>Update: 0</p>|
|LLD - container_memory_rss|<p>-</p>|`Dependent item`|container_memory_rss<p>Update: 0</p>|
|LLD - container_memory_usage_bytes|<p>-</p>|`Dependent item`|container_memory_usage_bytes<p>Update: 0</p>|
|LLD - container_fs_writes_bytes_total|<p>-</p>|`Dependent item`|container_fs_writes_bytes_total<p>Update: 0</p>|
|LLD - container_fs_writes_total|<p>-</p>|`Dependent item`|container_fs_writes_total<p>Update: 0</p>|
|LLD - container_fs_read_seconds_total|<p>-</p>|`Dependent item`|container_fs_read_seconds_total<p>Update: 0</p>|
|LLD - container_memory_failures_total|<p>-</p>|`Dependent item`|container_memory_failures_total<p>Update: 0</p>|
|LLD - container_fs_inodes_free|<p>-</p>|`Dependent item`|container_fs_inodes_free<p>Update: 0</p>|
|LLD - container_spec_memory_swap_limit_bytes|<p>-</p>|`Dependent item`|container_spec_memory_swap_limit_bytes<p>Update: 0</p>|
|LLD - container_start_time_seconds|<p>-</p>|`Dependent item`|container_start_time_seconds<p>Update: 0</p>|
|LLD - container_network_transmit_packets_dropped_total|<p>-</p>|`Dependent item`|container_network_transmit_packets_dropped_total<p>Update: 0</p>|
|LLD - container_scrape_error|<p>-</p>|`Dependent item`|container_scrape_error<p>Update: 0</p>|
|LLD - container_fs_write_seconds_total|<p>-</p>|`Dependent item`|container_fs_write_seconds_total<p>Update: 0</p>|
|LLD - container_fs_sector_writes_total|<p>-</p>|`Dependent item`|container_fs_sector_writes_total<p>Update: 0</p>|
|LLD - container_network_transmit_errors_total|<p>-</p>|`Dependent item`|container_network_transmit_errors_total<p>Update: 0</p>|
|LLD - container_fs_reads_total|<p>-</p>|`Dependent item`|container_fs_reads_total<p>Update: 0</p>|
|LLD - container_cpu_usage_seconds_total|<p>-</p>|`Dependent item`|container_cpu_usage_seconds_total<p>Update: 0</p>|
|LLD - container_network_receive_packets_dropped_total|<p>-</p>|`Dependent item`|container_network_receive_packets_dropped_total<p>Update: 0</p>|
|LLD - container_network_transmit_bytes_total|<p>-</p>|`Dependent item`|container_network_transmit_bytes_total<p>Update: 0</p>|
|LLD - container_network_tcp_usage_total|<p>-</p>|`Dependent item`|container_network_tcp_usage_total<p>Update: 0</p>|
|LLD - container_network_udp_usage_total|<p>-</p>|`Dependent item`|container_network_udp_usage_total<p>Update: 0</p>|
|LLD - container_network_receive_packets_total|<p>-</p>|`Dependent item`|container_network_receive_packets_total<p>Update: 0</p>|
|LLD - container_network_receive_bytes_total|<p>-</p>|`Dependent item`|container_network_receive_bytes_total<p>Update: 0</p>|
|LLD - container_cpu_system_seconds_total|<p>-</p>|`Dependent item`|container_cpu_system_seconds_total<p>Update: 0</p>|
|LLD - container_fs_usage_bytes|<p>-</p>|`Dependent item`|container_fs_usage_bytes<p>Update: 0</p>|
|LLD - container_tasks_state|<p>-</p>|`Dependent item`|container_tasks_state<p>Update: 0</p>|
|LLD - container_fs_io_current|<p>-</p>|`Dependent item`|container_fs_io_current<p>Update: 0</p>|
|LLD - container_fs_reads_bytes_total|<p>-</p>|`Dependent item`|container_fs_reads_bytes_total<p>Update: 0</p>|
|LLD - container_fs_writes_merged_total|<p>-</p>|`Dependent item`|container_fs_writes_merged_total<p>Update: 0</p>|
|LLD - container_memory_failcnt|<p>-</p>|`Dependent item`|container_memory_failcnt<p>Update: 0</p>|
|LLD - container_spec_memory_limit_bytes|<p>-</p>|`Dependent item`|container_spec_memory_limit_bytes<p>Update: 0</p>|
|LLD - container_fs_limit_bytes|<p>-</p>|`Dependent item`|container_fs_limit_bytes<p>Update: 0</p>|
|LLD - container_fs_inodes_total|<p>-</p>|`Dependent item`|container_fs_inodes_total<p>Update: 0</p>|
|LLD - container_spec_cpu_shares|<p>-</p>|`Dependent item`|container_spec_cpu_shares<p>Update: 0</p>|
|LLD - container_fs_io_time_seconds_total|<p>-</p>|`Dependent item`|container_fs_io_time_seconds_total<p>Update: 0</p>|
|LLD - container_network_receive_errors_total|<p>-</p>|`Dependent item`|container_network_receive_errors_total<p>Update: 0</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|cAdvisor Exporter|<p>-</p>|`HTTP agent`|master<p>Update: 5m</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_swap[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} on {#ID}|<p>{#HELP}</p>|`Dependent item`|cpu[{#METRIC},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_reads_merged_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_working_set_bytes[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_transmit_packets_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_spec_cpu_period[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_cpu_user_seconds_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_cache[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_io_time_weighted_seconds_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_sector_reads_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_last_seen[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_rss[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_usage_bytes[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_writes_bytes_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_writes_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_read_seconds_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_failures_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} | id={#ID} | image={#IMAGE} | name={#NAME}|<p>{#HELP}</p>|`Dependent item`|container_fs_inodes_free[{#DEVICE},{#ID},{#IMAGE},{#NAME}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_spec_memory_swap_limit_bytes[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_start_time_seconds[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_transmit_packets_dropped_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC}|<p>{#HELP}</p>|`Dependent item`|err[{#METRIC}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_write_seconds_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_sector_writes_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_transmit_errors_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_reads_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} na cpu={#CPUI} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_cpu_usage_seconds_total[{#CPU},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_receive_packets_dropped_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_transmit_bytes_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_tcp_usage_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_udp_usage_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_receive_packets_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_receive_bytes_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_cpu_system_seconds_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_usage_bytes[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID} e state={#STATE}|<p>Number of tasks in running state</p>|`Dependent item`|container_tasks_state[{#ID},{#STATE}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_io_current[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_reads_bytes_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_writes_merged_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_memory_failcnt[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_spec_memory_limit_bytes[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_limit_bytes[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} | id={#ID} | image={#IMAGE} | name={#NAME}|<p>{#HELP}</p>|`Dependent item`|container_fs_inodes_total[{#DEVICE},{#ID},{#IMAGE},{#NAME}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_spec_cpu_shares[{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_fs_io_time_seconds_total[{#DEVICE},{#ID}]<p>Update: 0</p><p>LLD</p>|
|{#METRIC} no id={#ID}|<p>{#HELP}</p>|`Dependent item`|container_network_receive_errors_total[{#ID}]<p>Update: 0</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:cpu[{#METRIC},{#ID}].last()}>0</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_cpu_system_seconds_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} na cpu={#CPUI} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_cpu_usage_seconds_total[{#CPU},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_cpu_user_seconds_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_io_current[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_io_time_seconds_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_io_time_weighted_seconds_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_limit_bytes[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_reads_bytes_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_reads_merged_total[{#DEVICE},{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_reads_total[{#DEVICE},{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_read_seconds_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_sector_reads_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_sector_writes_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_usage_bytes[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_writes_bytes_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_writes_merged_total[{#DEVICE},{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_writes_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_write_seconds_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_last_seen[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_cache[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_failcnt[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_failures_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_rss[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_swap[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_usage_bytes[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_working_set_bytes[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_receive_bytes_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_receive_errors_total[{#ID}].last()}>10</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_receive_packets_dropped_total[{#ID}].last()}>10</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_receive_packets_total[{#ID}].last()}>1000</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_tcp_usage_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_transmit_bytes_total[{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_transmit_errors_total[{#ID}].last()}>10</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_transmit_packets_dropped_total[{#ID}].last()}>10</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_transmit_packets_total[{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID}|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_udp_usage_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC}|<p>-</p>|<p>**Expression**: {Container Monitoring:err[{#METRIC}].last()}>0</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} foi reiniciado|<p>-</p>|<p>**Expression**: {Container Monitoring:container_start_time_seconds[{#ID}].change(0)}<0</p><p>**Recovery expression**: </p>|disaster|
|{#METRIC} no id={#ID} não está em execução|<p>-</p>|<p>**Expression**: {Container Monitoring:container_tasks_state[{#ID},{#STATE}].last()}=0</p><p>**Recovery expression**: </p>|disaster|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_swap[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:cpu[{#METRIC},{#ID}].last()}>0</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_reads_merged_total[{#DEVICE},{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_working_set_bytes[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_transmit_packets_total[{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_cpu_user_seconds_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_cache[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_io_time_weighted_seconds_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_sector_reads_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_last_seen[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_rss[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_usage_bytes[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_writes_bytes_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_writes_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_read_seconds_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_failures_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} foi reiniciado (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_start_time_seconds[{#ID}].change(0)}<0</p><p>**Recovery expression**: </p>|disaster|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_transmit_packets_dropped_total[{#ID}].last()}>10</p><p>**Recovery expression**: </p>|average|
|{#METRIC} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:err[{#METRIC}].last()}>0</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_write_seconds_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_sector_writes_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_transmit_errors_total[{#ID}].last()}>10</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_reads_total[{#DEVICE},{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} na cpu={#CPUI} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_cpu_usage_seconds_total[{#CPU},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_receive_packets_dropped_total[{#ID}].last()}>10</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_transmit_bytes_total[{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_tcp_usage_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_udp_usage_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_receive_packets_total[{#ID}].last()}>1000</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_receive_bytes_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_cpu_system_seconds_total[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_usage_bytes[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} não está em execução (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_tasks_state[{#ID},{#STATE}].last()}=0</p><p>**Recovery expression**: </p>|disaster|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_io_current[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_reads_bytes_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_writes_merged_total[{#DEVICE},{#ID}].last()}>100</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_memory_failcnt[{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_limit_bytes[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no device={#DEVICE} e id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_fs_io_time_seconds_total[{#DEVICE},{#ID}].last()}>50</p><p>**Recovery expression**: </p>|average|
|{#METRIC} no id={#ID} (LLD)|<p>-</p>|<p>**Expression**: {Container Monitoring:container_network_receive_errors_total[{#ID}].last()}>10</p><p>**Recovery expression**: </p>|average|
