Template and PHP based monitoring scripts for MSA 2040.
Based on zabbix_sender/zabbix trapper and must be compatible with any version of zabbix (tested only with 3.0)
All information for customization monitored values can be found in HP MSA 2040 CLI Reference Guide.

Advantages:
+ mass update for multiple storages
+ one connection to storage per monitoring group
+ one connection to zabbix server
+ dramatical decreased zabbix server load compare with external check
+ can be offload to any server for decrease zabbix load
+ no need save user credential in monitoring system
+ HA moniroring when one controller down or absent.

Requirements:
php, php-cli, php-common, curl

Installation:
1. Import XML template
2. Create Hosts for MSA Storages
3. Edit php script section Config (username, password, ip, names);
4. Copy php scripts to any location for example 
/usr/local/bin/hpe_msa2040_discovery.php
/usr/local/bin/hpe_msa2040_stats.php
5. Add cron schedule
#once a day discovery
15 3 * * * root php /usr/local/bin/hpe_msa2040_discovery.php >/dev/null 2>/dev/null
#every 10 minutes get stats
*/10 * * * * root php /usr/local/bin/hpe_msa2040_stats.php >/dev/null 2>/dev/null
6. To force update execute 
php /usr/local/bin/hpe_msa2040_discovery.php
php /usr/local/bin/hpe_msa2040_stats.php
