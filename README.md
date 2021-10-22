# Zabbix public templates

## A place for community driven integrations

![Template Repository](https://github.com/zvjaceslavs/intshare/actions/workflows/ci.yml/badge.svg)

Here you can find Zabbix templates that are being supported by the vast and large Zabbix community.

## Contributing
There are many good ways to contribute to community Zabbix templates and integrations
- Fix and report bugs
- Improve documentation
- Review templates and feature proposals
- Answer questions and discuss here on GitHub

## How to use it:
- Download and import template to the supported Zabbix version.
- Configure the template according to the configuration requirements
- Configure a host with template


## Templates
* [Applications](Applications)
    * [1C](Applications/1C)
        * [template_1c_enterprise](Applications/1C/template_1c_enterprise)
            * **Template 1C Enterprise**
        * [template_monitoring_a_cluster_of_1c_servers](Applications/1C/template_monitoring_a_cluster_of_1c_servers)
            * **Monitoring a cluster of 1C servers**<p>The template was presented as a zip archive</p>
        * [template_zbx-1c-server](Applications/1C/template_zbx-1c-server)
            * **zbx-1c-server**<p>The template was presented as a zip archive</p>
    * [Anti-Virus](Applications/Anti-Virus)
        * [template_cortex_xdr](Applications/Anti-Virus/template_cortex_xdr)
            * **Template App Cortex XDR**
        * [template_kaspersky](Applications/Anti-Virus/template_kaspersky)
            * **Template App Kaspersky**
        * [template_kaspersky_security_center_11](Applications/Anti-Virus/template_kaspersky_security_center_11)
            * **SNMP Kaspersky Security Center 11**
    * [Backup](Applications/Backup)
        * [template_arcserve_udp_vm_backup_jobs](Applications/Backup/template_arcserve_udp_vm_backup_jobs)
            * **Template_Arcserve UDP VM Backup Check**
        * [template_asigra_backup_snmp_traps](Applications/Backup/template_asigra_backup_snmp_traps)
            * **Asigra Backup SNMP Traps**
        * [template_backuppc_monitoring](Applications/Backup/template_backuppc_monitoring)
            * **Template App BackupPC by Zabbix agent**<p>The template to monitor BackupPC metrics API by Zabbix agent without need for extra scripts on server. Template Version v0.0.1 - Evren Yurtesen Tested on Zabbix5 and BackupPC 4.4.1 (needs updated metrics)</p>
        * [template_bareos](Applications/Backup/template_bareos)
            * **Bareos**<p>The template was presented as a zip archive</p>
        * [template_nakivo_backup_&_replication](Applications/Backup/template_nakivo_backup_&_replication)
            * **Template Nakivo**
        * [template_restic_backup](Applications/Backup/template_restic_backup)
            * **Template restic backup by Zabbix agent**
            * **Template restic backup by Zabbix agent active**
        * [template_sap_backup_tenant_systemdb](Applications/Backup/template_sap_backup_tenant_systemdb)
            * **Template SAP Backup**
        * [template_symantec_backup_exec_jobs_(russian)](Applications/Backup/template_symantec_backup_exec_jobs_(russian))
            * **Symantec Backup Exec Jobs (Russian)**<p>The template was presented as a zip archive</p>
        * [template_tsm_client_scheduler_service](Applications/Backup/template_tsm_client_scheduler_service)
            * **Template App TSM Client Scheduler**
        * [template_tsm_journal_service](Applications/Backup/template_tsm_journal_service)
            * **Template App TSM Journal Service**
        * [template_veeam_agents_for_microsoft_windows](Applications/Backup/template_veeam_agents_for_microsoft_windows)
            * **Template VEEAM-Agents**
        * [template_veeam_b&r_license_status](Applications/Backup/template_veeam_b&r_license_status)
            * **Veeam B&R License Status**<p>The template was presented as a zip archive</p>
        * [template_veeam_backup_&_replication_by_smtp](Applications/Backup/template_veeam_backup_&_replication_by_smtp)
            * **Template VEEAM SMTP trapper**
        * [template_veritas_symantec_backup_exec_server](Applications/Backup/template_veritas_symantec_backup_exec_server)
            * **Template Backup Exec Server**<p>Veritas/Simantec Backup Exec Server template All checks executes with T-SQL, so you must configure Zabbix to use FreeTDS for MS SQL Server. Backup Jobs ODBC LLD rules: - Backup Exec Windows Service - Backup Exec Jobs (FULL) - Backup Exec Jobs (INCREMENTAL) Two rules needs for creating triggers with different severity levels for Full job types and Incremental job types. Macroses {$BE.USER} and {$BE.PASSWORD} must be set on template or host level before usage. These are username and password to connect to BEDB database. LLD returns {#JOB.TYPE} macros, containig 'FULL' or 'INCR' string to determine backup job type. On database level it's: 16777216 - INCR 16973824 - FULL Documentation will be available soon on my GitHub page (https://github.com/asand3r).</p>
        * [template_zabbix_backups](Applications/Backup/template_zabbix_backups)
            * **Zabbix backup templates**<p>The template was presented as a zip archive</p>
    * [Bug_and_issue_tracking](Applications/Bug_and_issue_tracking)
        * [template_jira_monitoring](Applications/Bug_and_issue_tracking/template_jira_monitoring)
            * **Jira monitoring**<p>The template was presented as a zip archive</p>
    * [Cluster](Applications/Cluster)
        * [template_corosync_status](Applications/Cluster/template_corosync_status)
            * **CoroSync-Ring-0**
        * [template_monitoring_citrix_xenserver_host_and_vms_based_on_python_xenapi](Applications/Cluster/template_monitoring_citrix_xenserver_host_and_vms_based_on_python_xenapi)
            * **Monitoring Citrix XENSERVER Host and VMs based on Python XENApi**<p>The template was presented as a zip archive</p>
        * [template_monitoring_xenserver_xcp_host_and_vms-python](Applications/Cluster/template_monitoring_xenserver_xcp_host_and_vms-python)
            * **Monitoring XenServer/XCP Host and VMs - Python**<p>The template was presented as a zip archive</p>
        * [template_nomad_daemon_monitoring](Applications/Cluster/template_nomad_daemon_monitoring)
            * **Nomad daemon monitoring**<p>The template was presented as a zip archive</p>
        * [template_oracle_exadata](Applications/Cluster/template_oracle_exadata)
            * **Template ILOM ORACLE SRV X8-2 SNMP Trap**<p>Exadata Database Machine X8-2</p>
    * [Clustered_File_Systems](Applications/Clustered_File_Systems)
        * [template_glusterfs_discovery](Applications/Clustered_File_Systems/template_glusterfs_discovery)
            * **Gluster Storage**
    * [DNS](Applications/DNS)
        * [template_()_zone_dns_server](Applications/DNS/template_()_zone_dns_server)
            * **(Template) Zone DNS Server**<p>The template was presented as a zip archive</p>
        * [template_app_powerdns_dnsdist](Applications/DNS/template_app_powerdns_dnsdist)
            * **App PowerDNS dnsdist**<p>Self-contained Zabbix template to get information about PowerDNS dnsdist. Source: https://github.com/frei-style/zabbix-powerdns-dnsdist-template/</p>
        * [template_bind_recursive_queries](Applications/DNS/template_bind_recursive_queries)
            * **Template Bind queries**<p>/etc/zabbix/zabbix_agentd.d/userparameter_bind.conf: UserParameter=bind.tcpcl,/bin/cat /tmp/namedtcp.log UserParameter=bind.udpcl,/bin/cat /tmp/namedudp.log --------------- cron every 30 sec: /var/spool/cron/root: SHELL=/bin/sh PATH=/sbin:/bin:/usr/sbin:/usr/bin 0-59 * * * * /etc/zabbix/custom/named.sh 0-59 * * * * ( sleep 30; /etc/zabbix/custom/named.sh ) /etc/zabbix/custom/named.sh: #!/bin/bash /usr/local/named/sbin/rndc status > /tmp/rndcstatus cat /tmp/rndcstatus | grep tcp | awk '{ print $3 }' | cut -d '/' -f 1 > /tmp/namedtcp.log cat /tmp/rndcstatus | grep recursive | awk '{ print $3 }' | cut -d '/' -f 1 > /tmp/namedudp.log ----------------------------- add key for rndc in config of named</p>
        * [template_bind_stat](Applications/DNS/template_bind_stat)
            * **DNS**
        * [template_knot_resolver](Applications/DNS/template_knot_resolver)
            * **Template Knot Resolver Statistics**<p>Collects statistic values from Knot Resolver</p>
        * [template_net.dns.perf](Applications/DNS/template_net.dns.perf)
            * **net.dns.perf**<p>DNS応答時間測定</p>
        * [template_pihole_daemon_check](Applications/DNS/template_pihole_daemon_check)
            * **pihole-FTL**<p>pihole-FTL [zabbix active agent] check status pihole-FTL service if not "start" send alarm triger</p>
    * [Excel_Export](Applications/Excel_Export)
        * [template_nexus_3xxx](Applications/Excel_Export/template_nexus_3xxx)
            * **NEXUS 3xxx**<p>A template to monitor nexus switch via SNMP</p>
    * [Firewall](Applications/Firewall)
        * [template_fail2ban](Applications/Firewall/template_fail2ban)
            * **Template Fail2ban**
        * [template_forcepoint_ngfw](Applications/Firewall/template_forcepoint_ngfw)
            * **Template Forcepoint NGFW**<p>The template was presented as a zip archive</p>
        * [template_vipnet_ids_snmpv2](Applications/Firewall/template_vipnet_ids_snmpv2)
            * **ViPNet IDS SNMPv2 template**<p>ViPNet IDS SNMPv2 template</p>
        * [template_windows_firewall](Applications/Firewall/template_windows_firewall)
            * **Windows Firewall**<p>The template was presented as a zip archive</p>
    * [High_Availability_(HA)](Applications/High_Availability_(HA))
        * [template_haproxy_using_socket](Applications/High_Availability_(HA)/template_haproxy_using_socket)
            * **HAProxy**
        * [template_keepalived_snmp](Applications/High_Availability_(HA)/template_keepalived_snmp)
            * **Keepalived SNMP**<p>The template was presented as a zip archive</p>
        * [template_linux_virtual_server_statictics](Applications/High_Availability_(HA)/template_linux_virtual_server_statictics)
            * **Linux Virtual Server statictics**<p>The template was presented as a zip archive</p>
        * [template_maxscale_script_discovery](Applications/High_Availability_(HA)/template_maxscale_script_discovery)
            * **MaxScale Script Discovery**<p>The template was presented as a zip archive</p>
        * [template_maxscale_scriptless_discovery](Applications/High_Availability_(HA)/template_maxscale_scriptless_discovery)
            * **Maxscale scriptless discovery**<p>The template was presented as a zip archive</p>
        * [template_traefik_daemon_monitoring](Applications/High_Availability_(HA)/template_traefik_daemon_monitoring)
            * **Traefik daemon monitoring**<p>The template was presented as a zip archive</p>
    * [Java_Application](Applications/Java_Application)
        * [template_app_generic_java_jmx_with_metaspace](Applications/Java_Application/template_app_generic_java_jmx_with_metaspace)
            * **Template App Generic Java JMX**
        * [template_glassfish_webserver](Applications/Java_Application/template_glassfish_webserver)
            * **Template App Glassfish server.jvm**
        * [template_jvm_and_g1_gc_monitoring_with_jmx](Applications/Java_Application/template_jvm_and_g1_gc_monitoring_with_jmx)
            * **Template JVM Generic**
    * [Mail_servers](Applications/Mail_servers)
        * [template_cisco_esa_(_ironport_)_additional_monitoring](Applications/Mail_servers/template_cisco_esa_(_ironport_)_additional_monitoring)
            * **ESA-CISCO XML Status**
        * [template_exchange_2010_client_access_performance_monitoring_(rus)](Applications/Mail_servers/template_exchange_2010_client_access_performance_monitoring_(rus))
            * **Template Exchange Mailbox Servers_RU**
        * [template_exchange_2010_client_access_performance_monitoring_(rus)_1](Applications/Mail_servers/template_exchange_2010_client_access_performance_monitoring_(rus)_1)
            * **Template Exchange Mailbox Servers_RU**
        * [template_exchange_2016-mailboxes](Applications/Mail_servers/template_exchange_2016-mailboxes)
            * **Exchange 2016 - Mailboxes**<p>The template was presented as a zip archive</p>
        * [template_exchange_2016-services](Applications/Mail_servers/template_exchange_2016-services)
            * **Template Microsoft Exchange Server 2016 - Services**
        * [template_exchange_server](Applications/Mail_servers/template_exchange_server)
            * **Exchange Server**<p>The template was presented as a zip archive</p>
        * [template_exchange_server_2016_performance_monitoring](Applications/Mail_servers/template_exchange_server_2016_performance_monitoring)
            * **Template Exchange 2016**
        * [template_exim_stats](Applications/Mail_servers/template_exim_stats)
            * **exim stats**<p>The template was presented as a zip archive</p>
        * [template_fortinet_fortimail](Applications/Mail_servers/template_fortinet_fortimail)
            * **Template Fortimail 60D**
        * [template_mdaemon_fr](Applications/Mail_servers/template_mdaemon_fr)
            * **Template App MDaemon**
        * [template_mdaemon_rus](Applications/Mail_servers/template_mdaemon_rus)
            * **Template App MDaemon**
        * [template_monitor_axigen_with_zabbix](Applications/Mail_servers/template_monitor_axigen_with_zabbix)
            * **Template App Axigen-Services**<p>Axigen template</p>
        * [template_zimbra_collaboration](Applications/Mail_servers/template_zimbra_collaboration)
            * **Template Zimbra**
        * [template_zimbra_statistic](Applications/Mail_servers/template_zimbra_statistic)
            * **Zimbra Statistic Template**<p>The template was presented as a zip archive</p>
        * [template_zimbra_zmcontrol_status](Applications/Mail_servers/template_zimbra_zmcontrol_status)
            * **Template Zimbra**
    * [Misc](Applications/Misc)
        * [template_app_service_tcp_ports](Applications/Misc/template_app_service_tcp_ports)
            * **Template App Service TCP Ports**<p>The template was presented as a zip archive</p>
        * [template_automatically_check_dns_blackhole_lists_(dnsbl)](Applications/Misc/template_automatically_check_dns_blackhole_lists_(dnsbl))
            * **Automatically check DNS Blackhole Lists (DNSBL)**<p>The template was presented as a zip archive</p>
        * [template_lync_2013_front-end_role](Applications/Misc/template_lync_2013_front-end_role)
            * **Lync 2013 Front-End role**<p>The template was presented as a zip archive</p>
        * [template_lync_2013_mediation_role](Applications/Misc/template_lync_2013_mediation_role)
            * **Template App Skype for business Mediation Role**<p>This template assesses the status and overall health of services as well as the performance of the Mediation Microsoft Skype for Business Server 2015. Note: You need to set thresholds for these counters according to your environment. It is recommended to monitor these counters for some period of time to understand potential value ranges and then set the thresholds accordingly. This documentation is based on: https://technet.microsoft.com/en-us/library/gg398616.aspx.</p>
        * [template_vipnet_coordinator_snmp](Applications/Misc/template_vipnet_coordinator_snmp)
            * **VipNet Coordinator SNMP**<p>The template was presented as a zip archive</p>
    * [Monitoring_System](Applications/Monitoring_System)
        * [template_()_zabbix_server_housekeeper_monitor](Applications/Monitoring_System/template_()_zabbix_server_housekeeper_monitor)
            * **(Template) Zabbix Server Housekeeper Monitor**<p>The template was presented as a zip archive</p>
        * [template_bcmstat_for_raspberry_pi](Applications/Monitoring_System/template_bcmstat_for_raspberry_pi)
            * **Template App bcmstat**<p>Monitoring bcmstat 0.5.4 or greater. https://github.com/MilhouseVH/bcmstat</p>
        * [template_cisco_prime_central](Applications/Monitoring_System/template_cisco_prime_central)
            * **Cisco Prime Central**<p>The template was presented as a zip archive</p>
        * [template_get_nagiostats](Applications/Monitoring_System/template_get_nagiostats)
            * **Template App Nagios stats**
        * [template_graylog_node_monitoring_using_zabbix](Applications/Monitoring_System/template_graylog_node_monitoring_using_zabbix)
            * **Template Graylog: Nodes**
        * [template_junos_space](Applications/Monitoring_System/template_junos_space)
            * **Junos Space**
        * [template_nec_pnmsj](Applications/Monitoring_System/template_nec_pnmsj)
            * **NEC PNMSj**<p>The template was presented as a zip archive</p>
        * [template_ozeki_sms_gateway](Applications/Monitoring_System/template_ozeki_sms_gateway)
            * **8TemplateOzeki**
        * [template_proximvision_nms](Applications/Monitoring_System/template_proximvision_nms)
            * **ProximVision NMS**
        * [template_zabbix_monitor_housekeeper](Applications/Monitoring_System/template_zabbix_monitor_housekeeper)
            * **Template Housekeeping Metrics**<p>Language: English Autor: Bernardo Lankheet Blog: www.bernardolankheet.com.br Repositorio: https://github.com/bernardolankheet/Zabbix-Monitor-Housekeeper</p>
    * [NFS](Applications/NFS)
        * [template_nfs_module](Applications/NFS/template_nfs_module)
            * **NFS Template Module**<p>The template was presented as a zip archive</p>
    * [NTP](Applications/NTP)
        * [template_chrony_accuracy](Applications/NTP/template_chrony_accuracy)
            * **Template App Chrony Service**
        * [template_chrony_accuracy_1](Applications/NTP/template_chrony_accuracy_1)
            * **chronyTemplate**
        * [template_chrony_accuracy_english](Applications/NTP/template_chrony_accuracy_english)
            * **chronyTemplate**
        * [template_chrony_accuracy_japanese](Applications/NTP/template_chrony_accuracy_japanese)
            * **chronyテンプレート**
        * [template_ntp_accuracy](Applications/NTP/template_ntp_accuracy)
            * **NTP[Remote]**
            * **NTP**
        * [template_ntp_accuracy_japanese](Applications/NTP/template_ntp_accuracy_japanese)
            * **NTPテンプレート（リモート）**
            * **NTPテンプレート**
    * [Others](Applications/Others)
        * [template_assp-gather_statistics](Applications/Others/template_assp-gather_statistics)
            * **ASSP - Gather statistics**<p>The template was presented as a zip archive</p>
        * [template_barco_control_rooms_rc_agent_rcs-3110](Applications/Others/template_barco_control_rooms_rc_agent_rcs-3110)
            * **Barco Control Rooms RC Agent RCS-3110**<p>The template was presented as a zip archive</p>
        * [template_consul_daemon_monitoring](Applications/Others/template_consul_daemon_monitoring)
            * **Consul daemon monitoring**<p>The template was presented as a zip archive</p>
        * [template_dns_records_external_check_(lld,_trapper)](Applications/Others/template_dns_records_external_check_(lld,_trapper))
            * **DNS records external check (LLD, Trapper)**<p>The template was presented as a zip archive</p>
        * [template_e2guardian_4.1.x](Applications/Others/template_e2guardian_4.1.x)
            * **Template App e2guardian - Active**<p>https://github.com/e2guardian/e2guardian/blob/master/notes/dstats_format USER.MACRO={$E2GUARDIAN_DSTATS} UserParameter=e2guardian[*],tail -1 $1 | cut -f $2</p>
        * [template_haproxy_v2_stats_via_prometheus](Applications/Others/template_haproxy_v2_stats_via_prometheus)
            * **_T_Zbx_Lin_HAPROXY2_stats_Prometheus**<p>frontend stats bind *:8880 http-request use-service prometheus-exporter if { path /metrics } stats enable stats uri /stats stats refresh 10s</p>
        * [template_kannel_monitoring](Applications/Others/template_kannel_monitoring)
            * **Kannel Monitoring**<p>The template was presented as a zip archive</p>
        * [template_monitoramento_sefaz](Applications/Others/template_monitoramento_sefaz)
            * **Template APC NetBotz Rack Monitor 200**
            * **Template APC NetBotz Rack Monitor 250**
        * [template_needrestart](Applications/Others/template_needrestart)
            * **Template App Needrestart**
        * [template_okta_ad_agent_status](Applications/Others/template_okta_ad_agent_status)
            * **OKTA AD Agent Healthcheck**
        * [template_openvpn_discovery_of_all_service_instances](Applications/Others/template_openvpn_discovery_of_all_service_instances)
            * **OpenVPN discovery of all service instances**<p>The template was presented as a zip archive</p>
        * [template_openvpn_for_thevpncompany](Applications/Others/template_openvpn_for_thevpncompany)
            * **Template OpenVPN**<p>Template to monitor VPN Services according to the Open Source configuration provided at https://thevpncompany.com.au The VPN Company provides the source code to create an end-to-end VPN Company.</p>
            * **Template VPN Server**<p>Template to monitor VPN Services according to the Open Source configuration provided at https://thevpncompany.com.au The VPN Company provides the source code to create an end-to-end VPN Company.</p>
        * [template_sap_process](Applications/Others/template_sap_process)
            * **Template SAP Availability Linux**
        * [template_sdelete_utility](Applications/Others/template_sdelete_utility)
            * **SDelete utility**<p>The template was presented as a zip archive</p>
        * [template_tacacs_service](Applications/Others/template_tacacs_service)
            * **Template App TACACS Service**
        * [template_trassir_cctv_dvr_sdk](Applications/Others/template_trassir_cctv_dvr_sdk)
            * **Trassir-server**
        * [template_veeam_backup](Applications/Others/template_veeam_backup)
            * **Veeam Backup**<p>The template was presented as a zip archive</p>
        * [template_websphere_mq_for_mswin](Applications/Others/template_websphere_mq_for_mswin)
            * **WebSphere MQ for MSWin**<p>The template was presented as a zip archive</p>
        * [template_wireguard_vpn](Applications/Others/template_wireguard_vpn)
            * **Template App WireGuard**
        * [template_wowza](Applications/Others/template_wowza)
            * **Wowza**<p>The template was presented as a zip archive</p>
        * [template_wowza_2.0](Applications/Others/template_wowza_2.0)
            * **Wowza 2.0**<p>The template was presented as a zip archive</p>
        * [template_zabbix_web_check](Applications/Others/template_zabbix_web_check)
            * **Zabbix web check**<p>The template was presented as a zip archive</p>
        * [template_zabbix_zookeper](Applications/Others/template_zabbix_zookeper)
            * **Template App Zookeeper**<p>Zookeper Monitoring Need this userparameter in zabbix_agentd.conf: UserParameter=echo2nc[*],echo $1 | nc $2 $3</p>
        * [template_zenoss](Applications/Others/template_zenoss)
            * **Zenoss**<p>The template was presented as a zip archive</p>
    * [Pi-Hole](Applications/Pi-Hole)
        * [template_pihole_remote_cmd](Applications/Pi-Hole/template_pihole_remote_cmd)
            * **GG_pihole**
    * [Queue_managers](Applications/Queue_managers)
        * [template_activemq_jmx](Applications/Queue_managers/template_activemq_jmx)
            * **Template App ActiveMQ JMX**
        * [template_activemq_jmx_discovery](Applications/Queue_managers/template_activemq_jmx_discovery)
            * **Template JMX ActiveMQ**
        * [template_ibm_mq-agent_module](Applications/Queue_managers/template_ibm_mq-agent_module)
            * **IBM MQ - agent module**<p>The template was presented as a zip archive</p>
        * [template_kafka_jmx_discovery](Applications/Queue_managers/template_kafka_jmx_discovery)
            * **Template App Kafka**
        * [template_microsoft_message_queue_monitor_for_zabbix](Applications/Queue_managers/template_microsoft_message_queue_monitor_for_zabbix)
            * **Microsoft Message Queue Monitor for Zabbix**<p>The template was presented as a zip archive</p>
    * [Security](Applications/Security)
        * [template_canary_files_monitoring](Applications/Security/template_canary_files_monitoring)
            * **Template Canary**
        * [template_cve-2016-0728_check](Applications/Security/template_cve-2016-0728_check)
            * **cve-2016-0728**
        * [template_devline._windows._мониторинг_наличия_изображений_с_камер](Applications/Security/template_devline._windows._мониторинг_наличия_изображений_с_камер)
            * **DEVLINE**
        * [template_trassir_cctv_monitoring](Applications/Security/template_trassir_cctv_monitoring)
            * **Trassir CCTV Monitoring Template**<p>The template was presented as a zip archive</p>
    * [Skype](Applications/Skype)
        * [template_skype_for_business](Applications/Skype/template_skype_for_business)
            * **Skype For Business**<p>The template was presented as a zip archive</p>
    * [TV_Broadcasting](Applications/TV_Broadcasting)
        * [template_service_hls](Applications/TV_Broadcasting/template_service_hls)
            * **Template Service HLS**
        * [template_vizrt_viz_engine_snmp](Applications/TV_Broadcasting/template_vizrt_viz_engine_snmp)
            * **Template Vizrt SNMP**
    * [Web-servers](Applications/Web-servers)
        * [template_apache_base](Applications/Web-servers/template_apache_base)
            * **Apache base**<p>The template was presented as a zip archive</p>
        * [template_apache_http_server](Applications/Web-servers/template_apache_http_server)
            * **Template Apache**
        * [template_apache_http_server_on_linux](Applications/Web-servers/template_apache_http_server_on_linux)
            * **Apache HTTP Server on Linux**<p>The template was presented as a zip archive</p>
        * [template_apache_solr_statistics_via_json](Applications/Web-servers/template_apache_solr_statistics_via_json)
            * **Template App Solr**<p>Template for monitoring Solr using json statistics. http://{USERNAME}@{PASSWORD}:{HOST.CONN}/solr/admin/metrics</p>
        * [template_app_nginx_for_zabbix_3.4.x](Applications/Web-servers/template_app_nginx_for_zabbix_3.4.x)
            * **Template App Nginx by Alex Gluck**
        * [template_domain_registration_expiration_and_ssl_certificates_check_lld](Applications/Web-servers/template_domain_registration_expiration_and_ssl_certificates_check_lld)
            * **Template SSL check LLD**
        * [template_fcgi_stat_getter._monitor_php-fpm_without_nginx_proxy](Applications/Web-servers/template_fcgi_stat_getter._monitor_php-fpm_without_nginx_proxy)
            * **Template App PHP-FPM**
        * [template_immuniweb_ssl_security_test](Applications/Web-servers/template_immuniweb_ssl_security_test)
            * **Template App SSL ImmuniWeb Scan**<p>https://www.immuniweb.com/ssl/</p>
        * [template_microsoft_iis_7.5,_8.0,_8.5_and_10_services,_ports_and_performance_counters.](Applications/Web-servers/template_microsoft_iis_7.5,_8.0,_8.5_and_10_services,_ports_and_performance_counters.)
            * **Template App IIS Service**
        * [template_microsoft_iis_8,_8.5,_10_for_rus_server](Applications/Web-servers/template_microsoft_iis_8,_8.5,_10_for_rus_server)
            * **Template App IIS Service_RUS**
        * [template_nginx](Applications/Web-servers/template_nginx)
            * **Nginx**<p>The template was presented as a zip archive</p>
        * [template_nginx_for_zabbix_3.4.x](Applications/Web-servers/template_nginx_for_zabbix_3.4.x)
            * **Template App Nginx by Alex Gluck**
        * [template_nginx_for_zabbix_4.0](Applications/Web-servers/template_nginx_for_zabbix_4.0)
            * **Template_NGINX_http_agent**
        * [template_nginx_stat_getter._simple_check_for_nginx_stats.](Applications/Web-servers/template_nginx_stat_getter._simple_check_for_nginx_stats.)
            * **Template App Nginx**
        * [template_php-fpm_monitoring_(multiple_pools)](Applications/Web-servers/template_php-fpm_monitoring_(multiple_pools))
            * **PHP-fpm Monitoring (Multiple Pools)**<p>The template was presented as a zip archive</p>
        * [template_php-fpm_with_support_for_ispconfig,_lld_(autodiscovery),_multiple_pools](Applications/Web-servers/template_php-fpm_with_support_for_ispconfig,_lld_(autodiscovery),_multiple_pools)
            * **PHP-FPM with support for ISPConfig, LLD (autodiscovery), multiple pools**<p>The template was presented as a zip archive</p>
        * [template_python-ssl-checker-zabbix](Applications/Web-servers/template_python-ssl-checker-zabbix)
            * **Python-SSL-checker-Zabbix**<p>The template was presented as a zip archive</p>
        * [template_ssl_certificates_check](Applications/Web-servers/template_ssl_certificates_check)
            * **SSL Certificates check**<p>The template was presented as a tar.gz archive</p>
        * [template_ssl_certificates_check-freebsd](Applications/Web-servers/template_ssl_certificates_check-freebsd)
            * **SSL Certificates check - FreeBSD**<p>The template was presented as a zip archive</p>
        * [template_ssl_certificates_check_1](Applications/Web-servers/template_ssl_certificates_check_1)
            * **SSL Certificates Check**<p>The template was presented as a zip archive</p>
        * [template_ssl_certificates_check_4.4](Applications/Web-servers/template_ssl_certificates_check_4.4)
            * **SSL Certificates Check 4.4**<p>The template was presented as a zip archive</p>
        * [template_ssl_module](Applications/Web-servers/template_ssl_module)
            * **SSL Template Module**<p>The template was presented as a zip archive</p>
        * [template_ssllabs](Applications/Web-servers/template_ssllabs)
            * **Template SSLLabs**<p>SSL certificate monitoring via SSLLabs open API</p>
        * [template_zabbix_4.0_nginx_monitoring](Applications/Web-servers/template_zabbix_4.0_nginx_monitoring)
            * **Nginx**<p>Nginx template created by Alireza Zabihi zabihi.a.r@gmail.com</p>
        * [template_zabbix_4.0_php-fpm_pools_(lld_+_http_agent)](Applications/Web-servers/template_zabbix_4.0_php-fpm_pools_(lld_+_http_agent))
            * **Template App PHP-FPM**
    * [template_apache_2_web_server_http_item](Applications/template_apache_2_web_server_http_item)
        * **Template App Apache2**
    * [template_app_nginx_by_zabbix_agent_enhanced](Applications/template_app_nginx_by_zabbix_agent_enhanced)
        * **Template App Nginx by Zabbix agent Enhanced**<p>The template was presented as a zip archive</p>
    * [template_app_zabbix_server-plus](Applications/template_app_zabbix_server-plus)
        * **Template App Zabbix Server - Plus**<p>2018-02-25 Ver. 1.0 - First release. 2018-03-14 Ver. 1.1 - Add items for cache total and a graph of them.</p>
    * [template_aruba_hpe_clearpass_policy_manager](Applications/template_aruba_hpe_clearpass_policy_manager)
        * **Aruba/HPE ClearPass Policy Manager**<p>The template was presented as a zip archive</p>
    * [template_bind_dns_server](Applications/template_bind_dns_server)
        * **Bind DNS server**<p>The template was presented as a zip archive</p>
    * [template_cisco_ironport_email_and_web_security](Applications/template_cisco_ironport_email_and_web_security)
        * **ESA-CISCO**<p>Cisco IronPort Email and Web Security</p>
    * [template_citrix_licensing](Applications/template_citrix_licensing)
        * **Template App Citrix License Sever**
    * [template_citrix_xendesktop_7.15-delivery_controller](Applications/template_citrix_xendesktop_7.15-delivery_controller)
        * **C24_CVAD-715_Broker_v1.00**
    * [template_citrix_xendesktop_license_server](Applications/template_citrix_xendesktop_license_server)
        * **C24_CVAD-715_CTXLicServer_v1.00**
    * [template_covid19_monitoring_updated](Applications/template_covid19_monitoring_updated)
        * **Coronavirus - Covid19 Monitoring**<p>Getting cases from worldometers.info and plotting on Zabbix</p>
    * [template_cpu_disk_temperature_monitoring](Applications/template_cpu_disk_temperature_monitoring)
        * **CPU_disk temperature monitoring**<p>The template was presented as a zip archive</p>
    * [template_elasticsearch](Applications/template_elasticsearch)
        * **Template - App Elasticsearch Cluster new**
    * [template_elasticsearch_2.x_cluster_&_node_monitoring](Applications/template_elasticsearch_2.x_cluster_&_node_monitoring)
        * **Elasticsearch 2.x Cluster & Node Monitoring**<p>The template was presented as a zip archive</p>
    * [template_emq_(mqtt)](Applications/template_emq_(mqtt))
        * **Template App EMQTT  Service**
    * [template_eocortex_vms](Applications/template_eocortex_vms)
        * **Template Eocortex**
    * [template_es_stats_zabbix_(elasticsearch_cluster_&_node_monitoring)](Applications/template_es_stats_zabbix_(elasticsearch_cluster_&_node_monitoring))
        * **es_stats_zabbix (Elasticsearch Cluster & Node Monitoring)**<p>The template was presented as a tar.gz archive</p>
    * [template_exchange_2016](Applications/template_exchange_2016)
        * **Template Microsoft Exchange Server 2016**
    * [template_exchange_2019](Applications/template_exchange_2019)
        * **Template Microsoft Exchange Server 2019**
    * [template_focco](Applications/template_focco)
        * **Focco**
    * [template_internet_speed_test](Applications/template_internet_speed_test)
        * **Template - SpeedTest**
    * [template_it_services-sla](Applications/template_it_services-sla)
        * **IT SERVICES - SLA**<p>The template was presented as a zip archive</p>
    * [template_lighttpd](Applications/template_lighttpd)
        * **Template App Lighttpd by Zabbix Agent**
    * [template_lld_olt_zte](Applications/template_lld_olt_zte)
        * **LLD OLT ZTE**
    * [template_logstash](Applications/template_logstash)
        * **Template App Logstash**
    * [template_mariadb_database_partition_monitoring](Applications/template_mariadb_database_partition_monitoring)
        * **Template Zabbix DB Partitions**
    * [template_mdaemon](Applications/template_mdaemon)
        * **Template App MDaemon**
    * [template_mqtt_(mosquitto)_broker_monitoring](Applications/template_mqtt_(mosquitto)_broker_monitoring)
        * **Template App MQTT  Service**
    * [template_netbackup](Applications/template_netbackup)
        * **Netbackup**
    * [template_nextcloud_v._14_monitoring](Applications/template_nextcloud_v._14_monitoring)
        * **NextCloud v. 14 Monitoring**<p>The template was presented as a zip archive</p>
    * [template_nfs_server_and_client_mount_monitoring](Applications/template_nfs_server_and_client_mount_monitoring)
        * **NFS server and client mount monitoring**<p>The template was presented as a zip archive</p>
    * [template_nginx_plus](Applications/template_nginx_plus)
        * **Template App Nginx Plus**
    * [template_olt_zte_c320](Applications/template_olt_zte_c320)
        * **OLT ZTE C320**
    * [template_pi-hole_api](Applications/template_pi-hole_api)
        * **Template App Pi-Hole**<p>Domains Blocked DNS Queries Today Ads Blocked Today Ads Blocked Percentage Today Clients Ever Seen Unique Clients Reply NODATA Reply NXDOMAIN Reply CNAME Reply IP</p>
    * [template_plesk_obsidian_(active)](Applications/template_plesk_obsidian_(active))
        * **Template CustomApp Plesk**
    * [template_pm2-zabbix](Applications/template_pm2-zabbix)
        * **pm2-zabbix**<p>The template was presented as a zip archive</p>
    * [template_qbittorrent](Applications/template_qbittorrent)
        * **Template qBittorrent**<p>Template de monitoramento da API do qBittorrent</p>
    * [template_quest_rapidrecovery](Applications/template_quest_rapidrecovery)
        * **Quest RapidRecovery Template**<p>The template was presented as a zip archive</p>
    * [template_rocket_chat_statistics](Applications/template_rocket_chat_statistics)
        * **Template App Rocket Chat**
    * [template_s_emby](Applications/template_s_emby)
        * **Template Emby**
    * [template_secure64_dns-snmp](Applications/template_secure64_dns-snmp)
        * **Template App Secure64 SNMP**<p>By Ahrar Ahmad Khan</p>
    * [template_squid_3.4](Applications/template_squid_3.4)
        * **Squid 3.4 Template**<p>The template was presented as a zip archive</p>
    * [template_squid_proxy_snmp](Applications/template_squid_proxy_snmp)
        * **Squid Proxy SNMP**<p>The template was presented as a zip archive</p>
    * [template_teamspeak_3_monitor](Applications/template_teamspeak_3_monitor)
        * **TeamSpeak 3 Monitor**<p>The template was presented as a zip archive</p>
    * [template_to_get_information_about_.net_status](Applications/template_to_get_information_about_.net_status)
        * **Template to get information about .NET status**<p>The template was presented as a zip archive</p>
    * [template_triggers_events_excel_export](Applications/template_triggers_events_excel_export)
        * **Triggers_events_excel_export**<p>The template was presented as a zip archive</p>
    * [template_unbound_dns](Applications/template_unbound_dns)
        * **Unbound DNS**<p>The template was presented as a zip archive</p>
    * [template_ups-hds](Applications/template_ups-hds)
        * **Template UPS HDS**
    * [template_varnish](Applications/template_varnish)
        * **Template App Varnish by Zabbix agent**<p>Simple template for the Varnish cache using results from the varnishstat command. Ensure that "EnableRemoteCommands=1" is set in the host's agent config file.</p>
    * [template_varnish_cache_usage_monitoring](Applications/template_varnish_cache_usage_monitoring)
        * **Varnish cache usage monitoring**<p>The template was presented as a zip archive</p>
    * [template_weblogic_health_check_jmx](Applications/template_weblogic_health_check_jmx)
        * **WeblogicHealth**
    * [template_wildfly_eap_jboss_discovery](Applications/template_wildfly_eap_jboss_discovery)
        * **Template JMX Wildlfy**<p>Install and info: https://github.com/hermanekt/Zabbix_wildfly_eap_jboss_monitoring https://share.zabbix.com/official-templates/wildfly-eap-jboss-discovery Version 1.2</p>
    * [template_zabbix-apt](Applications/template_zabbix-apt)
        * **Template APT Debian**
    * [template_zabbix_for_wsus](Applications/template_zabbix_for_wsus)
        * **Zabbix template for WSUS**<p>The template was presented as a zip archive</p>
    * [template_zabbix_kafka_connector](Applications/template_zabbix_kafka_connector)
        * **Template Kafka Connector**
* [Cloud](Cloud)
    * [AWS](Cloud/AWS)
        * [template_aws_cloudwatch_via_docker_wrapper_with_http_agent](Cloud/AWS/template_aws_cloudwatch_via_docker_wrapper_with_http_agent)
            * **AWS CloudWatch via Docker Wrapper**<p>Monitorizacion de AWS via CloudWatch utilizando un Wrapper desarrollado en NodeJS.</p>
    * [template_cloudflared_tunnel_metrics_(cloudflare_argo)](Cloud/template_cloudflared_tunnel_metrics_(cloudflare_argo))
        * **Cloudflared Tunnel Metrics (Cloudflare Argo)**<p>The template was presented as a zip archive</p>
    * [template_nextcloud_monitoring_api](Cloud/template_nextcloud_monitoring_api)
        * **Template App Nextcloud Monitoring API**
* [Databases](Databases)
    * [Apache_Ignite](Databases/Apache_Ignite)
        * [template_ignite_jmx_with_instancename](Databases/Apache_Ignite/template_ignite_jmx_with_instancename)
            * **Template App Ignite JMX**
    * [Microsoft_SQL_Server](Databases/Microsoft_SQL_Server)
        * [template_()_windows_sql_server](Databases/Microsoft_SQL_Server/template_()_windows_sql_server)
            * **(Template) Windows SQL Server**<p>The template was presented as a zip archive</p>
        * [template_app_ms_sql_database_discovery_(lld)](Databases/Microsoft_SQL_Server/template_app_ms_sql_database_discovery_(lld))
            * **Template App MS SQL DB Discovery**
        * [template_app_ms_sql_default_installation_(lld)](Databases/Microsoft_SQL_Server/template_app_ms_sql_default_installation_(lld))
            * **Template App MS SQL Default Installation (LLD)**<p>The template was presented as a zip archive</p>
        * [template_app_ms_sql_instance_discovery_(lld)](Databases/Microsoft_SQL_Server/template_app_ms_sql_instance_discovery_(lld))
            * **Template App MS SQL Instance Discovery**
        * [template_ms_sql_2012](Databases/Microsoft_SQL_Server/template_ms_sql_2012)
            * **Template MS SQL 2012**<p>The template was presented as a zip archive</p>
        * [template_ms_sql_server_versions_value_mapping](Databases/Microsoft_SQL_Server/template_ms_sql_server_versions_value_mapping)
            * **Template UPS - diogont**
        * [template_ms_sqlserver](Databases/Microsoft_SQL_Server/template_ms_sqlserver)
            * **MS SQLServer**<p>The template was presented as a zip archive</p>
        * [template_ms_sqlserver_database_backup](Databases/Microsoft_SQL_Server/template_ms_sqlserver_database_backup)
            * **MS SQLServer Database Backup**<p>The template was presented as a zip archive</p>
        * [template_zabbix_for_microsoft_sql_server_mini](Databases/Microsoft_SQL_Server/template_zabbix_for_microsoft_sql_server_mini)
            * **Zabbix template for Microsoft SQL Server Mini**<p>The template was presented as a zip archive</p>
    * [MongoDB](Databases/MongoDB)
        * [template_mongodb_monitoring_loadable_module](Databases/MongoDB/template_mongodb_monitoring_loadable_module)
            * **MongoDB monitoring Loadable Module**<p>The template was presented as a tar.gz archive</p>
    * [Multi-Databases](Databases/Multi-Databases)
        * [template_zabbix_database_monitoring](Databases/Multi-Databases/template_zabbix_database_monitoring)
            * **Zabbix Database Monitoring**<p>The template was presented as a tar.gz archive</p>
    * [MySQL](Databases/MySQL)
        * [template_galera_cluster_monitoring](Databases/MySQL/template_galera_cluster_monitoring)
            * **Galera Cluster Monitoring**<p>The template was presented as a zip archive</p>
        * [template_mysql_(800+_items)](Databases/MySQL/template_mysql_(800+_items))
            * **Template MySQL (800+ items)**<p>The template was presented as a tar.gz archive</p>
        * [template_mysql_windows_multiple_instances_monitoring](Databases/MySQL/template_mysql_windows_multiple_instances_monitoring)
            * **Halley MySQL Python server mi passive**<p>An mysql template create for halley.it</p>
        * [template_zabbix_database_model](Databases/MySQL/template_zabbix_database_model)
            * **Zabbix database Model**<p>The template was presented as a zip archive</p>
    * [Oracle](Databases/Oracle)
        * [template_3.0_for_pyora](Databases/Oracle/template_3.0_for_pyora)
            * **Template Pyora active send**
        * [template_oracle_db](Databases/Oracle/template_oracle_db)
            * **Template Oracle DB**
        * [template_zabbix_oci_dbaas](Databases/Oracle/template_zabbix_oci_dbaas)
            * **Template_OCI_Dbaas**
    * [Others](Databases/Others)
        * [template_app_elasticsearch_cluster_by_zabbix_agent](Databases/Others/template_app_elasticsearch_cluster_by_zabbix_agent)
            * **Template App Elasticsearch Cluster by Zabbix agent**<p>This is the "Zabbix agent" version of the Elasticsearch template which ships with Zabbix 5.0 - Evren Yurtesen The template to monitor Elasticsearch by Zabbix that work without any external scripts. It works with both standalone and cluster instances. The metrics are collected in one pass remotely using an HTTP agent. They are getting values from REST API _cluster/health, _cluster/stats, _nodes/stats requests. You can set {$ELASTICSEARCH.USERNAME} and {$ELASTICSEARCH.PASSWORD} macros in the template for using on the host level. If you use an atypical location ES API, don't forget to change the macros {$ELASTICSEARCH.SCHEME}, {$ELASTICSEARCH.HOST},{$ELASTICSEARCH.PORT}. You can discuss this template or leave feedback on our forum https://www.zabbix.com/forum/zabbix-suggestions-and-feedback/399473-discussion-thread-for-official-zabbix-template-for-elasticsearch Template tooling version used: 0.35</p>
        * [template_clickhouse](Databases/Others/template_clickhouse)
            * **Template_Clickhouse**
        * [template_clickhouse_zabbix_by_altinity](Databases/Others/template_clickhouse_zabbix_by_altinity)
            * **Clickhouse**
        * [template_mapr_m3](Databases/Others/template_mapr_m3)
            * **MapR M3**<p>The template was presented as a zip archive</p>
        * [template_paraccel_db](Databases/Others/template_paraccel_db)
            * **ParAccel DB**<p>The template was presented as a zip archive</p>
    * [PostgreSQL](Databases/PostgreSQL)
        * [template_postgresql](Databases/PostgreSQL/template_postgresql)
            * **PostgreSQL**<p>The template was presented as a zip archive</p>
        * [template_postgresql_9.6](Databases/PostgreSQL/template_postgresql_9.6)
            * **PostgreSQL 9.6**<p>The template was presented as a zip archive</p>
    * [Redis](Databases/Redis)
        * [template_(chinese_english)redis_performance_by_redis-cli](Databases/Redis/template_(chinese_english)redis_performance_by_redis-cli)
            * **(Chinese/English)Template Redis Performance By redis-cli**<p>The template was presented as a zip archive</p>
        * [template_discoveryrule-redis](Databases/Redis/template_discoveryrule-redis)
            * **REDIS**
        * [template_redis](Databases/Redis/template_redis)
            * **Redis**<p>The template was presented as a zip archive</p>
    * [template_coleta_sinal_sfp_mikrotik](Databases/template_coleta_sinal_sfp_mikrotik)
        * **Sinal SFP Mikrotik**<p>Igor Dib</p>
    * [template_elasticsearch_cluster_by_http_for_zabbix_4.2+](Databases/template_elasticsearch_cluster_by_http_for_zabbix_4.2+)
        * **Elasticsearch Cluster by HTTP zbx 4.2**<p>The template to monitor Elasticsearch by Zabbix that work without any external scripts. It works with both standalone and cluster instances. The metrics are collected in one pass remotely using an HTTP agent. They are getting values from REST API _cluster/health, _cluster/stats, _nodes/stats requests. You can set {$ELASTICSEARCH.USERNAME} and {$ELASTICSEARCH.PASSWORD} macros in the template for using on the host level. If you use an atypical location ES API, don't forget to change the macros {$ELASTICSEARCH.SCHEME},{$ELASTICSEARCH.PORT}. Parsed manually from https://git.zabbix.com/projects/ZBX/repos/zabbix/browse/templates/app/elasticsearch_http from zabbix version 5.0 to 4.2 and add triggers</p>
    * [template_postgres_odbc_database_monitoring](Databases/template_postgres_odbc_database_monitoring)
        * **Template Postgres ODBC**
    * [template_progress_datasul_totvs](Databases/template_progress_datasul_totvs)
        * **Banco Progress Datasul**<p>Monitoramento Banco Progress Datasul</p>
    * [template_twemproxy_(nutcracker)](Databases/template_twemproxy_(nutcracker))
        * **Template App Nutcracker**
    * [template_zabifx.sh-informix_database](Databases/template_zabifx.sh-informix_database)
        * **zabifx.sh - Informix database**<p>The template was presented as a zip archive</p>
* [Network_Appliances](Network_Appliances)
    * [template_alexa](Network_Appliances/template_alexa)
        * **Alexa Template**<p>The template was presented as a zip archive</p>
    * [template_balabit-shell_control_box_snmp](Network_Appliances/template_balabit-shell_control_box_snmp)
        * **BALABIT-SNMPv2-Shell_Control_Box**
    * [template_big_ip_f5-snmp-português-br](Network_Appliances/template_big_ip_f5-snmp-português-br)
        * **Template Device BigIP F5**
    * [template_bluecoat_proxyav](Network_Appliances/template_bluecoat_proxyav)
        * **Template App BlueCoat AV**
    * [template_bluecoat_proxysg](Network_Appliances/template_bluecoat_proxysg)
        * **Template App BlueCoat SG**
    * [template_checkpoint_vpn-1](Network_Appliances/template_checkpoint_vpn-1)
        * **Template Checkpoint VPN-1**
    * [template_dsm_4.1+](Network_Appliances/template_dsm_4.1+)
        * **DSM 4.1+**<p>The template was presented as a zip archive</p>
    * [template_equallogic_ps6110](Network_Appliances/template_equallogic_ps6110)
        * **Equallogic	PS6110**<p>The template was presented as a tar.gz archive</p>
    * [template_fiberhome_2020](Network_Appliances/template_fiberhome_2020)
        * **Template SNMP OLT FiberHome**
    * [template_ipfire_2](Network_Appliances/template_ipfire_2)
        * **IPFire 2**<p>The template was presented as a zip archive</p>
    * [template_mcafee_email_gateway](Network_Appliances/template_mcafee_email_gateway)
        * **Template SNMP McAfee Email Gateway (SMTP - POP3)**<p>Created by Samuel Martins 2019-04-24 Version 1.00 https://github.com/slunart/Zabbix-Templates https://www.linkedin.com/in/slmartins/</p>
    * [template_mikrotik_routeros](Network_Appliances/template_mikrotik_routeros)
        * **Mikrotik RouterOS**<p>Ros Modelo dedicado (dispositivo RB) Este modelo é usado apenas para o monitoramento do sistema de roteamento RouterOS.。 By:[Suspeito]</p>
    * [template_mobotix_security_camera](Network_Appliances/template_mobotix_security_camera)
        * **Template Mobotix Camera**
    * [template_nevis_proxy](Network_Appliances/template_nevis_proxy)
        * **_Template Nevis**
    * [template_ping_module](Network_Appliances/template_ping_module)
        * **Ping Template Module**<p>The template was presented as a zip archive</p>
    * [template_quagga_bgp_sessions_monitor](Network_Appliances/template_quagga_bgp_sessions_monitor)
        * **Quagga BGP**<p>Template for auto-discovery bgp peers and monitor they.</p>
    * [template_rittal_pdu-7955](Network_Appliances/template_rittal_pdu-7955)
        * **Template_Rittal_PDU 1Phase EN**<p>IT Infrastructure Monitoring.</p>
    * [template_snmp_firewall_kerio](Network_Appliances/template_snmp_firewall_kerio)
        * **Template_SNMP_FIREWALL_KERIO_CONTROL_LLD_VERSAO-1.0**
    * [template_snmp_firewall_kerio_control_lld_versao-0.1](Network_Appliances/template_snmp_firewall_kerio_control_lld_versao-0.1)
        * **Template_SNMP_FIREWALL_KERIO_CONTROL_LLD_VERSAO-1.0**
    * [template_sophos_utm_9_firewall_vm_appliance_&_hardware](Network_Appliances/template_sophos_utm_9_firewall_vm_appliance_&_hardware)
        * **Sophos UTM 9 Firewall VM Appliance & Hardware**<p>The template was presented as a zip archive</p>
    * [template_sophos_utm_v_9.6_over_api](Network_Appliances/template_sophos_utm_v_9.6_over_api)
        * **Sophos UTM v 9.6 over API**<p>The template was presented as a zip archive</p>
    * [template_sophos_xg_firewall](Network_Appliances/template_sophos_xg_firewall)
        * **Template MIB XG-FIREWALL-MIB - sophos**
    * [template_speedtest_lan_monitoring](Network_Appliances/template_speedtest_lan_monitoring)
        * **Template App Speedtest LAN**
    * [template_speedtest_wan_isp_monitoring](Network_Appliances/template_speedtest_wan_isp_monitoring)
        * **Template App Speedtest WAN**
    * [template_speedtest_wan_isp_monitoring_1](Network_Appliances/template_speedtest_wan_isp_monitoring_1)
        * **Speedtest WAN ISP monitoring**<p>The template was presented as a zip archive</p>
    * [template_stormshield_firewall_appliances](Network_Appliances/template_stormshield_firewall_appliances)
        * **Template SNMP StormShield**
* [Network_Devices](Network_Devices)
    * [A10](Network_Devices/A10)
        * [template_a10_ax_series](Network_Devices/A10/template_a10_ax_series)
            * **Template_A10_AX_Series**
        * [template_snmp_a10](Network_Devices/A10/template_snmp_a10)
            * **Template SNMP A10**<p>The template was presented as a zip archive</p>
    * [Alcatel-Lucent_Enterprise](Network_Devices/Alcatel-Lucent_Enterprise)
        * [template_alcatel-lucent_enterprise_omniswitch_aos_release_6.x](Network_Devices/Alcatel-Lucent_Enterprise/template_alcatel-lucent_enterprise_omniswitch_aos_release_6.x)
            * **Template Alcatel-Lucent Enterprise OmniSwitch AOS 6.x**
        * [template_alcatel-lucent_enterprise_omniswitch_aos_release_8.x](Network_Devices/Alcatel-Lucent_Enterprise/template_alcatel-lucent_enterprise_omniswitch_aos_release_8.x)
            * **Template Alcatel-Lucent Enterprise OmniSwitch AOS 8.x**
    * [Arista](Network_Devices/Arista)
        * [template_arista_snmpv2_bgp4](Network_Devices/Arista/template_arista_snmpv2_bgp4)
            * **Template SNMP Arista BGP4**
    * [Aruba](Network_Devices/Aruba)
        * [template_aruba_2930f_m_vsf_and_stacking_(module)](Network_Devices/Aruba/template_aruba_2930f_m_vsf_and_stacking_(module))
            * **Template_HPE_Module Aruba 2930 VSF or Stacking**
        * [template_aruba_access_point](Network_Devices/Aruba/template_aruba_access_point)
            * **Template SNMP Aruba Accesspoint**
    * [Brocade](Network_Devices/Brocade)
        * [template_博科光纤交换机监控模板](Network_Devices/Brocade/template_博科光纤交换机监控模板)
            * **博科光纤交换机监控模板**
        * [template_brocade_fc](Network_Devices/Brocade/template_brocade_fc)
            * **Brocade FC**<p>The template was presented as a zip archive</p>
        * [template_brocade_fc_(3.0.1)](Network_Devices/Brocade/template_brocade_fc_(3.0.1))
            * **KHP-BROCADE-FC-PORT**
        * [template_brocade_icx_mlx_fcx](Network_Devices/Brocade/template_brocade_icx_mlx_fcx)
            * **Template SNMP Brocade**
            * **Template SNMP Brocade-Copper**
            * **Template SNMP Brocade-Fiber**
        * [template_fiber-channel_switch-brocade_300](Network_Devices/Brocade/template_fiber-channel_switch-brocade_300)
            * **BROCADE FIBER CHANNEL SWITCH**
        * [template_net_brocade_foundry_stackable_snmpv3](Network_Devices/Brocade/template_net_brocade_foundry_stackable_snmpv3)
            * **Template Net Brocade_Foundry Stackable SNMPv3**<p>The template was presented as a zip archive</p>
    * [Checkpoint](Network_Devices/Checkpoint)
        * [template_checkpoint](Network_Devices/Checkpoint/template_checkpoint)
            * **Template CheckPoint SNMP**
        * [template_checkpoint_fw-1](Network_Devices/Checkpoint/template_checkpoint_fw-1)
            * **Template CheckPoint FW-1**
        * [template_checkpoint_fw-1-hardware_(3.4)](Network_Devices/Checkpoint/template_checkpoint_fw-1-hardware_(3.4))
            * **Checkpoint FW-1 - Hardware (3.4)**<p>The template was presented as a zip archive</p>
        * [template_checkpoint_fw-1-identity_awareness](Network_Devices/Checkpoint/template_checkpoint_fw-1-identity_awareness)
            * **Checkpoint FW-1 - Identity Awareness**<p>The template was presented as a zip archive</p>
        * [template_checkpoint_fw-1_3.4](Network_Devices/Checkpoint/template_checkpoint_fw-1_3.4)
            * **Checkpoint FW-1 3.4**<p>The template was presented as a zip archive</p>
        * [template_checkpoint_fw-1_interfaces](Network_Devices/Checkpoint/template_checkpoint_fw-1_interfaces)
            * **Template CheckPoint FW-1 Interfaces**
        * [template_checkpoint_vpn-1_3.4](Network_Devices/Checkpoint/template_checkpoint_vpn-1_3.4)
            * **Checkpoint VPN-1 3.4**<p>The template was presented as a zip archive</p>
    * [Cisco](Network_Devices/Cisco)
        * [template_2960](Network_Devices/Cisco/template_2960)
            * **2960**<p>The template was presented as a zip archive</p>
        * [template_2960g](Network_Devices/Cisco/template_2960g)
            * **2960g**<p>The template was presented as a zip archive</p>
        * [template_ap_cisco_wap4410n-e](Network_Devices/Cisco/template_ap_cisco_wap4410n-e)
            * **Template Cisco WAP4410N**
        * [template_asr9006_ipv4_pool_discovery](Network_Devices/Cisco/template_asr9006_ipv4_pool_discovery)
            * **Template for ASR9006 IPv4 Pool discovery**<p>Discovering pool name and vrf name from ASR9006 and represents Used & Free IP addresses Mokhtari Tce mohamadreza.mokhtari@gmail.com</p>
        * [template_catalyst_ws-c2950g-48-ei](Network_Devices/Cisco/template_catalyst_ws-c2950g-48-ei)
            * **Template SNMP Cisco WS2950**
        * [template_catalyst_ws-c3750g-24t](Network_Devices/Cisco/template_catalyst_ws-c3750g-24t)
            * **Template SNMP Cisco WS3750**<p>ciscoEnvMonState{ normal(1), warning(2), critical(3), shutdown(4), notPresent(5), notFunctioning(6) }</p>
        * [template_cisco_1900](Network_Devices/Cisco/template_cisco_1900)
            * **Template_Cisco_1900**
        * [template_cisco_2960](Network_Devices/Cisco/template_cisco_2960)
            * **Template_Cisco_2960**
            * **Template_Cisco_Traps**
            * **Template Cisco General**
        * [template_cisco_3500](Network_Devices/Cisco/template_cisco_3500)
            * **Template_Cisco_3500**
            * **Template_Cisco_Traps**
            * **Template Cisco General**
        * [template_cisco_6500](Network_Devices/Cisco/template_cisco_6500)
            * **Template_Cisco_6500**
            * **Template_Cisco_Traps**
            * **Template Cisco General**
        * [template_cisco_7200](Network_Devices/Cisco/template_cisco_7200)
            * **Template_Cisco_7200**
            * **Template_Cisco_Traps**
            * **Template Cisco General**
        * [template_cisco_7513](Network_Devices/Cisco/template_cisco_7513)
            * **Template_Cisco_7513**
            * **Template_Cisco_Traps**
            * **Template Cisco General**
        * [template_cisco_7600](Network_Devices/Cisco/template_cisco_7600)
            * **Template_Cisco_7600**
            * **Template_Cisco_Traps**
            * **Template Cisco General**
        * [template_cisco_7600_health_snmp](Network_Devices/Cisco/template_cisco_7600_health_snmp)
            * **Template Cisco 7600 Health SNMP**<p>Template Cisco 7600 Health -CPU -Memory -PowerSupply -PowerConsumption -Temperature -FAN -CEF By: Flavio Gomes Figueira Camacho Junior Require: Firmware / Software .IOS rp-ADVENTERPRISEK9-M 15.2(4)S4 ValueMaps .CISCO-ENVMON-MIB::CiscoEnvMonState .ENTITY-SENSORS-MIB::EntitySensorStatus .CISCO-CEF-TC-MIB::CefFailureReason Base: CISCO-ENVMON-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-ENVMON-MIB.php CISCO-MEMORY-POOL-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-MEMORY-POOL-MIB.php CISCO-PROCESS-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-PROCESS-MIB.php ENTITY-MIB.mib http://www.circitor.fr/Mibs/Html/E/ENTITY-MIB.php CISCO-ENTITY-SENSOR-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-ENTITY-SENSOR-MIB.php CISCO-ENTITY-FRU-CONTROL-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-ENTITY-FRU-CONTROL-MIB.php CISCO-CEF-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-CEF-MIB.php https://share.zabbix.com/network_devices/cisco/template-cisco-7600 External Scripts and Value Mapping on my Github: https://github.com/flaviojunior1995/Zabbix-Templates</p>
        * [template_cisco_asa](Network_Devices/Cisco/template_cisco_asa)
            * **Template Cisco ASA**<p>Version 1.1.3, Release date 29.4.2020 Made by: Ville Leinonen/www.hacknetwork.org Template is tested in Zabbix 4.4 and ASA version 9.14(1) Changelog: SNMPv3 support added TODO (maybe): Interface statistic and more triggers.</p>
        * [template_cisco_asa_515](Network_Devices/Cisco/template_cisco_asa_515)
            * **Template Cisco ASA 515**
        * [template_cisco_asa_discovery](Network_Devices/Cisco/template_cisco_asa_discovery)
            * **Template Cisco ASA Discovery**
        * [template_cisco_asr1006](Network_Devices/Cisco/template_cisco_asr1006)
            * **Template_Cisco_Traps**
            * **Template Cisco General**
            * **Template_Cisco_ASR_1006**
        * [template_cisco_asr9k_health](Network_Devices/Cisco/template_cisco_asr9k_health)
            * **Template Cisco ASR 9K Health SNMP**<p>Template Cisco ASR 9k Health -CPU -Memory -Power Supply -Temperature ( RSP e LC ) -FAN ( FAN and FANTray ) -Power Consumption By: Flavio Gomes Figueira Camacho Junior Require: Firmware / Software .IOS XR 5.3.1 .IOS XR 5.3.4 ValueMap .CISCO-ENTITY-FRU-CONTROL-MIB::PowerOperType .ENTITY-SENSORS-MIB::EntitySensorStatus .CISCO-ENTITY-FRU-CONTROL-MIB::CefcFanTrayStatusEntry .CISCO-ENTITY-SENSOR-MIB::SensorStatus Base: CISCO-MEMORY-POOL-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-MEMORY-POOL-MIB.php CISCO-PROCESS-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-PROCESS-MIB.php ENTITY-MIB http://www.circitor.fr/Mibs/Html/E/ENTITY-MIB.php CISCO-ENTITY-FRU-CONTROL-MIB.mib https://circitor.fr/Mibs/Html/C/CISCO-ENTITY-FRU-CONTROL-MIB.php CISCO-ENTITY-SENSOR-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-ENTITY-SENSOR-MIB.php https://share.zabbix.com/network_devices/cisco/template-cisco-asr-9k External Scripts and Value Mapping on my Github: https://github.com/flaviojunior1995/Zabbix-Templates</p>
        * [template_cisco_asr9k_optical_monitoring](Network_Devices/Cisco/template_cisco_asr9k_optical_monitoring)
            * **ZBX-CISCO-ASR9001-OPTICAL-MONITORING**
        * [template_cisco_asr_9k](Network_Devices/Cisco/template_cisco_asr_9k)
            * **Template_Cisco_ASR_9K**
            * **Template_Cisco_Traps**
            * **Template Cisco General**
        * [template_cisco_bgp_snmp](Network_Devices/Cisco/template_cisco_bgp_snmp)
            * **Template Cisco BGP SNMP**<p>Template Cisco BGP Sessions -AdminStatus -Established Time -OperationStatus -AS Name -Maximum Prefix -Accepted Prefix -BGP last Error By: Flavio Gomes Figueira Camacho Junior Require: ValueMaps .BGP4-MIB::bgpPeerAdminStatus .BGP4-MIB::bgpPeerState ExternalScript .as.name .oid_to_ipv6 Base: CISCO-BGP4-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-BGP4-MIB.php#cbgpPeer2RemoteAs External Scripts and Value Mapping on my Github: https://github.com/flaviojunior1995/Zabbix-Templates</p>
        * [template_cisco_configuration](Network_Devices/Cisco/template_cisco_configuration)
            * **Template SNMP Cisco Configuration**
        * [template_cisco_ip_sla_discovery](Network_Devices/Cisco/template_cisco_ip_sla_discovery)
            * **Template SNMP Cisco IP SLA**
        * [template_cisco_ip_sla_discovery_1](Network_Devices/Cisco/template_cisco_ip_sla_discovery_1)
            * **Template SNMP Cisco IP SLA**
        * [template_cisco_ipsec_vpn_discovering](Network_Devices/Cisco/template_cisco_ipsec_vpn_discovering)
            * **Cisco IPsec VPN discovering**
        * [template_cisco_memory_and_cpu](Network_Devices/Cisco/template_cisco_memory_and_cpu)
            * **tpl_part_network_cisco_all_performance**
        * [template_cisco_nexus_9000](Network_Devices/Cisco/template_cisco_nexus_9000)
            * **Template cisco nexus 9000**<p>The template was presented as a zip archive</p>
        * [template_cisco_sg200-26p](Network_Devices/Cisco/template_cisco_sg200-26p)
            * **Template_Cisco_SG200-26P**
        * [template_cisco_sg300_and_sg200](Network_Devices/Cisco/template_cisco_sg300_and_sg200)
            * **Cisco_SG300-52-d**<p>by padamiak, 2019.05.28, zabbix v4.0, tested on sg300 and sg200</p>
        * [template_cisco_sg500_48p](Network_Devices/Cisco/template_cisco_sg500_48p)
            * **Template_SG500X_48P**
        * [template_cisco_sg500x-48p](Network_Devices/Cisco/template_cisco_sg500x-48p)
            * **Template SNMP Cisco SG500x**
        * [template_cisco_sge2000p_complete_monitoring](Network_Devices/Cisco/template_cisco_sge2000p_complete_monitoring)
            * **Template XSM SNMP Devices**
        * [template_cisco_sge2010_&_sge2010p](Network_Devices/Cisco/template_cisco_sge2010_&_sge2010p)
            * **Template_SGE2010_48P**
        * [template_cisco_snmp_ipsec](Network_Devices/Cisco/template_cisco_snmp_ipsec)
            * **Template SNMP Cisco IPSec**
        * [template_cisco_snmp_memory](Network_Devices/Cisco/template_cisco_snmp_memory)
            * **Template SNMP Cisco Memory**
        * [template_cisco_snmp_v3_interface_discovery](Network_Devices/Cisco/template_cisco_snmp_v3_interface_discovery)
            * **CiscoSwitchInterfaceSNMPv3**
        * [template_cisco_total](Network_Devices/Cisco/template_cisco_total)
            * **Cisco Total**
        * [template_for_cisco_nexus_9000](Network_Devices/Cisco/template_for_cisco_nexus_9000)
            * **NEXUS 9000**
        * [template_for_cisco_optical_sensors_with_autodiscovery](Network_Devices/Cisco/template_for_cisco_optical_sensors_with_autodiscovery)
            * **Template_Cisco_Sensors**
        * [template_generic_cisco](Network_Devices/Cisco/template_generic_cisco)
            * **Generic Cisco**
        * [template_lacp_ports_monitoring](Network_Devices/Cisco/template_lacp_ports_monitoring)
            * **Template_Cisco_LAG**
        * [template_mappings_for_cisco_nexus_9000_for_zabbix_3.2](Network_Devices/Cisco/template_mappings_for_cisco_nexus_9000_for_zabbix_3.2)
            * **Template APC PDU**
        * [template_sg220-26](Network_Devices/Cisco/template_sg220-26)
            * **Template_Cisco_SG220-26P.xml**
        * [template_sg350xg-2f10](Network_Devices/Cisco/template_sg350xg-2f10)
            * **Cisco_SB_SG350XG-2F10**
        * [template_sg500_500x_stacking](Network_Devices/Cisco/template_sg500_500x_stacking)
            * **Template SNMP Cisco SG500x**
        * [template_zabbix_for_monitoring_cisco_3750_in_stackwise](Network_Devices/Cisco/template_zabbix_for_monitoring_cisco_3750_in_stackwise)
            * **Zabbix template for monitoring Cisco 3750 in StackWise**<p>The template was presented as a zip archive</p>
    * [Citrix_NetScaler](Network_Devices/Citrix_NetScaler)
        * [template_basics_plus_ha](Network_Devices/Citrix_NetScaler/template_basics_plus_ha)
            * **Template NetScaler**<p>Same as v2.0 with valuemap and application prototype added.</p>
        * [template_netscaler](Network_Devices/Citrix_NetScaler/template_netscaler)
            * **Template NetScaler**
    * [D-Link](Network_Devices/D-Link)
        * [template_шаблон_d-link_dns-340l](Network_Devices/D-Link/template_шаблон_d-link_dns-340l)
            * **Шаблон d-link dns-340l**<p>The template was presented as a zip archive</p>
        * [template_d-link_des3026](Network_Devices/D-Link/template_d-link_des3026)
            * **Template_Dlink_DES3026**
        * [template_d-link_dgs-1100-08v2_snmpv2](Network_Devices/D-Link/template_d-link_dgs-1100-08v2_snmpv2)
            * **D-Link DGS 1100**
        * [template_d-link_dgs-1100-10_me_rev._a1](Network_Devices/D-Link/template_d-link_dgs-1100-10_me_rev._a1)
            * **Template SNMP D-link DGS-1100-10/ME revA1**
        * [template_d-link_dgs-1210-52_rev._b](Network_Devices/D-Link/template_d-link_dgs-1210-52_rev._b)
            * **Template SNMP D-link DGS-1210-52 revB**
        * [template_d-link_dgs-1210-52_rev._c](Network_Devices/D-Link/template_d-link_dgs-1210-52_rev._c)
            * **Template SNMP D-link DGS-1210-52 revC**
        * [template_d-link_dgs-3100-xx](Network_Devices/D-Link/template_d-link_dgs-3100-xx)
            * **Template SNMP D-link DGS-3100-xx**<p>RlEnvMonState/ciscoEnvMonState{ normal(1), warning(2), critical(3), shutdown(4), notPresent(5), notFunctioning(6) }</p>
        * [template_d-link_dgs-3120-xx](Network_Devices/D-Link/template_d-link_dgs-3120-xx)
            * **Template SNMP D-link DGS-3120-xx**<p>D-link do something realy wierd with swTemperatureTable. So it's values not discovered but set manualy as items</p>
        * [template_d-link_dgs_1100](Network_Devices/D-Link/template_d-link_dgs_1100)
            * **D-Link DGS 1100**
        * [template_des-1210-28](Network_Devices/D-Link/template_des-1210-28)
            * **Template SNMP D-Link DES-1210-28**<p>Autor: m.beloglazov@gmail.com Template: Template D-link DES-1210-28 SNMP Version Zabbix: 3.0</p>
        * [template_des-3526](Network_Devices/D-Link/template_des-3526)
            * **DES-3526**
        * [template_zabbix_2.2_d-link_dgs-3200_snmp](Network_Devices/D-Link/template_zabbix_2.2_d-link_dgs-3200_snmp)
            * **Template SNMP D-Link DGS-3200**
    * [Datacom](Network_Devices/Datacom)
        * [template_dm2500](Network_Devices/Datacom/template_dm2500)
            * **DATACOM DM2500**
        * [template_dm4610_olt](Network_Devices/Datacom/template_dm4610_olt)
            * **DATACOM DmOS - ONU Interfaces**
        * [template_dmos](Network_Devices/Datacom/template_dmos)
            * **DM Template - DmOS**
        * [template_dmos-hardware_monitor](Network_Devices/Datacom/template_dmos-hardware_monitor)
            * **DmOS - Hardware Monitor**<p>Monitor de objetos da MIB DMOS-HW-MONITOR-MIB para monitoramento do hardware dos devices.</p>
    * [Dell](Network_Devices/Dell)
        * [template_dell_idrac](Network_Devices/Dell/template_dell_idrac)
            * **Dell iDrac**<p>The template was presented as a tar.gz archive</p>
        * [template_force_c150](Network_Devices/Dell/template_force_c150)
            * **Force C150**
    * [Eltex](Network_Devices/Eltex)
        * [template_eltex_lte-8x](Network_Devices/Eltex/template_eltex_lte-8x)
            * **Template Eltex LTE-8X**
        * [template_eltex_mes](Network_Devices/Eltex/template_eltex_mes)
            * **Template Eltex MES SNMPv2**
        * [template_mes3124f](Network_Devices/Eltex/template_mes3124f)
            * **Template_MES3124**
        * [template_mes3124f_1](Network_Devices/Eltex/template_mes3124f_1)
            * **Template_MES3124**
        * [template_snmp_array_network_secure_access_gateway](Network_Devices/Eltex/template_snmp_array_network_secure_access_gateway)
            * **Array AG1100 SNMP 监控模板**
    * [Fortigate](Network_Devices/Fortigate)
        * [template_fortianalyzer](Network_Devices/Fortigate/template_fortianalyzer)
            * **Template SNMP FortiAnalyzer**<p>Version 1.0 Created by Samuel Martins Repo: https://github.com/slunart/Zabbix-Templates Plesase, install the Fortianalyzer MIB on Zabbix Server FORTINET-FORTIMANAGER-FORTIANALYZER-MIB</p>
        * [template_fortigate_100d](Network_Devices/Fortigate/template_fortigate_100d)
            * **Template Fortigate 100D**
        * [template_fortigate_100d-200b-60c-30d](Network_Devices/Fortigate/template_fortigate_100d-200b-60c-30d)
            * **FGT-INTERFACES DISCOVERY**
        * [template_fortigate_100d-200b-60c-30d_1](Network_Devices/Fortigate/template_fortigate_100d-200b-60c-30d_1)
            * **FGT-CPU**
            * **FGT-EQUIPAMENTO**
            * **FGT-INTERFACES DISCOVERY**
            * **FGT-MEMORIA**
        * [template_fortigate_ha_status](Network_Devices/Fortigate/template_fortigate_ha_status)
            * **Fortigate HA Sync**<p>BY EAS *************** CONTACT erik@tndbrasil.com.br Facebook: https://www.facebook.com/easerik Instagram: https://www.instagram.com/easerik Linkedin: https://www.linkedin.com/in/easerik/</p>
        * [template_fortigate_snmp](Network_Devices/Fortigate/template_fortigate_snmp)
            * **Template SNMP Fortinet Devices**
        * [template_fortigate_snmp_v2019](Network_Devices/Fortigate/template_fortigate_snmp_v2019)
            * **Template SNMP Fortinet Devices v2019**
        * [template_fortinet_all_discovery](Network_Devices/Fortigate/template_fortinet_all_discovery)
            * **Template Module Interfaces SNMPv2**<p>Template Interfaces version: 0.14 MIBs used: IF-MIB</p>
        * [template_fortiswitch_124e-poe](Network_Devices/Fortigate/template_fortiswitch_124e-poe)
            * **Template SNMP FortiSwitch Devices**
        * [template_snmp_fortigate_wifi_access_point](Network_Devices/Fortigate/template_snmp_fortigate_wifi_access_point)
            * **Template SNMP Fortigate Wifi Access Points**<p>Created by Samuel Martins (02-17-2021) https://github.com/slunart https://www.linkedin.com/in/slmartins ----------------------------------------------------------- Forti AP is monitored through FortiGate, so you need to apply this template to the Fortigate device. Originally based on template: "Fortigate SNMP SSLVPN/FortiAP Manged by Fortigate WiFi Controller template" created by Vadim Portnoy. Source: https://share.zabbix.com/network_devices/fortigate/fortigate-snmp-sslvpn-fortiap-manged-by-fortigate-wifi-controller-template My improvements: - More items monitored. - Items' name shorted - Interval time of items modified - Trigged added - Graphics Prototype added</p>
        * [template_snmp_fortinet-antivirus_and_webfilter](Network_Devices/Fortigate/template_snmp_fortinet-antivirus_and_webfilter)
            * **Template SNMP Fortinet  - Antivirus and WebFilter**<p>Created by Samuel Martins (04-16-2021) https://github.com/slunart https://www.linkedin.com/in/slmartins ----------------------------------------------------------- Based on FORTINET-FORTIGATE-MIB OBJECTS { fgAvVirusDetected, fgAvVirusBlocked, fgAvHTTPVirusDetected, fgAvHTTPVirusBlocked, fgAvSMTPVirusDetected, fgAvSMTPVirusBlocked, fgAvPOP3VirusDetected, fgAvPOP3VirusBlocked, fgAvIMAPVirusDetected, fgAvIMAPVirusBlocked, fgAvFTPVirusDetected, fgAvFTPVirusBlocked, fgAvIMVirusDetected, fgAvIMVirusBlocked, fgAvNNTPVirusDetected, fgAvNNTPVirusBlocked, fgAvOversizedDetected, fgAvOversizedBlocked } FgWebfilterStatsEntry ::= SEQUENCE { fgWfHTTPBlocked Counter32, fgWfHTTPSBlocked Counter32, fgWfHTTPURLBlocked Counter32, fgWfHTTPSURLBlocked Counter32, fgWfActiveXBlocked Counter32, fgWfCookieBlocked Counter32, fgWfAppletBlocked Counter32 }</p>
    * [Generic](Network_Devices/Generic)
        * [template_arp_check](Network_Devices/Generic/template_arp_check)
            * **SNMPv2 ARP**
        * [template_bgpv4_snmp](Network_Devices/Generic/template_bgpv4_snmp)
            * **Template BGPv4 SNMP**<p>Template BGPv4 Sessions -Admin Status -Established Time -Operation Status -AS Name -BGP last Error By: Flavio Gomes Figueira Camacho Junior Require: ValueMaps .BGP4-MIB::bgpPeerAdminStatus .BGP4-MIB::bgpPeerState ExternalScript .as_name Base: BGP4-MIB.mib https://www.iana.org/assignments/bgp-parameters/bgp-parameters.xhtml</p>
        * [template_module_etherlike-mib_snmpv3](Network_Devices/Generic/template_module_etherlike-mib_snmpv3)
            * **Template Module EtherLike-MIB SNMPv3**<p>Template Module EtherLike-MIB SNMPv3 Template used Template Module EtherLike-MIB SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.1</p>
        * [template_module_generic_snmpv3](Network_Devices/Generic/template_module_generic_snmpv3)
            * **Template Module Generic SNMPv3**<p>Template Module Generic SNMPv3 Template used Template Module Generic SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.1</p>
        * [template_module_interfaces_snmpv3](Network_Devices/Generic/template_module_interfaces_snmpv3)
            * **Template Module Interfaces SNMPv3**<p>Template Module Interfaces SNMPv3 Used template Template Module Interfaces SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.0</p>
        * [template_net_network_generic_device_snmpvx](Network_Devices/Generic/template_net_network_generic_device_snmpvx)
            * **Template Net Network Generic Device SNMPvX**<p>The template was presented as a zip archive</p>
        * [template_snmpv2_interfaces_packets_per_second](Network_Devices/Generic/template_snmpv2_interfaces_packets_per_second)
            * **Template SNMPv2 Interfaces packets per second**<p>Template adds items for measuring switchport unicast, broadcast and multicast packets per second.</p>
    * [H3C](Network_Devices/H3C)
        * [template_华三交换机通用监控模板](Network_Devices/H3C/template_华三交换机通用监控模板)
            * **华三交换机监控模板**
        * [template_华三交换机h3c_s3100自制监控模板](Network_Devices/H3C/template_华三交换机h3c_s3100自制监控模板)
            * **Template Housekeeping Metrics**<p>Language: English Autor: Bernardo Lankheet Blog: www.bernardolankheet.com.br Repositorio: https://github.com/bernardolankheet/Zabbix-Monitor-Housekeeper</p>
        * [template_华三交换机h3c_s7506自制监控模板](Network_Devices/H3C/template_华三交换机h3c_s7506自制监控模板)
            * **Canon Color MF printers Template**<p>Template for color Canon Multi Functional printer.</p>
        * [template_华三secpath系列防火墙监控模板](Network_Devices/H3C/template_华三secpath系列防火墙监控模板)
            * **华三SecPath防火墙监控模板**
        * [template_h3c_wx3510h_discovery](Network_Devices/H3C/template_h3c_wx3510h_discovery)
            * **H3C_WX3510H**
    * [HP](Network_Devices/HP)
        * [template_3com](Network_Devices/HP/template_3com)
            * **Template 3COM 4500 28 Ports**
        * [template_3com_baseline_2226-sfp_plus_snmpv2](Network_Devices/HP/template_3com_baseline_2226-sfp_plus_snmpv2)
            * **Template 3COM Baseline 2226-SFP Plus SNMPv2**
        * [template_aruba_os_wlc_6.5+-zabbix_4.x](Network_Devices/HP/template_aruba_os_wlc_6.5+-zabbix_4.x)
            * **Template ArubaOS**
        * [template_hp-2920-xxg](Network_Devices/HP/template_hp-2920-xxg)
            * **HP Procurve 2920**
        * [template_hp_(chassis,_brocade,_blade)](Network_Devices/HP/template_hp_(chassis,_brocade,_blade))
            * **Template HP (Chassis, Brocade, Blade)**<p>The template was presented as a tar.gz archive</p>
        * [template_hp_1920-16g](Network_Devices/HP/template_hp_1920-16g)
            * **Template SNMP HP v1920-16G**
        * [template_hp_1920-24g](Network_Devices/HP/template_hp_1920-24g)
            * **Template SNMP HP v1920-24G**
        * [template_hp_5100_gbic](Network_Devices/HP/template_hp_5100_gbic)
            * **Sinais Opticos SW HP**<p>Sinais ópticos (GBIC) para SW HP 5100</p>
        * [template_hp_a5120_switch,_snmp_v3](Network_Devices/HP/template_hp_a5120_switch,_snmp_v3)
            * **Template HP A5120**
        * [template_hp_ilo4](Network_Devices/HP/template_hp_ilo4)
            * **Template SNMP HP Server Health Template**
        * [template_hp_msa_2040](Network_Devices/HP/template_hp_msa_2040)
            * **Template SNMP HP MSA 2040 SAN**
        * [template_hp_officeconnect_19xx](Network_Devices/HP/template_hp_officeconnect_19xx)
            * **Template SNMP OfficeConnect 19XX**
        * [template_hp_transceivers_lld_monitoring_(gbic_ddm_ddmi_dom)](Network_Devices/HP/template_hp_transceivers_lld_monitoring_(gbic_ddm_ddmi_dom))
            * **Template GM DDMI**<p>Monitor HP transceivers</p>
        * [template_hp_v1910-24g_switch_equipamento](Network_Devices/HP/template_hp_v1910-24g_switch_equipamento)
            * **SWITCH HP - EQUIPAMENTO**
        * [template_net_hp_and_aruba_enterprise_switch_snmpv3](Network_Devices/HP/template_net_hp_and_aruba_enterprise_switch_snmpv3)
            * **Template Net HP Enterprise Switch SNMPv3**<p>Template Net HP Enterprise Switch, support SNMPv3 Original template Template Net HP Enterprise Switch SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.0</p>
        * [template_zabbix_2.2_hp_v19##-24g_snmp](Network_Devices/HP/template_zabbix_2.2_hp_v19##-24g_snmp)
            * **Template SNMP HP v1910-24G**
        * [template_zabbix_2.2_hp_v1905_poe_snmp](Network_Devices/HP/template_zabbix_2.2_hp_v1905_poe_snmp)
            * **Template SNMP HP v1905 POE**
        * [template_zabbix_2.2_hp_v1910-24g_snmp](Network_Devices/HP/template_zabbix_2.2_hp_v1910-24g_snmp)
            * **Template SNMP HP v1910-24G**
        * [template_zabbix_hp_v1910-48g_snmp](Network_Devices/HP/template_zabbix_hp_v1910-48g_snmp)
            * **Template SNMP HP v1910-48G**
    * [Huawei](Network_Devices/Huawei)
        * [template_华为交换机通用监控模板](Network_Devices/Huawei/template_华为交换机通用监控模板)
            * **华为交换机监控模板**
        * [template_huawei_ar_161_s2220e](Network_Devices/Huawei/template_huawei_ar_161_s2220e)
            * **Basic HUAWEI SNMP with traps AR161 and S2220E**
        * [template_huawei_b593](Network_Devices/Huawei/template_huawei_b593)
            * **Template B593**
        * [template_huawei_ne40e_peering_bgp](Network_Devices/Huawei/template_huawei_ne40e_peering_bgp)
            * **Huawei NE40E - BGP**<p>Template para monitoramento de sessão BGP</p>
        * [template_huawei_quidway_s3900_series_switch](Network_Devices/Huawei/template_huawei_quidway_s3900_series_switch)
            * **Template Huawei Quidway s3900 series switches**
        * [template_huawei_quidway_s5600_series_switches](Network_Devices/Huawei/template_huawei_quidway_s5600_series_switches)
            * **Template Huawei Quidway s5600 series switches**
        * [template_huawei_s5700](Network_Devices/Huawei/template_huawei_s5700)
            * **Template Huawei Switch S5700**
        * [template_ma5600_gpon](Network_Devices/Huawei/template_ma5600_gpon)
            * **Template SNMP Interfaces Huawei**
        * [template_optical_modules_huawei](Network_Devices/Huawei/template_optical_modules_huawei)
            * **Template Optical Modules Huawei**
        * [template_power_supply_netengine_snmp](Network_Devices/Huawei/template_power_supply_netengine_snmp)
            * **Power Supply NetEngine SNMP**
        * [template_power_supply_s6700_snmp](Network_Devices/Huawei/template_power_supply_s6700_snmp)
            * **Power Supply S6700 SNMP**
        * [template_s_for_nex0_s57xx_s67xx](Network_Devices/Huawei/template_s_for_nex0_s57xx_s67xx)
            * **Templates for NEx0/S57xx/S67xx**<p>The template was presented as a zip archive</p>
    * [Infinera](Network_Devices/Infinera)
        * [template_groove_g30_infinera](Network_Devices/Infinera/template_groove_g30_infinera)
            * **Groove-G30 Infinera**
        * [template_infinera_xtm_series_tm-3000_ii_and_tm-301_ii_chassis](Network_Devices/Infinera/template_infinera_xtm_series_tm-3000_ii_and_tm-301_ii_chassis)
            * **ZBX-INFINERA-XTM-SERIES-MONITORING**
    * [Intelbras](Network_Devices/Intelbras)
        * [template_dvr_intelbras](Network_Devices/Intelbras/template_dvr_intelbras)
            * **Template_Dvr**<p>template dvr</p>
        * [template_olt8820g_intelbras](Network_Devices/Intelbras/template_olt8820g_intelbras)
            * **OLT**
        * [template_olt_4840e](Network_Devices/Intelbras/template_olt_4840e)
            * **Solustic - OLT GCOM EL5610 (Intelbras 4840E) v1.0.0**<p>Homologado na EL5610-04P (Intelbras 4840E) firmware V100R001B01D001P006SP5</p>
            * **Solustic-Modulo SNMP Generico v1.0.2**<p>MIBs: - SNMPv2-MIB</p>
        * [template_olt_4840e_1](Network_Devices/Intelbras/template_olt_4840e_1)
            * **Solustic - OLT GCOM EL5610 (Intelbras 4840E) v1.0.0**<p>Homologado na EL5610-04P (Intelbras 4840E) firmware V100R001B01D001P006SP5</p>
            * **Solustic-Modulo SNMP Generico v1.0.2**<p>MIBs: - SNMPv2-MIB</p>
    * [Juniper](Network_Devices/Juniper)
        * [template_瞻博srx系列防火墙监控模板](Network_Devices/Juniper/template_瞻博srx系列防火墙监控模板)
            * **瞻博SRX防火墙监控模板**
        * [template_juniper-optical-interface](Network_Devices/Juniper/template_juniper-optical-interface)
            * **Juniper-Optical-Interfaces**<p>Based on Zabbix's official Template Net Juniper SNMPv2, only minor modifications have been made. 1.The interfaces in the down and shutdown states have been filtered,virtual interfaces have also been filtered 2.The trigger threshold seting is -19dbm or 0dbm. 3.only RxLaserPower items,if you need TxLaserPower items but don’t know how to do it, please email me. whye1700#gmail.com(replace # with @)</p>
        * [template_juniper_(netscreen)](Network_Devices/Juniper/template_juniper_(netscreen))
            * **Juniper (Netscreen) Template**<p>The template was presented as a zip archive</p>
        * [template_juniper_bgp](Network_Devices/Juniper/template_juniper_bgp)
            * **Juniper BGP**
        * [template_juniper_ex_series](Network_Devices/Juniper/template_juniper_ex_series)
            * **Template Juniper EX**
        * [template_juniper_srx_series](Network_Devices/Juniper/template_juniper_srx_series)
            * **Template Juniper SRX**
        * [template_juniper_total](Network_Devices/Juniper/template_juniper_total)
            * **Juniper Total**
    * [Mikrotik](Network_Devices/Mikrotik)
        * [template_advanced_net_mikrotik_snmpv2](Network_Devices/Mikrotik/template_advanced_net_mikrotik_snmpv2)
            * **Advanced Template Net Mikrotik SNMPv2**<p>The template was presented as a zip archive</p>
        * [template_crs125-24g-1s-2hnd-in](Network_Devices/Mikrotik/template_crs125-24g-1s-2hnd-in)
            * **Mikrotik CRS125-24G-1S-2HnD-IN**
        * [template_mikrotik_bgp_lld](Network_Devices/Mikrotik/template_mikrotik_bgp_lld)
            * **Mikrotik - BGP LLD**
        * [template_mikrotik_queue_traffic_discovery](Network_Devices/Mikrotik/template_mikrotik_queue_traffic_discovery)
            * **Mikrotik-QUEUE**
        * [template_mikrotik_rb3011uias](Network_Devices/Mikrotik/template_mikrotik_rb3011uias)
            * **MikroTik RB3011UiAS**
        * [template_mikrotik_rb750-rb1100](Network_Devices/Mikrotik/template_mikrotik_rb750-rb1100)
            * **Template Mikrotik RB750-RB1100**<p>Autor: Danilo Barros de Medeiros Template: Mikrotik RB750/RB1100 Versão Zabbix: 3.0 Versão Template: 1.1</p>
        * [template_mikrotik_rb750gr3](Network_Devices/Mikrotik/template_mikrotik_rb750gr3)
            * **MikroTik RB750GR3**
        * [template_mikrotik_routerboard通用模板（仅限于rb设备）](Network_Devices/Mikrotik/template_mikrotik_routerboard通用模板（仅限于rb设备）)
            * **Mikrotik RouterBOARD**<p>Ros 专用模板（RB设备） 该模板只用于RouterOS路由系统监控，其它设备请绕路。 By:【犯罪嫌疑人】</p>
        * [template_mikrotik_routeros_v6.x_2021](Network_Devices/Mikrotik/template_mikrotik_routeros_v6.x_2021)
            * **MikroTik**
        * [template_mikrotik_script_execution_via_snmp](Network_Devices/Mikrotik/template_mikrotik_script_execution_via_snmp)
            * **Mikrotik Script Execution**
        * [template_mikrotik_wireless_lld](Network_Devices/Mikrotik/template_mikrotik_wireless_lld)
            * **MikroTik - Basico Wireless Station**
            * **MikroTik - Basico Wireless AP**
            * **MikroTik - Basico Wireless Registration Table**
        * [template_monitoramento_de_mikrotik_sem_interface_pppoe](Network_Devices/Mikrotik/template_monitoramento_de_mikrotik_sem_interface_pppoe)
            * **Template Mikrotik**
        * [template_net_mikrotik_snmpv3](Network_Devices/Mikrotik/template_net_mikrotik_snmpv3)
            * **Template Net Mikrotik SNMPv3**<p>Template Net Mikrotik MIBs used: HOST-RESOURCES-MIB MIKROTIK-MIB</p>
        * [template_quantidade_de_clientes_pppoe](Network_Devices/Mikrotik/template_quantidade_de_clientes_pppoe)
            * **1 - Template Check Active Client PPPoE**
        * [template_routerboard_ccr_sem_interfaces_ppp](Network_Devices/Mikrotik/template_routerboard_ccr_sem_interfaces_ppp)
            * **aa Template SNMP Mikrotik CCR-1036**
        * [template_routerboard_rb2011-uias-rm](Network_Devices/Mikrotik/template_routerboard_rb2011-uias-rm)
            * **aa Template SNMP Mikrotik RB2011UiAS**
        * [template_sfp_mikrotik](Network_Devices/Mikrotik/template_sfp_mikrotik)
            * **SFP Mikrotik**
        * [template_templete_ubiquiti](Network_Devices/Mikrotik/template_templete_ubiquiti)
            * **templete rsg**
        * [template_zabbix-mikrotik-bgp-json](Network_Devices/Mikrotik/template_zabbix-mikrotik-bgp-json)
            * **Mikrotik - BGP LLD**
        * [template_zabbix-mikrotik-ospf-json](Network_Devices/Mikrotik/template_zabbix-mikrotik-ospf-json)
            * **Mikrotik - OSPF LLD**
        * [template_zabbix-mikrotik-partition-table](Network_Devices/Mikrotik/template_zabbix-mikrotik-partition-table)
            * **Mikrotik-Partion-Table**
        * [template_zabbix-mikrotik-queue-tree](Network_Devices/Mikrotik/template_zabbix-mikrotik-queue-tree)
            * **Mikrotik-Queue-Tree**
        * [template_zabbix_routeros_bgp_monitoring](Network_Devices/Mikrotik/template_zabbix_routeros_bgp_monitoring)
            * **Template RouterOS BGP**
    * [Netgear](Network_Devices/Netgear)
        * [template_netgear_gs110tp](Network_Devices/Netgear/template_netgear_gs110tp)
            * **Template Netgear GS110TP**
        * [template_netgear_gs716t](Network_Devices/Netgear/template_netgear_gs716t)
            * **Template_Netgear_GS716T**
        * [template_netgear_gs724t](Network_Devices/Netgear/template_netgear_gs724t)
            * **Template_Netgear_GS724T**
        * [template_netgear_gs724tv3](Network_Devices/Netgear/template_netgear_gs724tv3)
            * **Template_Netgear_GS724T_v3**
        * [template_netgear_gs748t](Network_Devices/Netgear/template_netgear_gs748t)
            * **Template_Netgear_GS748T**
        * [template_netgear_wg103](Network_Devices/Netgear/template_netgear_wg103)
            * **Template_Netgear_WG103**
    * [Other](Network_Devices/Other)
        * [template_3com_4500](Network_Devices/Other/template_3com_4500)
            * **Template 3COM 4500 52 Ports**
        * [template_锐捷交换机监控模板](Network_Devices/Other/template_锐捷交换机监控模板)
            * **锐捷交换机监控模板**
        * [template_adva_fsp3000](Network_Devices/Other/template_adva_fsp3000)
            * **Template Adva SNMP Autodiscovery**<p>Autodiscovery ADVA Dwdm (especially FSP3000 r7)</p>
        * [template_alvarion_breezenet_(b10,_b14,_b28)](Network_Devices/Other/template_alvarion_breezenet_(b10,_b14,_b28))
            * **Template Net BreezeNet SNMPv1**
        * [template_arbor_sp](Network_Devices/Other/template_arbor_sp)
            * **Template_Arbor_SP**
        * [template_arbor_tms](Network_Devices/Other/template_arbor_tms)
            * **Template_Arbor_TMS**
        * [template_asga_olt2500](Network_Devices/Other/template_asga_olt2500)
            * **Template SNMP  AsGa OLT2500**
        * [template_bintec_elmeg_routers](Network_Devices/Other/template_bintec_elmeg_routers)
            * **bintec Router**<p>Template for routers from bintec elmeg Tested with RS353jv, be.IP plus and R1202</p>
        * [template_dell_chassis_management_controller_(cmc)](Network_Devices/Other/template_dell_chassis_management_controller_(cmc))
            * **DELL Chassis Management Controller (CMC)**<p>The template was presented as a zip archive</p>
        * [template_docsis_cable_modem](Network_Devices/Other/template_docsis_cable_modem)
            * **Docsis Cable Modem - 16Mbps**
        * [template_enhanced_snmp_interface_discovery](Network_Devices/Other/template_enhanced_snmp_interface_discovery)
            * **Enhanced SNMP Interface Discovery**<p>Enhanced SNMP interface discovery 1.0.1 Template made by Twan Kamans. https://www.twan-it.nl This template searches for 4 different categories: - Interfaces that are administratively disabled - Interfaces that are working onder normal condition - Interfaces with priority, such as switch uplink - Virtual interfaces such as tunnel, port channel and vlan interfaces. Revision 0.7 - Added support for virtual interfaces Revision 0.7.1 - Added support for (filtering) stack switch ports - Fixed a bug in which VLAN interfaces with the number 0 in them would still be discovered by the normal LLD rule Revision 0.7.2 - Filtering VLAN's 1002 - 1005 interfaces - Added support for subinterfaces for Junos Revision 0.8 - Completely revisited the filtering of items using Regex due to introduction of Junos devices. You can adjust the regex for physical devices using a macro. Revision 0.9 - Added support for enduser ports. Triggers will not activate if port description contains macro value. Revision 1.0 - Tested template on posible errors. Revision 1.0.1 - Added bandwidth statistics for virtual interfaces. Revision 1.0.2 - Bandwidth triggers now make use of user macro context, making individual port bandwidth limits posible. - The interface changed state severity has been lowered by default. The new default severity for all interfaces is "warning". Exceptions to this are the priority interfaces which are "average".</p>
        * [template_f5_ltm负载均衡器监控模板](Network_Devices/Other/template_f5_ltm负载均衡器监控模板)
            * **F5 LTM负载均衡器监控模板**
        * [template_fortinet](Network_Devices/Other/template_fortinet)
            * **Fortinet**<p>The template was presented as a zip archive</p>
        * [template_h3c_wireless_ac(chinese)](Network_Devices/Other/template_h3c_wireless_ac(chinese))
            * **H3C AC**
        * [template_ip_cam_axis_m1013](Network_Devices/Other/template_ip_cam_axis_m1013)
            * **IP cam AXIS M1013**
        * [template_lan_controller_v2](Network_Devices/Other/template_lan_controller_v2)
            * **Huawei UPS**
        * [template_net_digisol_dg-gs1526e_snmpv2](Network_Devices/Other/template_net_digisol_dg-gs1526e_snmpv2)
            * **Template Net Digisol DG-GS1526E SNMPv2**<p>Template Net Digisol DG-GS1526E SNMPv2 Tested on Zabbix 4.4 with DG-GS1526E running 1.0.1.4 software Created by full clone of Template Net Digisol DG-GS4524 SNMPv2 then: . Templates .. Unlink and clear: Template Module Generic SNMPv2 .. Link: Template Module ICMP Ping . Macros: copied {$SNMP.TIMEOUT} from "Template Module Generic SNMPv2" . Applications: added "General" and "Status" . Items deleted .. Hardware version . Items added .. SNMP traps (fallback): copy from "Template Module Generic SNMPv2" .. System contact details: copy from "Template Module Generic SNMPv2" .. System description: copy from "Template Module Generic SNMPv2" .. System location: copy from "Template Module Generic SNMPv2" .. System name: copy from "Template Module Generic SNMPv2" .. System object ID: copy from "Template Module Generic SNMPv2" .. Uptime: copy from "Template Module Generic SNMPv2" .. System serial number: Delete</p>
        * [template_opengear_console](Network_Devices/Other/template_opengear_console)
            * **Template_Opengear_Console**
        * [template_power_net_1000](Network_Devices/Other/template_power_net_1000)
            * **VOLT - POWER NET 1000**
        * [template_rad_airmux_400](Network_Devices/Other/template_rad_airmux_400)
            * **Template Net RAD AirMux 400 SNMPv1**
        * [template_room_alert_12er](Network_Devices/Other/template_room_alert_12er)
            * **Template Room Alert 12er**
        * [template_ruckus_zonedirector](Network_Devices/Other/template_ruckus_zonedirector)
            * **Template SNMP Ruckus Zonedirector**
        * [template_snr_2990g-48](Network_Devices/Other/template_snr_2990g-48)
            * **Template_SNR**
        * [template_standard_dsl_snmp](Network_Devices/Other/template_standard_dsl_snmp)
            * **Template SNMP ADSL Stats**
        * [template_stm1_4](Network_Devices/Other/template_stm1_4)
            * **STM1/4**<p>The template was presented as a zip archive</p>
        * [template_stormshield](Network_Devices/Other/template_stormshield)
            * **Template_Stormshield**<p>Template Netasq</p>
        * [template_zabbix-newtecel470_satellite_modem](Network_Devices/Other/template_zabbix-newtecel470_satellite_modem)
            * **Newtec**<p>Template for satellite modem</p>
    * [Palo_Alto](Network_Devices/Palo_Alto)
        * [template_palo_alto_firewall](Network_Devices/Palo_Alto/template_palo_alto_firewall)
            * **Template_Palo_Alto_Firewall**
        * [template_palo_alto_pa-200_pan-os_ver.6.0.x](Network_Devices/Palo_Alto/template_palo_alto_pa-200_pan-os_ver.6.0.x)
            * **Template_Palo_Alto_PA200**
        * [template_palo_alto_snmpv3](Network_Devices/Palo_Alto/template_palo_alto_snmpv3)
            * **Template Palo Alto SNMPv3 Auth Priv**
        * [template_palo_alto_with_64-bit_counters_(snmpv2)](Network_Devices/Palo_Alto/template_palo_alto_with_64-bit_counters_(snmpv2))
            * **Template Palo Alto SNMPv2 64-bit counters**
        * [template_paloalto_snmpv3_zabbix4.0](Network_Devices/Palo_Alto/template_paloalto_snmpv3_zabbix4.0)
            * **Template SNMPv3 Palo alto OS 8.1**
    * [Parks](Network_Devices/Parks)
        * [template_parks_fiberlink_20048s](Network_Devices/Parks/template_parks_fiberlink_20048s)
            * **Template Parks Fiberlink 20048S - V1.1**
        * [template_parks_fiberlink_30028](Network_Devices/Parks/template_parks_fiberlink_30028)
            * **Parks Fiberlink 30028**<p>The template was presented as a zip archive</p>
    * [PepLink](Network_Devices/PepLink)
        * [template_peplink](Network_Devices/PepLink/template_peplink)
            * **Template Peplink**
    * [QTech](Network_Devices/QTech)
        * [template_qtech_ddm_sensors](Network_Devices/QTech/template_qtech_ddm_sensors)
            * **Template_Qtech_Sensors**
    * [Ruckus](Network_Devices/Ruckus)
        * [template_ruckus_smartzone_zone_director](Network_Devices/Ruckus/template_ruckus_smartzone_zone_director)
            * **Template SNMP Ruckus Zonedirector**
        * [template_snmp_ruckus_zonedirector_9.5](Network_Devices/Ruckus/template_snmp_ruckus_zonedirector_9.5)
            * **Template SNMP Ruckus Zonedirector 9.5**
    * [SNR](Network_Devices/SNR)
        * [template_snr_access_switches_snmpv2](Network_Devices/SNR/template_snr_access_switches_snmpv2)
            * **Template SNR Broadcast-Multicast-Unicast**
            * **Template SNR CPU Usage**
            * **Template SNR Error and Discared Packets**
            * **Template SNR Interfaces Statistic**
            * **Template SNR Memory Information**
            * **Template SNR POE Power**
        * [template_snr_distribution_switches_snmpv2](Network_Devices/SNR/template_snr_distribution_switches_snmpv2)
            * **Template SNR Broadcast-Multicast-Unicast**
            * **Template SNR CPU Usage**
            * **Template SNR DDM Statistic**
            * **Template SNR Error and Discared Packets**
            * **Template SNR Interfaces Statistic**
            * **Template SNR Memory Information**
            * **Template SNR POE Power**
            * **Template SNR Switch Temperature**
    * [Sonicwall](Network_Devices/Sonicwall)
        * [template_sonicwall_gen6plus](Network_Devices/Sonicwall/template_sonicwall_gen6plus)
            * **Sonicwall-Gen6Plusv2**<p>V2 Plantilla para gráficas de interfaces manuales y auto descubrimiento de VPNs y Vlans, especial para VPNs TunelInterface. Creacción de gráficas manuales, no automáticas, para evitar gráficas automáticas por descubrimiento, con trafico 0. Traps Implementados y Tags para avisos de recuperación autoática. En continua adaptación........</p>
        * [template_sonicwall_nsa_series](Network_Devices/Sonicwall/template_sonicwall_nsa_series)
            * **Template SNMP Sonicwall 4600**
        * [template_sonicwall_tz500_600](Network_Devices/Sonicwall/template_sonicwall_tz500_600)
            * **Sonicwall SNMP - TZ600**<p>Template customizado para o TZ600</p>
    * [TP-Link](Network_Devices/TP-Link)
        * [template_sg5428-g](Network_Devices/TP-Link/template_sg5428-g)
            * **TP-Link 5428**
        * [template_td-w8950n](Network_Devices/TP-Link/template_td-w8950n)
            * **TP-Link TD-W8950N**
    * [Ubiquiti](Network_Devices/Ubiquiti)
        * [template_airfiber_5u](Network_Devices/Ubiquiti/template_airfiber_5u)
            * **Template AirFiber_5U**
        * [template_edgemax_(snmpv2)](Network_Devices/Ubiquiti/template_edgemax_(snmpv2))
            * **Template EdgeMAX SNMPv2**
        * [template_ubiquit_unifi_ap_wifi](Network_Devices/Ubiquiti/template_ubiquit_unifi_ap_wifi)
            * **Template Ubiquiti Unifi AP LR SNMPv1**
        * [template_ubiquiti_airmax_estações_(clientes)](Network_Devices/Ubiquiti/template_ubiquiti_airmax_estações_(clientes))
            * **Ubiquiti AirMax AP Clientes by Dzset**
        * [template_ubiquiti_airos8](Network_Devices/Ubiquiti/template_ubiquiti_airos8)
            * **Template AirOS8**
        * [template_ubiquiti_ltu-rocket_wireless](Network_Devices/Ubiquiti/template_ubiquiti_ltu-rocket_wireless)
            * **Ubiquiti LTU-rocket wireless**
        * [template_unifi](Network_Devices/Ubiquiti/template_unifi)
            * **Template Ubitiqui**
        * [template_unifi_ap_snmpv3](Network_Devices/Ubiquiti/template_unifi_ap_snmpv3)
            * **Template UBQT UNIFI SNMP V3 HN**<p>This template retrieve SNMP data from Unifi AP devices. MIBS requiriments: FROGFOOT-RESOURCES-MIB IANAifType-MIB IF-MIB SNMP-FRAMEWORK-MIB SNMPv2-CONF SNMPv2-MIB SNMPv2-SMI SNMPv2-TC UBNT-MIB UBNT-UniFi-MIB Author: Helmut Leonhardt based on Alex Moura</p>
        * [template_unifi_snmp_2019_v1.0](Network_Devices/Ubiquiti/template_unifi_snmp_2019_v1.0)
            * **Template UNIFI SNMP 2019 V1.0**<p>This template retrieve SNMP data from Unifi AP devices. MIBS requiriments: FROGFOOT-RESOURCES-MIB IANAifType-MIB IF-MIB SNMP-FRAMEWORK-MIB SNMPv2-CONF SNMPv2-MIB SNMPv2-SMI SNMPv2-TC UBNT-MIB UBNT-UniFi-MIB Author: Alex Moura</p>
        * [template_unifi_snmp_2019_v1.1](Network_Devices/Ubiquiti/template_unifi_snmp_2019_v1.1)
            * **Template UBQT UNIFI SNMP V1 HN**<p>This template retrieve SNMP data from Unifi AP devices. MIBS requiriments: FROGFOOT-RESOURCES-MIB IANAifType-MIB IF-MIB SNMP-FRAMEWORK-MIB SNMPv2-CONF SNMPv2-MIB SNMPv2-SMI SNMPv2-TC UBNT-MIB UBNT-UniFi-MIB Author: Alex Moura</p>
        * [template_unifi_switch_temperature](Network_Devices/Ubiquiti/template_unifi_switch_temperature)
            * **Unifi Switch 16 POE-150W Temperature**
    * [Watchguard](Network_Devices/Watchguard)
        * [template_firebox_watchguard_m400](Network_Devices/Watchguard/template_firebox_watchguard_m400)
            * **Halley Firewall Watchguard M400**
        * [template_watchguard_snmp_(post_v12.0)](Network_Devices/Watchguard/template_watchguard_snmp_(post_v12.0))
            * **Watchguard Firewall**
    * [YAMAHA](Network_Devices/YAMAHA)
        * [template_ヤマハ_インテリジェントl2スイッチハブ_swx2300](Network_Devices/YAMAHA/template_ヤマハ_インテリジェントl2スイッチハブ_swx2300)
            * **Temp_SWX2300**
    * [Zyxel](Network_Devices/Zyxel)
        * [template_zyxel_ndms](Network_Devices/Zyxel/template_zyxel_ndms)
            * **Template SNMP ZyXEL NDMS**
        * [template_zyxel_nxc5500_wlan_controller](Network_Devices/Zyxel/template_zyxel_nxc5500_wlan_controller)
            * **Zyxel NXC5500 WLAN controller**<p>The template was presented as a zip archive</p>
    * [eXtreme](Network_Devices/eXtreme)
        * [template_extreme_exos](Network_Devices/eXtreme/template_extreme_exos)
            * **Template SNMP Extreme EXOS**
        * [template_extreme_x450a](Network_Devices/eXtreme/template_extreme_x450a)
            * **Template_Extreme_X450a**
    * [template_actidata](Network_Devices/template_actidata)
        * **Template Actidata NV1 SNMPv1**<p>Шаблон для Контроллера температуры и влажности Actidata NV1</p>
    * [template_agst_conflex](Network_Devices/template_agst_conflex)
        * **ConflexSNMP**
    * [template_asus-rt-ac87u](Network_Devices/template_asus-rt-ac87u)
        * **ASUS-ルーター（RT-AC87U）**<p>ASUSルーター</p>
    * [template_avm_fritz!box_and_repeater_over_tr-064](Network_Devices/template_avm_fritz!box_and_repeater_over_tr-064)
        * **AVM FRITZ!Box and Repeater over TR-064**<p>The template was presented as a zip archive</p>
    * [template_avm_fritzbox_and_fritzrepeater](Network_Devices/template_avm_fritzbox_and_fritzrepeater)
        * **AVM FritzBox and FritzRepeater**<p>The template was presented as a zip archive</p>
    * [template_ciena_6500_optical_transport](Network_Devices/template_ciena_6500_optical_transport)
        * **Template Ciena 6500 2**
    * [template_ctcu_frm220](Network_Devices/template_ctcu_frm220)
        * **Template CTCU Frm220**
    * [template_fortinet_fortigate](Network_Devices/template_fortinet_fortigate)
        * **Template Net Fortinet FortiGate SNMP**<p>Zabbix Template for Fortinet FortiGate URL: https://github.com/mbdraks/fortinet-zabbix Author: Michel Barbosa Version: 2.1.0 Exposes information obtained from the following MIBs (import is not required): - SNMPv2-MIB - IF-MIB - EtherLike-MIB - FORTINET-CORE-MIB - FORTINET-FORTIGATE-MIB This template also incorporates the exact same data collected by the following default templates (no import or link required): - Generic SNMP - Interfaces SNMP - EtherLike-MIB SNMP</p>
    * [template_freebox_monitoring](Network_Devices/template_freebox_monitoring)
        * **Freebox monitoring**<p>The template was presented as a zip archive</p>
    * [template_h3c_wireless_ac_wx3500](Network_Devices/template_h3c_wireless_ac_wx3500)
        * **Network-H3C-WLC**
    * [template_ips2222_snmp](Network_Devices/template_ips2222_snmp)
        * **IPS2222**
    * [template_l2_discovery_module_for_lldp](Network_Devices/template_l2_discovery_module_for_lldp)
        * **L2 Discovery Module for LLDP**<p>The template was presented as a tar.gz archive</p>
    * [template_meinberg_lantime](Network_Devices/template_meinberg_lantime)
        * **Template - Device - MEINBERG LANTIME**
    * [template_meraki_dashboard_polling](Network_Devices/template_meraki_dashboard_polling)
        * **Template Meraki Dashboard**
    * [template_nateks](Network_Devices/template_nateks)
        * **Template Nateks FG-ACE-CON-VF**
    * [template_nec_univerge_ix](Network_Devices/template_nec_univerge_ix)
        * **UNIVERGE IX**
    * [template_net_volt_netprobe_plus_snmpv2](Network_Devices/template_net_volt_netprobe_plus_snmpv2)
        * **Template Net VOLT NetProbe Plus SNMPv2**
    * [template_olt_g8ps-sino_telecom](Network_Devices/template_olt_g8ps-sino_telecom)
        * **Template OLT G8PS - SINO Telecom**
    * [template_olt_zte_c320_optical_power_attenuation](Network_Devices/template_olt_zte_c320_optical_power_attenuation)
        * **Clientes OLT**
    * [template_quagga_bgp_monitor_session](Network_Devices/template_quagga_bgp_monitor_session)
        * **Quagga BGP monitor session**<p>The template was presented as a zip archive</p>
    * [template_repotec_rp-pg1626w_stacked](Network_Devices/template_repotec_rp-pg1626w_stacked)
        * **Template Repotec-RP-PG1626W-Stacked**
    * [template_ruijie](Network_Devices/template_ruijie)
        * **Ruijie BBU**
    * [template_ruijie_1](Network_Devices/template_ruijie_1)
        * **Canon Color MF printers Template**<p>Template for color Canon Multi Functional printer.</p>
    * [template_ruijie_ap3220](Network_Devices/template_ruijie_ap3220)
        * **Canon Color MF printers Template**<p>Template for color Canon Multi Functional printer.</p>
    * [template_siae_custom_shell_script](Network_Devices/template_siae_custom_shell_script)
        * **SIAE Custom Shell Script**<p>The template was presented as a tar.gz archive</p>
    * [template_siae_snmpv2](Network_Devices/template_siae_snmpv2)
        * **SIAE SNMPv2**<p>The template was presented as a tar.gz archive</p>
    * [template_snmp_furukawa_olt-onu](Network_Devices/template_snmp_furukawa_olt-onu)
        * **Template SNMP Furukawa OLT-ONU G4S - G8S - G2500 - G1040 - LD3032**<p>Created by Samuel Martins (https://www.linkedin.com/in/slmartins/) Last update: 2021-03-08 Based on Furukawa user's guide - NT-GPONREV00–Março2019 https://github.com/slunart Compatbile with: OLT G4S Firmware: 6.11 OLT G8S Firmware: 1.12 OLT G2500 Firmware: 6.12 OLT G1040 OLT LD3032 Firmware: 2.02</p>
    * [template_snmp_router_ospf_v2](Network_Devices/template_snmp_router_ospf_v2)
        * **Template SNMP Router OSPF v2**<p>https://share.zabbix.com/network_devices/snmp-router-ospf-v2-1</p>
    * [template_sophos_xg_firewall_version_18.0.x](Network_Devices/template_sophos_xg_firewall_version_18.0.x)
        * **Template_Sophos XG FW 18 SNMPv2**<p>Template for SOPHOS XG (Version 18) series Firewall. (Tested on XG260 with Zabbix 5.0) Used MIB: SFOS-FIREWALL-MIB</p>
    * [template_spectralink_dect_server](Network_Devices/template_spectralink_dect_server)
        * **Spectralink DECT server**
    * [template_teltonika_rut950_and_rut955_snmp](Network_Devices/template_teltonika_rut950_and_rut955_snmp)
        * **Template Teltonika RUT950 and RUT955 SNMP**<p>Monitors all parameters of Teltonika RUT9xx LTE routers Version 1.1 2021-08-04 by Pierre Fagrell: Added missing macros and value mappings for network interface discovery - required for traffic usage stats pierre@buggfix.se</p>
    * [template_templete_ubiquiti](Network_Devices/template_templete_ubiquiti)
        * **templete rsg**
    * [template_thecus_snmpv2_nas](Network_Devices/template_thecus_snmpv2_nas)
        * **Template SNMP THECUS NAS**
    * [template_witek_(wireless-tek)](Network_Devices/template_witek_(wireless-tek))
        * **Witek Switch**<p>Test template</p>
    * [template_zte-c320](Network_Devices/template_zte-c320)
        * **ZTE-C320-GPON-nor**
    * [template_zte_c300_v1.2.5p3](Network_Devices/template_zte_c300_v1.2.5p3)
        * **Template SNMP Device GPON ZTE fw 1.2.5p3**
        * **Template ICMP Ping GPON**
        * **Template SNMP Device GPON PARKS**
    * [template_zte_c300_v2.1](Network_Devices/template_zte_c300_v2.1)
        * **Template ICMP Ping GPON**
        * **Template SNMP Device GPON PARKS**
        * **Template SNMP Device GPON ZTE fw 2.1**
* [Official_Templates](Official_Templates)
    * [Applications](Official_Templates/Applications)
        * [template_ftp_service](Official_Templates/Applications/template_ftp_service)
            * **Template App FTP Service**
        * [template_http_service](Official_Templates/Applications/template_http_service)
            * **Template App HTTP Service**
        * [template_https_service](Official_Templates/Applications/template_https_service)
            * **Template App HTTPS Service**
        * [template_imap_service](Official_Templates/Applications/template_imap_service)
            * **Template App IMAP Service**
        * [template_java_applications_generic](Official_Templates/Applications/template_java_applications_generic)
            * **Template JMX Generic**
        * [template_ldap_service](Official_Templates/Applications/template_ldap_service)
            * **Template App LDAP Service**
        * [template_mysql](Official_Templates/Applications/template_mysql)
            * **Template App MySQL**
        * [template_nntp_service](Official_Templates/Applications/template_nntp_service)
            * **Template App NNTP Service**
        * [template_ntp_service](Official_Templates/Applications/template_ntp_service)
            * **Template App NTP Service**
        * [template_pop_service](Official_Templates/Applications/template_pop_service)
            * **Template App POP Service**
        * [template_smtp_service](Official_Templates/Applications/template_smtp_service)
            * **Template App SMTP Service**
        * [template_ssh_service](Official_Templates/Applications/template_ssh_service)
            * **Template App SSH Service**
        * [template_telnet_service](Official_Templates/Applications/template_telnet_service)
            * **Template App Telnet Service**
        * [template_tomcat](Official_Templates/Applications/template_tomcat)
            * **Template JMX Tomcat**
        * [template_zabbix_agent](Official_Templates/Applications/template_zabbix_agent)
            * **Template App Zabbix Agent**
    * [Network_Devices](Official_Templates/Network_Devices)
        * [template_alcoma_alxxmp](Official_Templates/Network_Devices/template_alcoma_alxxmp)
            * **Template Alcoma ALxxMP**
        * [template_draytek_corporation_mib](Official_Templates/Network_Devices/template_draytek_corporation_mib)
            * **DRAYTEK-CORPORATION.mib**<p>Generated by mib2zabbix</p>
        * [template_fortigate_fg_200b](Official_Templates/Network_Devices/template_fortigate_fg_200b)
            * **FG_200B**
    * [Operating_Systems](Official_Templates/Operating_Systems)
        * [template_operating_system_linux](Official_Templates/Operating_Systems/template_operating_system_linux)
            * **Template OS Linux**
        * [template_operating_system_linux_(snmp)](Official_Templates/Operating_Systems/template_operating_system_linux_(snmp))
            * **Template SNMP OS Linux**
        * [template_operating_system_windows](Official_Templates/Operating_Systems/template_operating_system_windows)
            * **Template OS Windows**
        * [template_operating_system_windows_(snmp)](Official_Templates/Operating_Systems/template_operating_system_windows_(snmp))
            * **Template SNMP OS Windows**
    * [SNMP_Devices](Official_Templates/SNMP_Devices)
        * [template_snmp_device](Official_Templates/SNMP_Devices/template_snmp_device)
            * **Template SNMP Device**
            * **Template SNMP Generic**
            * **Template SNMP Interfaces**
        * [template_snmp_disks_discovery](Official_Templates/SNMP_Devices/template_snmp_disks_discovery)
            * **Template SNMP Disks**
        * [template_snmp_generic](Official_Templates/SNMP_Devices/template_snmp_generic)
            * **Template SNMP Generic**
        * [template_snmp_interfaces_discovery](Official_Templates/SNMP_Devices/template_snmp_interfaces_discovery)
            * **Template SNMP Interfaces**
        * [template_snmp_multicast_unicast_broadcast_packets_count](Official_Templates/SNMP_Devices/template_snmp_multicast_unicast_broadcast_packets_count)
            * **Template SNMP Packets**
        * [template_snmp_processors_discovery](Official_Templates/SNMP_Devices/template_snmp_processors_discovery)
            * **Template SNMP Processors**
    * [Server_Hardware](Official_Templates/Server_Hardware)
        * [template_supermicro_mbd-x11scl-if-o](Official_Templates/Server_Hardware/template_supermicro_mbd-x11scl-if-o)
            * **Template IPMI Supermicro X11-SCL-IF-O**
    * [Virtualization](Official_Templates/Virtualization)
        * [template_vmware_general](Official_Templates/Virtualization/template_vmware_general)
            * **Template Virt VMware**
        * [template_vmware_guest](Official_Templates/Virtualization/template_vmware_guest)
            * **Template Virt VMware Guest**
        * [template_vmware_hypervisor](Official_Templates/Virtualization/template_vmware_hypervisor)
            * **Template Virt VMware Hypervisor**
    * [Zabbix_components](Official_Templates/Zabbix_components)
        * [template_zabbix_proxy](Official_Templates/Zabbix_components/template_zabbix_proxy)
            * **Template App Zabbix Proxy**
        * [template_zabbix_server](Official_Templates/Zabbix_components/template_zabbix_server)
            * **Template App Zabbix Server**
    * [template_advanced_icmp_ping](Official_Templates/template_advanced_icmp_ping)
        * **Advanced ICMP Ping**<p>The template was presented as a zip archive</p>
    * [template_container_monitoring](Official_Templates/template_container_monitoring)
        * **Template Container Monitoring**
    * [template_draytek_vigor_130_adsl_vdsl_modem](Official_Templates/template_draytek_vigor_130_adsl_vdsl_modem)
        * **Draytek Vigor 130 Template (v1.0)**<p>Template for the Draytek Vigor 130 VDSL Modem.</p>
    * [template_icmp_ping](Official_Templates/template_icmp_ping)
        * **Template Module ICMP Ping**<p>Template Module ICMP Ping version: 0.12</p>
    * [template_microsoft_iis_site_lld_discovery_and_monitoring_lld](Official_Templates/template_microsoft_iis_site_lld_discovery_and_monitoring_lld)
        * **Template App IIS LLD Sites Monitoring**
    * [template_modules_pack](Official_Templates/template_modules_pack)
        * **Template Modules Pack**<p>The template was presented as a zip archive</p>
    * [template_proteco](Official_Templates/template_proteco)
        * **Template Proteco**
    * [template_proteco_1](Official_Templates/template_proteco_1)
        * **Template Proteco**
    * [template_vertiv](Official_Templates/template_vertiv)
        * **Template-Vertiv**
    * [template_vertiv_1](Official_Templates/template_vertiv_1)
        * **Template-Vertiv**
    * [template_volt_pop_protect_snmp](Official_Templates/template_volt_pop_protect_snmp)
        * **Volt Pop Protect SNMP**
    * [template_zabbix_official_pack](Official_Templates/template_zabbix_official_pack)
        * **Zabbix official template pack**<p>The template was presented as a zip archive</p>
* [Operating_Systems](Operating_Systems)
    * [FreeBSD](Operating_Systems/FreeBSD)
        * [template_freebsd_cpu_temperature_featuring_lld_(intel_&_amd)](Operating_Systems/FreeBSD/template_freebsd_cpu_temperature_featuring_lld_(intel_&_amd))
            * **FreeBSD Core Temp**<p>Monitor core temperature of Intel CPUs. The 'coretemp' kernel module must be loaded.</p>
        * [template_ip_utilisation](Operating_Systems/FreeBSD/template_ip_utilisation)
            * **FreeBSD IP statistics**
        * [template_zfs](Operating_Systems/FreeBSD/template_zfs)
            * **ZFS**<p>The template was presented as a zip archive</p>
    * [IBM_i_(i5_OS,_OS_400)_for_IBM_System_i_(AS_400)](Operating_Systems/IBM_i_(i5_OS,_OS_400)_for_IBM_System_i_(AS_400))
        * [template_example_for_as_400_agent_emulator](Operating_Systems/IBM_i_(i5_OS,_OS_400)_for_IBM_System_i_(AS_400)/template_example_for_as_400_agent_emulator)
            * **Template AS400**<p>Template for using with our own "agents"</p>
        * [template_zabbix_agent_emulator_for_as_400_platform](Operating_Systems/IBM_i_(i5_OS,_OS_400)_for_IBM_System_i_(AS_400)/template_zabbix_agent_emulator_for_as_400_platform)
            * **Zabbix agent emulator for AS/400 platform**<p>The template was presented as a zip archive</p>
    * [Linux](Operating_Systems/Linux)
        * [template_banwidth_monitoring_with_vnstat-includes_triggers](Operating_Systems/Linux/template_banwidth_monitoring_with_vnstat-includes_triggers)
            * **Banwidth Monitoring with vnstat  - Includes triggers**<p>The template was presented as a zip archive</p>
        * [template_bcache](Operating_Systems/Linux/template_bcache)
            * **Bcache**<p>The template was presented as a zip archive</p>
        * [template_bonding_interfaces](Operating_Systems/Linux/template_bonding_interfaces)
            * **Bonding Interfaces**<p>The template was presented as a zip archive</p>
        * [template_conntrack](Operating_Systems/Linux/template_conntrack)
            * **Template Network Performance Conntrack**
        * [template_diskstat](Operating_Systems/Linux/template_diskstat)
            * **DiskStat Template**<p>The template was presented as a zip archive</p>
        * [template_iostat_monitoring](Operating_Systems/Linux/template_iostat_monitoring)
            * **Iostat monitoring**
        * [template_linux_autodiscovery_disks,_proces,_tcp_udp_service](Operating_Systems/Linux/template_linux_autodiscovery_disks,_proces,_tcp_udp_service)
            * **Linux autodiscovery : disks, proces, TCP/UDP service**<p>The template was presented as a zip archive</p>
        * [template_linux_disk_monitoring_with_iostat](Operating_Systems/Linux/template_linux_disk_monitoring_with_iostat)
            * **Halley Linux Disk_iostat**
        * [template_linux_grafana](Operating_Systems/Linux/template_linux_grafana)
            * **Template OS Linux**
        * [template_listen_port_discovery_and_port_netstat_moniting](Operating_Systems/Linux/template_listen_port_discovery_and_port_netstat_moniting)
            * **Listen port discovery and port netstat moniting**<p>The template was presented as a zip archive</p>
        * [template_listening_tcp_port_discovery_and_monitoring](Operating_Systems/Linux/template_listening_tcp_port_discovery_and_monitoring)
            * **TCP port monitoring**
        * [template_lm-sensors_snmp](Operating_Systems/Linux/template_lm-sensors_snmp)
            * **Template SNMPv2 LM-SENSORS**<p>Template for LM-SENSORS mib, works for any net-snmp based machine.</p>
        * [template_lvm_cache](Operating_Systems/Linux/template_lvm_cache)
            * **LVM Cache**<p>LVM cache monitoring Details in kernel documentation https://www.kernel.org/doc/Documentation/device-mapper/cache.txt</p>
        * [template_lvm_thin_pool_and_lvm_thin_volume_monitoring](Operating_Systems/Linux/template_lvm_thin_pool_and_lvm_thin_volume_monitoring)
            * **LVM Thin Pool and LVM Thin Volume Monitoring Template**<p>The template was presented as a zip archive</p>
        * [template_module_linux_active_user_status_by_zabbix_agent_active](Operating_Systems/Linux/template_module_linux_active_user_status_by_zabbix_agent_active)
            * **Template Module Linux Active User Status by Zabbix Agent active**<p>This template collects and monitors active users on target hosts.</p>
        * [template_module_linux_xfs_by_zabbix_agent](Operating_Systems/Linux/template_module_linux_xfs_by_zabbix_agent)
            * **Template Module Linux XFS by Zabbix agent**
        * [template_monitor_mounts_on_fstab](Operating_Systems/Linux/template_monitor_mounts_on_fstab)
            * **Template Check Mount Point**<p>Monitora os pontos de montagem do Gluster</p>
        * [template_monitor_one_linux_service_using_systemctl](Operating_Systems/Linux/template_monitor_one_linux_service_using_systemctl)
            * **Monitor one Linux Services**
        * [template_nfss_for_v3_&_v4_using_vfs.file.regex](Operating_Systems/Linux/template_nfss_for_v3_&_v4_using_vfs.file.regex)
            * **Linux NFS v3 Client**
            * **Linux NFS v4 Client**
        * [template_ntp_checks](Operating_Systems/Linux/template_ntp_checks)
            * **NTP CHECKS**<p>The template was presented as a zip archive</p>
        * [template_ntp_peer_offsets](Operating_Systems/Linux/template_ntp_peer_offsets)
            * **Template NTP Peer Offsets**<p>The template was presented as a zip archive</p>
        * [template_ntp_time_monitor](Operating_Systems/Linux/template_ntp_time_monitor)
            * **Template Time Drift OS Linux**
            * **Template Time Offset OS Linux**
        * [template_operating_system_identification](Operating_Systems/Linux/template_operating_system_identification)
            * **Template Operating System Identification v2**
        * [template_os_linux-plus](Operating_Systems/Linux/template_os_linux-plus)
            * **Template OS Linux - Plus**<p>The template was presented as a zip archive</p>
        * [template_os_linux_diskstats](Operating_Systems/Linux/template_os_linux_diskstats)
            * **OS Linux diskstats**<p>Self-contained template for monitoring disk statistics on Linux systems. Source: https://github.com/frei-style/zabbix-linux-diskstats-template</p>
        * [template_systemd_service_monitoring_via_zabbix_agent_2_(native_discovery)](Operating_Systems/Linux/template_systemd_service_monitoring_via_zabbix_agent_2_(native_discovery))
            * **Template Module Linux systemd by Zabbix agent 2**
        * [template_ucd_disks_monitoring](Operating_Systems/Linux/template_ucd_disks_monitoring)
            * **Template SNMP UCD Disk**
        * [template_zfs_on_linux](Operating_Systems/Linux/template_zfs_on_linux)
            * **ZFS on Linux**
        * [template_zypper_update_info](Operating_Systems/Linux/template_zypper_update_info)
            * **Zypper update info**<p>The template was presented as a tar.gz archive</p>
    * [Mac_OS](Operating_Systems/Mac_OS)
        * [template_macos_content_caching](Operating_Systems/Mac_OS/template_macos_content_caching)
            * **Template macOS Content Cache**<p>Runtime stats and storage monitoring for macOS High Sierra Caching Service.</p>
    * [RedHat](Operating_Systems/RedHat)
        * [template_nfs_monitoring](Operating_Systems/RedHat/template_nfs_monitoring)
            * **Template App NFS Service**<p>Template to monitor NFS via UserParameters in zabbix-agentd.conf file</p>
        * [template_yum_update_info](Operating_Systems/RedHat/template_yum_update_info)
            * **YUM update info**<p>The template was presented as a zip archive</p>
    * [Security](Operating_Systems/Security)
        * [template_security_check_cve-2016-0728_plus](Operating_Systems/Security/template_security_check_cve-2016-0728_plus)
            * **Template Security Check CVE-2016-0728 Plus**<p>The template was presented as a zip archive</p>
    * [VMWare](Operating_Systems/VMWare)
        * [template_esx_snmp](Operating_Systems/VMWare/template_esx_snmp)
            * **ESX SNMP**<p>The template was presented as a zip archive</p>
        * [template_esxi_hp_smart_array_monitoring](Operating_Systems/VMWare/template_esxi_hp_smart_array_monitoring)
            * **Template ESXi HP Smart Array**
        * [template_esxi_snmp](Operating_Systems/VMWare/template_esxi_snmp)
            * **ESXi SNMP**<p>The template was presented as a zip archive</p>
        * [template_esxi_snmp_only_for_zabbix3.0](Operating_Systems/VMWare/template_esxi_snmp_only_for_zabbix3.0)
            * **Template SNMP OS ESXi**
        * [template_esxi_snmp_ver_3.4](Operating_Systems/VMWare/template_esxi_snmp_ver_3.4)
            * **Template SNMP OS ESXi**
    * [Windows](Operating_Systems/Windows)
        * [template_()_windows_iperius_backup](Operating_Systems/Windows/template_()_windows_iperius_backup)
            * **(Template) Windows Iperius Backup**<p>The template was presented as a zip archive</p>
        * [template_()_windows_rdp_terminal_server](Operating_Systems/Windows/template_()_windows_rdp_terminal_server)
            * **(Template) Windows RDP Terminal Server**<p>The template was presented as a zip archive</p>
        * [template_скрипт_+_шаблон_для_windows_lld_open_hardware_monitor](Operating_Systems/Windows/template_скрипт_+_шаблон_для_windows_lld_open_hardware_monitor)
            * **Скрипт + Шаблон для Windows LLD Open Hardware Monitor**<p>The template was presented as a zip archive</p>
        * [template_ad_ds_health_and_performance](Operating_Systems/Windows/template_ad_ds_health_and_performance)
            * **Template AD DS Health and Performance**
        * [template_ad_ds_monitoring_and_attack_detection](Operating_Systems/Windows/template_ad_ds_monitoring_and_attack_detection)
            * **Template AD DS Monitoring and Attack Detection**
        * [template_agentless_storage_and_processor_statistics](Operating_Systems/Windows/template_agentless_storage_and_processor_statistics)
            * **Template OS Windows WMI**
        * [template_dfs_replication_for_zabbix_2.2_and_above](Operating_Systems/Windows/template_dfs_replication_for_zabbix_2.2_and_above)
            * **DFS Replication for Zabbix 2.2 and above**<p>The template was presented as a zip archive</p>
        * [template_failed_logins_monitoring](Operating_Systems/Windows/template_failed_logins_monitoring)
            * **Template Module Windows Failed Logins**
        * [template_for_david_tobit](Operating_Systems/Windows/template_for_david_tobit)
            * **Template for David Tobit**<p>The template was presented as a zip archive</p>
        * [template_for_icmp_ping_from_the_zabbix_windows_agent](Operating_Systems/Windows/template_for_icmp_ping_from_the_zabbix_windows_agent)
            * **Template Module ICMP ping from the Zabbix Windows agent**<p>Oleg Kostikov aka Semiadmin Module for ICMP ping test from the Zabbix Windows agent. Put the comma-separated target list in user macro {$PING_LIST} at the template or host level and run the "get ICMP ping list" item. List example: 8.8.8.8,www.ya.ru,10.10.10.10</p>
        * [template_microsoft_dhcp_server_2012-2019](Operating_Systems/Windows/template_microsoft_dhcp_server_2012-2019)
            * **Microsoft DHCP Server 2012-2019**<p>The template was presented as a zip archive</p>
        * [template_module_windows_users](Operating_Systems/Windows/template_module_windows_users)
            * **Template Module Windows users by Zabbix agent**<p>Get a total of logged-in users in the system.</p>
            * **Template Module Windows users by Zabbix agent active**<p>Get a total of logged-in users in the system.</p>
        * [template_monitoramento_file_server_(file_server_resource_manager)_v.1.2](Operating_Systems/Windows/template_monitoramento_file_server_(file_server_resource_manager)_v.1.2)
            * **Monitoramento File Server (File Server Resource Manager) V.1.2**<p>The template was presented as a zip archive</p>
        * [template_os_windows_cluster_services_(lld)](Operating_Systems/Windows/template_os_windows_cluster_services_(lld))
            * **Template OS Windows Cluster Services (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_cluster_shared_volumes_(lld)](Operating_Systems/Windows/template_os_windows_cluster_shared_volumes_(lld))
            * **Template OS Windows Cluster Shared Volumes (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_discovery_(lld)](Operating_Systems/Windows/template_os_windows_discovery_(lld))
            * **Template OS Windows Discovery (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_discovery_iscsi_target_(lld)](Operating_Systems/Windows/template_os_windows_discovery_iscsi_target_(lld))
            * **Template OS Windows Discovery iSCSI Target (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_discovery_performance_monitoring_(lld)](Operating_Systems/Windows/template_os_windows_discovery_performance_monitoring_(lld))
            * **Template OS Windows Discovery Performance Monitoring (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_server](Operating_Systems/Windows/template_os_windows_server)
            * **Template OS Windows Server**<p>Шаблон подходит для ОС Windows Server 2012, 2016. Посетите. Группа ВК:https://vk.com/simplezabbix Видео про шаблон:https://youtu.be/FWqFyRu8hmQ</p>
        * [template_os_windows_server_2012-2016_v.1.1](Operating_Systems/Windows/template_os_windows_server_2012-2016_v.1.1)
            * **Template OS Windows Server 2012-2016**<p>Шаблон подходит для ОС Windows Server 2012, 2016. Посетите. Группа ВК:https://vk.com/simplezabbix Видео про шаблон:https://youtu.be/FWqFyRu8hmQ</p>
        * [template_pdh2zabbix_windows_perfcounter_support](Operating_Systems/Windows/template_pdh2zabbix_windows_perfcounter_support)
            * **pdh2zabbix Windows PerfCounter Support**<p>The template was presented as a zip archive</p>
        * [template_rdp_users](Operating_Systems/Windows/template_rdp_users)
            * **RDPUsers**
        * [template_rdp_users_3_items](Operating_Systems/Windows/template_rdp_users_3_items)
            * **Template RDP Users 3 items**<p>The template was presented as a zip archive</p>
        * [template_smb_module](Operating_Systems/Windows/template_smb_module)
            * **SMB Template Module**<p>The template was presented as a zip archive</p>
        * [template_storage_disk_c_and_disk_d](Operating_Systems/Windows/template_storage_disk_c_and_disk_d)
            * **Storage**
        * [template_tcp_udp_windows_connections](Operating_Systems/Windows/template_tcp_udp_windows_connections)
            * **TCP/UDP Stats Windows**
        * [template_top_20_process-monitoramento_dos_processos_em_execução_no_windows](Operating_Systems/Windows/template_top_20_process-monitoramento_dos_processos_em_execução_no_windows)
            * **TOP 20 Process - Monitoramento dos Processos em execução no Windows**<p>The template was presented as a zip archive</p>
        * [template_vmware_tools_windows_performance_counters](Operating_Systems/Windows/template_vmware_tools_windows_performance_counters)
            * **Template VMware Tools Windows performance counters**
        * [template_windows_ad_and_security_checks](Operating_Systems/Windows/template_windows_ad_and_security_checks)
            * **Windows AD and Security Checks**<p>The template was presented as a zip archive</p>
        * [template_windows_ad_event_log_(2008_r2-2012_r2)](Operating_Systems/Windows/template_windows_ad_event_log_(2008_r2-2012_r2))
            * **Event User Log**
        * [template_windows_defender_and_antimalware_eventlog_monitoring](Operating_Systems/Windows/template_windows_defender_and_antimalware_eventlog_monitoring)
            * **Metrics Windows Defender**<p>Uses macro {$AV_EVENTLOG} for the eventlog, Windows defender uses "Microsoft-Windows-Windows Defender/Operational". Windows Antimalware uses "System", but also needs {$AV_SOURCE} set to "Microsoft Antimalware", default value in the template is an empty string.</p>
        * [template_windows_defender_wmi_monitoring](Operating_Systems/Windows/template_windows_defender_wmi_monitoring)
            * **Windows Defender WMI**
        * [template_windows_dhcp_server_scopes_discovery_(snmp)](Operating_Systems/Windows/template_windows_dhcp_server_scopes_discovery_(snmp))
            * **Template Discovery DHCP scopes**
        * [template_windows_disk_space_monitoring](Operating_Systems/Windows/template_windows_disk_space_monitoring)
            * **Template OS Windows Disk Space**<p>includes used disk space Trigger goes below a certain level. the Default is 2GB but is configurable through macro.</p>
        * [template_windows_grafana](Operating_Systems/Windows/template_windows_grafana)
            * **Template OS Windows**
        * [template_windows_license_status](Operating_Systems/Windows/template_windows_license_status)
            * **Template Windows License Status**<p>The template was presented as a zip archive</p>
        * [template_windows_modifed](Operating_Systems/Windows/template_windows_modifed)
            * **Template OS Windows**
        * [template_windows_physical_drive_iops](Operating_Systems/Windows/template_windows_physical_drive_iops)
            * **Windows Physical Disk IOPS**
        * [template_windows_rdp_terminal_server](Operating_Systems/Windows/template_windows_rdp_terminal_server)
            * **Template Windows RDP Terminal Server**<p>The template was presented as a zip archive</p>
        * [template_windows_service_monitor_for_zabbix](Operating_Systems/Windows/template_windows_service_monitor_for_zabbix)
            * **Windows Service Monitor for Zabbix**<p>The template was presented as a zip archive</p>
        * [template_windows_shadow_copies_small_tega](Operating_Systems/Windows/template_windows_shadow_copies_small_tega)
            * **Template Windows Shadow Copies small Tega**<p>The template was presented as a zip archive</p>
        * [template_windows_storage_spaces](Operating_Systems/Windows/template_windows_storage_spaces)
            * **Template Windows Storage Spaces**<p>The template was presented as a zip archive</p>
        * [template_windows_updates_vbscript](Operating_Systems/Windows/template_windows_updates_vbscript)
            * **Windows updates vbscript**<p>The template was presented as a zip archive</p>
        * [template_windows_wbadmin_log](Operating_Systems/Windows/template_windows_wbadmin_log)
            * **Event Windows Backup**
        * [template_zabbix-check_windows_update_(v1.0)](Operating_Systems/Windows/template_zabbix-check_windows_update_(v1.0))
            * **Zabbix - Check Windows Update (v1.0)**<p>The template was presented as a zip archive</p>
        * [template_zabbix_for_ad_replication_and_security_audit](Operating_Systems/Windows/template_zabbix_for_ad_replication_and_security_audit)
            * **Zabbix template for AD replication and security audit**<p>The template was presented as a zip archive</p>
        * [template_zabbix_for_microsoft_windows_server](Operating_Systems/Windows/template_zabbix_for_microsoft_windows_server)
            * **Template OS Windows Server Baseline**<p>Zabbix template for Microsoft Windows Server. Tested on Microsoft Windows Server 2012, 2012 R2 and 2016. It may work with earlier versions, but some items (with missing performance counters) may be unsupported. Tested on Zabbix 3.4.0. It may work with earlier versions, but some items (for example service.info[service,<param>]) may be unsupported. Mantas Tumenas. mantas.tumenas@gmail.com</p>
        * [template_zabbix_for_ntfs_mountpoins_as_folders](Operating_Systems/Windows/template_zabbix_for_ntfs_mountpoins_as_folders)
            * **getWindowsMountPointsToFolders**<p>Get Windows servers mount points to folders</p>
    * [macOS](Operating_Systems/macOS)
        * [template_zabbix_macosx_sender](Operating_Systems/macOS/template_zabbix_macosx_sender)
            * **Zabbix MacOSX Sender**<p>The template was presented as a zip archive</p>
    * [template_ativação_do_windows](Operating_Systems/template_ativação_do_windows)
        * **Template Ativacao do Windows**
    * [template_check_remote_ports_from_zabbix_agent_(from_host)](Operating_Systems/template_check_remote_ports_from_zabbix_agent_(from_host))
        * **Check remote ports from Zabbix agent (from host)**<p>The template was presented as a zip archive</p>
    * [template_domination](Operating_Systems/template_domination)
        * **Domination**
    * [template_escopo_dhcp_e_estatisticas](Operating_Systems/template_escopo_dhcp_e_estatisticas)
        * **Template HSC Discovery DHCP scopes - HSC**
    * [template_linux_services](Operating_Systems/template_linux_services)
        * **Template Linux Services**
    * [template_microsoft_dhcp_server_2012-2019_for_5.4](Operating_Systems/template_microsoft_dhcp_server_2012-2019_for_5.4)
        * **APP Discovery DHCP scopes**<p>Created by Dušan Priechodský edited by Edson Freitas</p>
    * [template_module_mdadm](Operating_Systems/template_module_mdadm)
        * **Template Module MDADM**<p>The template was presented as a zip archive</p>
    * [template_monitor_network_services_automatically](Operating_Systems/template_monitor_network_services_automatically)
        * **Monitor network services automatically**<p>The template was presented as a zip archive</p>
    * [template_nfs_and_mounts_check](Operating_Systems/template_nfs_and_mounts_check)
        * **NFS and mounts check**<p>The template was presented as a zip archive</p>
    * [template_snmp_linux_processes_load](Operating_Systems/template_snmp_linux_processes_load)
        * **SNMP Linux Processes Load**
    * [template_snmp_time_difference](Operating_Systems/template_snmp_time_difference)
        * **_Template SNMP Time Diff**
    * [template_systemd_service_monitoring](Operating_Systems/template_systemd_service_monitoring)
        * **systemd Service Monitoring**<p>The template was presented as a zip archive</p>
    * [template_teamd_monitoring](Operating_Systems/template_teamd_monitoring)
        * **Teamd Monitoring**<p>The template was presented as a zip archive</p>
    * [template_zabbix-check_windows_firewall_(v1.0)](Operating_Systems/template_zabbix-check_windows_firewall_(v1.0))
        * **Zabbix - Check Windows Firewall (v1.0)**<p>The template was presented as a zip archive</p>
    * [template_zfs](Operating_Systems/template_zfs)
        * **ZFS**<p>The template was presented as a zip archive</p>
* [Power_(UPS)](Power_(UPS))
    * [APC](Power_(UPS)/APC)
        * [template_apc_ats_rack-mount_transfer_switches](Power_(UPS)/APC/template_apc_ats_rack-mount_transfer_switches)
            * **Template APC ATS**<p>APC Rack Automatic Transfer Switches (rack ATS) provide reliable, redundant rack mount power to single-corded equipment. The rack ATS has dual input power cords supplying power to the connected load. If the primary power source becomes unavailable, the rack ATS will seamlessly source power from the secondary source without interrupting critical loads.</p>
        * [template_apc_inrow](Power_(UPS)/APC/template_apc_inrow)
            * **Template SNMP APC InRow**
        * [template_apc_network_management_card_2](Power_(UPS)/APC/template_apc_network_management_card_2)
            * **Template_APC_NMC2**
        * [template_apc_pdu_ap7953](Power_(UPS)/APC/template_apc_pdu_ap7953)
            * **Template SNMP APC PDU AP79XX**
        * [template_apc_pdu_detailed](Power_(UPS)/APC/template_apc_pdu_detailed)
            * **APC PDU**
        * [template_apc_pdu_new_snmp](Power_(UPS)/APC/template_apc_pdu_new_snmp)
            * **Template SNMP Tripplite**
            * **Template SNMP APC PDU**
        * [template_apc_pdu_temperature](Power_(UPS)/APC/template_apc_pdu_temperature)
            * **Template APC PDU**
        * [template_apc_smart-ups_750](Power_(UPS)/APC/template_apc_smart-ups_750)
            * **Template APC Smart-UPS**
        * [template_apc_smart-ups_through_apcupsd_and_ssh](Power_(UPS)/APC/template_apc_smart-ups_through_apcupsd_and_ssh)
            * **APC Smart-UPS through apcupsd and ssh**
        * [template_apc_ups](Power_(UPS)/APC/template_apc_ups)
            * **APC UPS**<p>The template was presented as a zip archive</p>
        * [template_apc_ups_nmc_2_ap9619](Power_(UPS)/APC/template_apc_ups_nmc_2_ap9619)
            * **Template APC NMC 2 AP9619**
        * [template_apc_windows_agent_monitor](Power_(UPS)/APC/template_apc_windows_agent_monitor)
            * **APC Windows agent monitor**<p>Universal template for APC Agent for windows</p>
        * [template_apcupsd](Power_(UPS)/APC/template_apcupsd)
            * **Template APCUPSd**<p>Шаблон APCUPSd</p>
        * [template_ats_ap4423](Power_(UPS)/APC/template_ats_ap4423)
            * **Template APC ATS**<p>APC Rack Automatic Transfer Switches (rack ATS) provide reliable, redundant rack mount power to single-corded equipment. The rack ATS has dual input power cords supplying power to the connected load. If the primary power source becomes unavailable, the rack ATS will seamlessly source power from the secondary source without interrupting critical loads.</p>
        * [template_nobreak-apc-smart-ups-3000bi-br](Power_(UPS)/APC/template_nobreak-apc-smart-ups-3000bi-br)
            * **Nobreak-APC-SMART-UPS-3000BI-BR**<p>## In English: Template for Zabbix 3.4 and above. Collects and displays information about voltage, current, power, status, temperature, and battery usage. UPS MIB: http://www.oidview.com/mibs/0/UPS-MIB.html Software SGM Auto-Shutdown V4.1: http://www.apc.com/shop/br/pt/products/Software-SGM-Auto-Shutdown-V4-1-para-Linux-s%C3%B3-Brasil-/P-SFSGM41L?isCurrentSite=true --------- ## Em Português: Template para Zabbix 3.4 ou superior. Coleta e exibe informações da tensão, corrente, potência, status, temperatura e uso da bateria. UPS MIB: http://www.oidview.com/mibs/0/UPS-MIB.html Software SGM Auto-Shutdown V4.1: http://www.apc.com/shop/br/pt/products/Software-SGM-Auto-Shutdown-V4-1-para-Linux-s%C3%B3-Brasil-/P-SFSGM41L?isCurrentSite=true --------- ## Developed by: * Victor Igor (victor.igor.redes@gmail.com), sysadmin; * Aécio Pires (http://aeciopires.com), sysadmin. Shared by **Dynavideo** (http://www.dynavideo.com.br)</p>
        * [template_rack_pdu](Power_(UPS)/APC/template_rack_pdu)
            * **Template_APC_Monitor_RackPDU**
        * [template_smartups_2000_3000_5000](Power_(UPS)/APC/template_smartups_2000_3000_5000)
            * **SmartUPS 2000/3000/5000**<p>The template was presented as a zip archive</p>
    * [Cyberpower](Power_(UPS)/Cyberpower)
        * [template_cyberpower_rmcard305(205)](Power_(UPS)/Cyberpower/template_cyberpower_rmcard305(205))
            * **Template Module Cyberpower RMCARD305**<p>SNMPv2 Template for Cyberpower's remote management card ver.305 (205) used in OR and PR-series UPSes. Tested on firmware version 1.3.0. Created by Taurus (https://github.com/RusTaurus) MIBs used: CPS-MIB (v2.9) https://www.cyberpowersystems.com/products/software/mib-files/</p>
    * [Eaton](Power_(UPS)/Eaton)
        * [template_eaton_5px](Power_(UPS)/Eaton/template_eaton_5px)
            * **Eaton 5PX**<p>The template was presented as a zip archive</p>
        * [template_eaton_9px_6000i_ups](Power_(UPS)/Eaton/template_eaton_9px_6000i_ups)
            * **EATON Mistral**
        * [template_eaton_ats_16a](Power_(UPS)/Eaton/template_eaton_ats_16a)
            * **Eaton ATS 230V 16A**
        * [template_eaton_ats_30a](Power_(UPS)/Eaton/template_eaton_ats_30a)
            * **Eaton ATS 230V 30A**
        * [template_eaton_powerware_9390_pt-br](Power_(UPS)/Eaton/template_eaton_powerware_9390_pt-br)
            * **Template_Powerware9390-Pt-Br**
        * [template_eaton_ups](Power_(UPS)/Eaton/template_eaton_ups)
            * **Template Eaton UPS**
    * [Eaton_Powerware](Power_(UPS)/Eaton_Powerware)
        * [template_eaton_ats_230v_16a](Power_(UPS)/Eaton_Powerware/template_eaton_ats_230v_16a)
            * **Template SNMP Eaton ATS**
        * [template_eaton_powerware_9130](Power_(UPS)/Eaton_Powerware/template_eaton_powerware_9130)
            * **Eaton 9130 Template**
        * [template_eaton_powerware_9150](Power_(UPS)/Eaton_Powerware/template_eaton_powerware_9150)
            * **Eaton 9130 Template**
        * [template_eaton_powerware_9355](Power_(UPS)/Eaton_Powerware/template_eaton_powerware_9355)
            * **Eaton Powerware 9355**<p>The template was presented as a zip archive</p>
        * [template_eaton_powerware_9355-full_english](Power_(UPS)/Eaton_Powerware/template_eaton_powerware_9355-full_english)
            * **Eaton PowerWare 9355 - Full English**<p>The template was presented as a zip archive</p>
        * [template_eaton_powerware_9355_1](Power_(UPS)/Eaton_Powerware/template_eaton_powerware_9355_1)
            * **Eaton Powerware 9355**<p>The template was presented as a zip archive</p>
        * [template_eaton_powerware_9390](Power_(UPS)/Eaton_Powerware/template_eaton_powerware_9390)
            * **Eaton Powerware 9390**<p>The template was presented as a zip archive</p>
    * [Emerson_NP](Power_(UPS)/Emerson_NP)
        * [template_emerson_liebert_gxt](Power_(UPS)/Emerson_NP/template_emerson_liebert_gxt)
            * **Emerson_Liebert**
        * [template_emerson_nxr_ups](Power_(UPS)/Emerson_NP/template_emerson_nxr_ups)
            * **Emerson NXR UPS**
    * [Engetron](Power_(UPS)/Engetron)
        * [template_engetron_ups](Power_(UPS)/Engetron/template_engetron_ups)
            * **Template Engetron UPS**
        * [template_ups_engetron_wbrc-ii_snmp_v1](Power_(UPS)/Engetron/template_ups_engetron_wbrc-ii_snmp_v1)
            * **Template Nobreak Engetron SNMP v1**
    * [Entel](Power_(UPS)/Entel)
        * [template_энтел_плата_сетевого_управления](Power_(UPS)/Entel/template_энтел_плата_сетевого_управления)
            * **ENTEL 1PH UPS**
        * [template_entel_1_phase_ups](Power_(UPS)/Entel/template_entel_1_phase_ups)
            * **ENTEL 1PH UPS**
    * [Gamatronic](Power_(UPS)/Gamatronic)
        * [template_gamatronic_power+](Power_(UPS)/Gamatronic/template_gamatronic_power+)
            * **Gamatronic Power+**<p>The template was presented as a zip archive</p>
    * [General_Electric](Power_(UPS)/General_Electric)
        * [template_ge_lp33_triphase](Power_(UPS)/General_Electric/template_ge_lp33_triphase)
            * **UPS GE LP33 - TriPhase**<p>UPS General Electric - Model LP 33 Trifásica - Cláudio Ferreira</p>
    * [HP](Power_(UPS)/HP)
        * [template_hp_pdu_(traps)](Power_(UPS)/HP/template_hp_pdu_(traps))
            * **Monitoring PDU**
    * [Ippon](Power_(UPS)/Ippon)
        * [template_ippon_smart_ups_3000_+_winpower](Power_(UPS)/Ippon/template_ippon_smart_ups_3000_+_winpower)
            * **Ippon Smart UPS 3000 + Winpower**<p>The template was presented as a zip archive</p>
        * [template_zbx-ups](Power_(UPS)/Ippon/template_zbx-ups)
            * **zbx-ups**<p>The template was presented as a zip archive</p>
    * [Legrand_Inform](Power_(UPS)/Legrand_Inform)
        * [template_legrand_cs-121_multiphase_auto_discovery](Power_(UPS)/Legrand_Inform/template_legrand_cs-121_multiphase_auto_discovery)
            * **HW UPS Legrand CS121**
        * [template_legrand_cs-141_multiphase_auto_discovery](Power_(UPS)/Legrand_Inform/template_legrand_cs-141_multiphase_auto_discovery)
            * **HW UPS Legrand CS141**
        * [template_legrand_cs_121](Power_(UPS)/Legrand_Inform/template_legrand_cs_121)
            * **Halley UPS Legrand cs121**
        * [template_raritan_pdu_px3](Power_(UPS)/Legrand_Inform/template_raritan_pdu_px3)
            * **Template Raritan PDU PX3**<p>Zabbix monitoring template for Raritan PDU PX3-5466R This template was tested only on Zabbix 4.4 and PX3-5466R devices but may work on other models too. The sensor discovery is simplistic and many assumptions were made, which might require little changes to make it work on other models. The discovery rules are set to 1 minute interval and the discovered items are also set to 1 minute interval in order to allow quick tests. For real deployments you should create your own template, link this template to your own template and override the discovery intervals with values that make sense for you. For example, we use 1 day interval for the discovery rules because our power topology is pretty static and once the first discovery is done there is no need to keep discovery rules running often. The triggers are defined based on the sensor states in order to respect the thresholds defined in each PDU, and for that reason the actual PDU thresholds don't show in the graphs.</p>
        * [template_raritan_px_pdu](Power_(UPS)/Legrand_Inform/template_raritan_px_pdu)
            * **Template Raritan PDU**
    * [Liebert](Power_(UPS)/Liebert)
        * [template_vertiv_exs_snmp](Power_(UPS)/Liebert/template_vertiv_exs_snmp)
            * **Template_Vertiv EXS UPS**
    * [OMRON](Power_(UPS)/OMRON)
        * [template_snmp_ups_omron_sc21](Power_(UPS)/OMRON/template_snmp_ups_omron_sc21)
            * **Template SNMP Omron UPS**
    * [Others](Power_(UPS)/Others)
        * [template_bel_fuse_nac1006](Power_(UPS)/Others/template_bel_fuse_nac1006)
            * **Bel Fuse NAC1006**<p>The template was presented as a zip archive</p>
        * [template_emerson_ita](Power_(UPS)/Others/template_emerson_ita)
            * **Template Emerson ITA**
        * [template_hw_mystrom_ecs](Power_(UPS)/Others/template_hw_mystrom_ecs)
            * **HW myStrom ECS**<p>Monitoring template for myStrom ECS (Energy Control Switch). Source: https://github.com/frei-style/zabbix-mystrom-ecs-template</p>
        * [template_murata_mwoces-211](Power_(UPS)/Others/template_murata_mwoces-211)
            * **Murata MWOCES-211**<p>The template was presented as a zip archive</p>
        * [template_network_ups_tool_basic_monitoring](Power_(UPS)/Others/template_network_ups_tool_basic_monitoring)
            * **Network UPS Tool Basic monitoring**<p>The template was presented as a zip archive</p>
        * [template_snmp_reilo_ups](Power_(UPS)/Others/template_snmp_reilo_ups)
            * **Template SNMP Reillo UPS**
        * [template_snr-ups-onrm_netagent_ix](Power_(UPS)/Others/template_snr-ups-onrm_netagent_ix)
            * **Template NetAgent UPS**
        * [template_socomec_netys_rt-snmp_v1](Power_(UPS)/Others/template_socomec_netys_rt-snmp_v1)
            * **SOCOMEC UPS**
        * [template_socomec_netys_rt_(snmp_mini)](Power_(UPS)/Others/template_socomec_netys_rt_(snmp_mini))
            * **SOCOMEC UPS**
        * [template_universal_ups_snmp_(rfc-1628)](Power_(UPS)/Others/template_universal_ups_snmp_(rfc-1628))
            * **Template UPS RFC 1628 SNMP**
        * [template_ups_microtek_max_plus_series_2kva](Power_(UPS)/Others/template_ups_microtek_max_plus_series_2kva)
            * **Template UPS Microtek MAX plus SERIES 2kVA**<p>Created 21 Apr 2020 by Charles for Aurinoco by full clone of Template UPS - diogont (thanks Diogo Teixeira) then: . Added macros: .. {$UPS_BATTERY_VOLTAGE_LOW} .. {$UPS_BATTERY_VOLTAGE_VERY_LOW} . Deleted unpopulated and incredible items: .. UPS battery capacity (%) .. UPS battery temperature .. UPS input current .. UPS input power .. UPS run time remaining .. UPS time on battery . Fixed item: UPS battery voltage . Added triggers for: .. UPS battery voltage low .. UPS battery voltage very low</p>
    * [Powercom](Power_(UPS)/Powercom)
        * [template_powercom_ups_monitoring_throught_upsmon_pro_web](Power_(UPS)/Powercom/template_powercom_ups_monitoring_throught_upsmon_pro_web)
            * **UPSMON Pro**
        * [template_snmp_netagent_cy504_powercom](Power_(UPS)/Powercom/template_snmp_netagent_cy504_powercom)
            * **Template_PowerCom**
    * [SMS](Power_(UPS)/SMS)
        * [template_nobreak_sms_power_view](Power_(UPS)/SMS/template_nobreak_sms_power_view)
            * **Template Nobreak SMS Powerview by HTTP**<p>Version 1.0. Para utilização com o software SMS Power View, testado com o aplicativo versão Versão: V3.00.02.00. Meu Nobreak é Entrada/Saída 220V, portanto para 110V seriam necessários ajustes. Se tiver alguém utilizando eu posso utilizar parâmetros como Macro. Este template funciona realizando o parse do código da página http://localhost:8080/sms/s2/atualizaBlock.action que possui comentários com os dados do Nobreak.</p>
    * [Socomec](Power_(UPS)/Socomec)
        * [template_socomec_ups_modulys](Power_(UPS)/Socomec/template_socomec_ups_modulys)
            * **Socomec UPS**
    * [Tripplite](Power_(UPS)/Tripplite)
        * [template_tripplite-pdu_(updated)](Power_(UPS)/Tripplite/template_tripplite-pdu_(updated))
            * **Template SNMP Tripp Lite PDU 15**
        * [template_tripplite_webcardlx](Power_(UPS)/Tripplite/template_tripplite_webcardlx)
            * **Template SNMP Tripplite WEBCARDLX**
    * [UPS_Templates](Power_(UPS)/UPS_Templates)
        * [template_apc_smartups](Power_(UPS)/UPS_Templates/template_apc_smartups)
            * **Template Schneider UPS**
        * [template_inform_flexipower](Power_(UPS)/UPS_Templates/template_inform_flexipower)
            * **Template_UPS_Inform-flexipower**
        * [template_module_ups](Power_(UPS)/UPS_Templates/template_module_ups)
            * **Template Module UPS**<p>Template para módulos UPS (Nobreaks), em conformidade com a RFC 1628 de Maio de 1994. Link: https://tools.ietf.org/html/rfc1628</p>
        * [template_network_ups-three-phase_(generic)](Power_(UPS)/UPS_Templates/template_network_ups-three-phase_(generic))
            * **Template UPS TRIPH - diogont**
    * [template_cover_ups](Power_(UPS)/template_cover_ups)
        * **Cover UPS**<p>The template was presented as a zip archive</p>
    * [template_cyberpower_ups_(remote_management_card_205)](Power_(UPS)/template_cyberpower_ups_(remote_management_card_205))
        * **UPS CyberPower PR1000RT2U**
    * [template_delta_ups](Power_(UPS)/template_delta_ups)
        * **UPS Delta**
    * [template_delta_ups_snmpv1](Power_(UPS)/template_delta_ups_snmpv1)
        * **Delta UPS Template SNMP v1**
    * [template_east_ups](Power_(UPS)/template_east_ups)
        * **Template East Nobreak**
    * [template_eltek_flatpack_s](Power_(UPS)/template_eltek_flatpack_s)
        * **Eltek Flatpack S**<p>Eltek Flatpack S DC-power system. Template for 2 rectifiers, 1 battery set. No solar power. No wind. No generator. Version 0.3 - Kari Karvonen <kari.karvonen@kasenet.fi> Eltek mibs available ftp://ftp.eltek.com. Ask your dealer or support for username and pass.</p>
    * [template_enlogic_rack_pdu_2.0](Power_(UPS)/template_enlogic_rack_pdu_2.0)
        * **Enlogic Metered PDU**
    * [template_hp_r5000_ups](Power_(UPS)/template_hp_r5000_ups)
        * **Template HP R5000 SNMP**<p>HP R5000 UPS SNMP Made bu Ennio</p>
    * [template_huawei_ups](Power_(UPS)/template_huawei_ups)
        * **Huawei UPS**
    * [template_huawei_ups2000](Power_(UPS)/template_huawei_ups2000)
        * **Template Huawei 10K UPS**
    * [template_janitza_uv](Power_(UPS)/template_janitza_uv)
        * **Janitza-UV**
    * [template_liebert_gxt4_ups-unit_card_is-unity-dp_by_vertiv](Power_(UPS)/template_liebert_gxt4_ups-unit_card_is-unity-dp_by_vertiv)
        * **Template_Liebert_GXT4_UPS**
    * [template_minuteman_ups](Power_(UPS)/template_minuteman_ups)
        * **Template SNMP Minuteman UPS**
    * [template_net_volt_full_power_380_1u_gerenciável_snmpv2](Power_(UPS)/template_net_volt_full_power_380_1u_gerenciável_snmpv2)
        * **Template Net VOLT Full Power SNMPv2**
    * [template_network_ups_(generic)](Power_(UPS)/template_network_ups_(generic))
        * **Template UPS - diogont**
    * [template_network_ups_tools_(nut)](Power_(UPS)/template_network_ups_tools_(nut))
        * **Network UPS Tools (NUT)**<p>The template was presented as a zip archive</p>
    * [template_network_ups_tools_(nut)_v.2](Power_(UPS)/template_network_ups_tools_(nut)_v.2)
        * **Network UPS Tools (NUT) v.2**<p>The template was presented as a tar.gz archive</p>
    * [template_nobreak_engetron](Power_(UPS)/template_nobreak_engetron)
        * **Template Nobreak Engetron**
    * [template_nobreak_smart-ups_x_3000-br](Power_(UPS)/template_nobreak_smart-ups_x_3000-br)
        * **Nobreak Smart-UPS X 3000-BR**<p>The template was presented as a zip archive</p>
    * [template_nobreak_sms_sinus_triphases](Power_(UPS)/template_nobreak_sms_sinus_triphases)
        * **Template Nobreak SMS Sinus Triphases**<p>Para toda linha de nobreak sinus triphases</p>
    * [template_nut_with_lld_and_dependent_items](Power_(UPS)/template_nut_with_lld_and_dependent_items)
        * **NUT with LLD and dependent items**<p>The template was presented as a zip archive</p>
    * [template_online_usv_xanto_s1500r](Power_(UPS)/template_online_usv_xanto_s1500r)
        * **Xanto S1500R Template**
    * [template_packetflux](Power_(UPS)/template_packetflux)
        * **Packetflux**
    * [template_piton_xm20](Power_(UPS)/template_piton_xm20)
        * **Template PitON**
    * [template_powertek_1-phase_pdu](Power_(UPS)/template_powertek_1-phase_pdu)
        * **Template Powertek 1 Phase PDU**<p>Created by Joakim Kingström at Sports Interactive.</p>
    * [template_proteco](Power_(UPS)/template_proteco)
        * **Template Proteco**
    * [template_proteco_1](Power_(UPS)/template_proteco_1)
        * **Template Proteco**
    * [template_riello_netman204_ups](Power_(UPS)/template_riello_netman204_ups)
        * **Template SNMP Riello NetMan204 UPS**
    * [template_riello_ups](Power_(UPS)/template_riello_ups)
        * **Template SNMP Riello UPS**
    * [template_socomec_masterys_gp](Power_(UPS)/template_socomec_masterys_gp)
        * **Socomec Masterys GP**<p>The template was presented as a zip archive</p>
    * [template_stark_country_3000_online](Power_(UPS)/template_stark_country_3000_online)
        * **Stark-3000-snmp**
    * [template_tripplite_ups](Power_(UPS)/template_tripplite_ups)
        * **Template SNMP Tripplite**
    * [template_ups(gamatronic)](Power_(UPS)/template_ups(gamatronic))
        * **UPS(Gamatronic) Template**<p>The template was presented as a zip archive</p>
    * [template_ups_abb](Power_(UPS)/template_ups_abb)
        * **Template UPS - diogont**
    * [template_ups_socomec_(traps)](Power_(UPS)/template_ups_socomec_(traps))
        * **Monitoring UPS**
    * [template_vertiv](Power_(UPS)/template_vertiv)
        * **Template-Vertiv**
    * [template_vertiv_1](Power_(UPS)/template_vertiv_1)
        * **Template-Vertiv**
    * [template_vertiv_2](Power_(UPS)/template_vertiv_2)
        * **Template-Vertiv**
    * [template_vertiv_3](Power_(UPS)/template_vertiv_3)
        * **Template-Vertiv**
    * [template_vertiv_4](Power_(UPS)/template_vertiv_4)
        * **Template-Vertiv**
* [Printers](Printers)
    * [Brother](Printers/Brother)
        * [template_brother_mfc-l2700dw](Printers/Brother/template_brother_mfc-l2700dw)
            * **Template Brother Printers**
        * [template_brother_monochrome_printers](Printers/Brother/template_brother_monochrome_printers)
            * **Template Brother Printers**
        * [template_impressora_brother](Printers/Brother/template_impressora_brother)
            * **Template Brother Printers**
    * [Canon](Printers/Canon)
        * [template_canon_c5540](Printers/Canon/template_canon_c5540)
            * **Template Canon C5540**
        * [template_canon_color_mf_printer-working](Printers/Canon/template_canon_color_mf_printer-working)
            * **Canon Color MF printers Template**<p>Template for color Canon Multi Functional printer.</p>
        * [template_canon_oce_colorwave_500](Printers/Canon/template_canon_oce_colorwave_500)
            * **Template OCE ColorWave 500**
    * [HP](Printers/HP)
        * [template_hp_color_laserjet_cp2025dn](Printers/HP/template_hp_color_laserjet_cp2025dn)
            * **Template Printer HP Color LaserJet CP2025dn**
        * [template_hp_designjet_t7100](Printers/HP/template_hp_designjet_t7100)
            * **HP DesignJet T7100**<p>The template was presented as a zip archive</p>
        * [template_hp_designjet_t770_snmp](Printers/HP/template_hp_designjet_t770_snmp)
            * **Template_HP_Designjet_T770**
        * [template_hp_designjet_z5200](Printers/HP/template_hp_designjet_z5200)
            * **Template Printer HP Designjet Z5200**
        * [template_hp_laserjet_3390](Printers/HP/template_hp_laserjet_3390)
            * **Template Printer HP LaserJet 3390**
        * [template_hp_officejet_pro_87xx](Printers/HP/template_hp_officejet_pro_87xx)
            * **Template Printer HP OfficeJet Pro 8xxx**
    * [Konica](Printers/Konica)
        * [template_konica_364_368_snmp](Printers/Konica/template_konica_364_368_snmp)
            * **Template_Printer_Konica**
        * [template_konica_minolta_3110](Printers/Konica/template_konica_minolta_3110)
            * **Konica C3110 SNMP**
    * [Kyocera](Printers/Kyocera)
        * [template_ecosys_m2540x_m4132idn_m6230cidn](Printers/Kyocera/template_ecosys_m2540x_m4132idn_m6230cidn)
            * **Принтре HP**
            * **Принтеры Kyocera**<p>ECOSYS M2540dn, ECOSYS M3540idn, ECOSYS M4132idn, ECOSYS M6230cidn</p>
        * [template_ecosys_p7240cdn](Printers/Kyocera/template_ecosys_p7240cdn)
            * **ECOSYS P7240cdn**<p>The template was presented as a zip archive</p>
        * [template_kyocera_6130_(color)](Printers/Kyocera/template_kyocera_6130_(color))
            * **Color printers Kyocera**
        * [template_kyocera_color](Printers/Kyocera/template_kyocera_color)
            * **Kyocera color**
        * [template_kyocera_cs6551ci-cs7052ci](Printers/Kyocera/template_kyocera_cs6551ci-cs7052ci)
            * **Kyocera Printers**
        * [template_kyocera_devices_(use_snmp_v2)](Printers/Kyocera/template_kyocera_devices_(use_snmp_v2))
            * **Принтеры Киосера v2**
        * [template_kyocera_fs-1020dn,_fs-1030dn,_fs-4000dn,_fs-1060dn,_ecosys_p3055dn](Printers/Kyocera/template_kyocera_fs-1020dn,_fs-1030dn,_fs-4000dn,_fs-1060dn,_ecosys_p3055dn)
            * **Принтеры Kyocera**<p>Для принтеров FS-1020DN, FS-1030DN, FS-4000DN, FS-1060DN</p>
        * [template_kyocera_fs-km-p_series](Printers/Kyocera/template_kyocera_fs-km-p_series)
            * **IMPRESSORA - KYOCERA**
        * [template_kyocera_printers_by_snmp](Printers/Kyocera/template_kyocera_printers_by_snmp)
            * **Kyocera Printers**<p>ECOSYS M2540dn, ECOSYS M3540idn, ECOSYS M4132idn, ECOSYS M6230cidn</p>
            * **Kyocera Printers - Page Status**<p>ECOSYS M2540dn, ECOSYS M3540idn, ECOSYS M4132idn, ECOSYS M6230cidn</p>
            * **Kyocera Printers - Toner Status**<p>ECOSYS M2540dn, ECOSYS M3540idn, ECOSYS M4132idn, ECOSYS M6230cidn</p>
    * [Lexmark](Printers/Lexmark)
        * [template_-_snmp-lexmark_mx_711_dhe_e_para_todos_os_demais_modelos_deste_fabricante.](Printers/Lexmark/template_-_snmp-lexmark_mx_711_dhe_e_para_todos_os_demais_modelos_deste_fabricante.)
            * **Template - SNMP - Lexmark MONO**
        * [template_lexmark_generic_laser_printer-color](Printers/Lexmark/template_lexmark_generic_laser_printer-color)
            * **Template - SNMP - Lexmark COLOR**
        * [template_lexmark_generic_laser_printer-mono](Printers/Lexmark/template_lexmark_generic_laser_printer-mono)
            * **Template - SNMP - Lexmark MONO**
        * [template_lexmark_printer-cs521dn_(color)](Printers/Lexmark/template_lexmark_printer-cs521dn_(color))
            * **Template - SNMP - Lexmark CS521dn COLOR**
        * [template_lexmark_printer-cs622de_(color)](Printers/Lexmark/template_lexmark_printer-cs622de_(color))
            * **Template - SNMP - Lexmark CS622de COLOR**
        * [template_lexmark_printer-cs820de_(color)](Printers/Lexmark/template_lexmark_printer-cs820de_(color))
            * **Template - SNMP - Lexmark CS820de COLOR**
        * [template_lexmark_printer-cs860dte_(color)](Printers/Lexmark/template_lexmark_printer-cs860dte_(color))
            * **Template - SNMP - Lexmark CS860dte COLOR**
        * [template_lexmark_printer-cx725de_(color)](Printers/Lexmark/template_lexmark_printer-cx725de_(color))
            * **Template - SNMP - Lexmark CX725de COLOR**
        * [template_lexmark_printer-cx860dtfe_(color)](Printers/Lexmark/template_lexmark_printer-cx860dtfe_(color))
            * **Template - SNMP - Lexmark CX860dtfe COLOR**
        * [template_lexmark_printer-cx923dxe_(color)](Printers/Lexmark/template_lexmark_printer-cx923dxe_(color))
            * **Template - SNMP - Lexmark CX923dxe COLOR**
        * [template_lexmark_printer-ms622de_(mono)](Printers/Lexmark/template_lexmark_printer-ms622de_(mono))
            * **Template - SNMP - Lexmark MS622de MONO**
        * [template_lexmark_printer-ms826de_(mono)](Printers/Lexmark/template_lexmark_printer-ms826de_(mono))
            * **Template - SNMP - Lexmark MS826de MONO**
    * [OKI](Printers/OKI)
        * [template_es8461_mfp](Printers/OKI/template_es8461_mfp)
            * **OKI Printer**
        * [template_oki_color_laser_(c...)](Printers/OKI/template_oki_color_laser_(c...))
            * **OKI**
    * [Ricoh](Printers/Ricoh)
        * [template_automatic_ordering_of_consumables_ricoh_collar_printer_japanese](Printers/Ricoh/template_automatic_ordering_of_consumables_ricoh_collar_printer_japanese)
            * **Template Ricoh color printer**
        * [template_monitoring_ink_cartridge_remaining_quantity_for_ricoh_printer](Printers/Ricoh/template_monitoring_ink_cartridge_remaining_quantity_for_ricoh_printer)
            * **Template Ricoh color printer**
        * [template_ricoh_aficio_3500sf_and_3510sf](Printers/Ricoh/template_ricoh_aficio_3500sf_and_3510sf)
            * **Template Ricoh Aficio 3500SF e 3510SF**
        * [template_ricoh_aficio_mp_c3300_or_3001_printer](Printers/Ricoh/template_ricoh_aficio_mp_c3300_or_3001_printer)
            * **RICOH Aficio MP C3300/3001**
        * [template_ricoh_snmp_printers](Printers/Ricoh/template_ricoh_snmp_printers)
            * **Template SNMP Ricoh Printers**
    * [SAMSUNG](Printers/SAMSUNG)
        * [template_printer_samsung_clp](Printers/SAMSUNG/template_printer_samsung_clp)
            * **Printer Samsung CLP**
        * [template_samsung-impressora_snmp](Printers/SAMSUNG/template_samsung-impressora_snmp)
            * **Template - SAMSUNG**
    * [Samsung](Printers/Samsung)
        * [template_monitorar_niveis_de_toner](Printers/Samsung/template_monitorar_niveis_de_toner)
            * **impressoras SIMPRESS**
        * [template_samsung_m2020w](Printers/Samsung/template_samsung_m2020w)
            * **M2020W**
        * [template_samsung_m_series](Printers/Samsung/template_samsung_m_series)
            * **Template Printer Samsung M Series**
    * [Xerox](Printers/Xerox)
        * [template_xerox_3210_3220_3225_3300_3615_6505](Printers/Xerox/template_xerox_3210_3220_3225_3300_3615_6505)
            * **Xerox 3210 3220 3225 3300 3615 6505**<p>The template was presented as a zip archive</p>
        * [template_xerox_7220_multi_color](Printers/Xerox/template_xerox_7220_multi_color)
            * **Template Printer Xerox WorkCentre 3220**
        * [template_xerox_phaser_3610](Printers/Xerox/template_xerox_phaser_3610)
            * **Template Printer Xerox Phaser 3610**
        * [template_xerox_phaser_3635mfp](Printers/Xerox/template_xerox_phaser_3635mfp)
            * **Template Printer Xerox Phaser 3635MFP**
        * [template_xerox_phaser_4622](Printers/Xerox/template_xerox_phaser_4622)
            * **Template Printer Xerox Phaser 4622**
        * [template_xerox_phaser_6130n](Printers/Xerox/template_xerox_phaser_6130n)
            * **Template Printer Xerox Phaser 6130N**
        * [template_xerox_workcentre_3220](Printers/Xerox/template_xerox_workcentre_3220)
            * **Template Printer Xerox WorkCentre 3220**
        * [template_xerox_workcentre_3225](Printers/Xerox/template_xerox_workcentre_3225)
            * **Template Printer Xerox WorkCentre 3225**
        * [template_xerox_workcentre_3315](Printers/Xerox/template_xerox_workcentre_3315)
            * **Template Printer Xerox WorkCentre 3315**
        * [template_xerox_workcentre_3325](Printers/Xerox/template_xerox_workcentre_3325)
            * **Template Printer Xerox WorkCentre 3325**
        * [template_xerox_workcentre_5222](Printers/Xerox/template_xerox_workcentre_5222)
            * **Template Printer Xerox WorkCentre 5222**
        * [template_xerox_workcentre_5230](Printers/Xerox/template_xerox_workcentre_5230)
            * **Template Printer Xerox WorkCentre 5230**
        * [template_xerox_workcentre_5335](Printers/Xerox/template_xerox_workcentre_5335)
            * **Template Printer Xerox WorkCentre 5335**
        * [template_xerox_workcentre_7125](Printers/Xerox/template_xerox_workcentre_7125)
            * **Template Printer Xerox WorkCentre 7125**
        * [template_xerox_workcentre_7220](Printers/Xerox/template_xerox_workcentre_7220)
            * **Template Printer Xerox WorkCentre 7220**
        * [template_xerox_workcentre_7225](Printers/Xerox/template_xerox_workcentre_7225)
            * **Template Printer Xerox WorkCentre 7225**
        * [template_xerox_workcentre_7346](Printers/Xerox/template_xerox_workcentre_7346)
            * **Template Printer Xerox WorkCentre 7346**
        * [template_xerox_workcentre_7525](Printers/Xerox/template_xerox_workcentre_7525)
            * **Template Printer Xerox WorkCentre 7525**
        * [template_xerox_workcentre_7855](Printers/Xerox/template_xerox_workcentre_7855)
            * **Template Printer Xerox WorkCentre 7855**
    * [template_dell_laserprinter](Printers/template_dell_laserprinter)
        * **Template SNMP Printer**
    * [template_hp_lj_5500,_4700,_3600](Printers/template_hp_lj_5500,_4700,_3600)
        * **Template Printer HP LaserJet 5500**
    * [template_impressora_lld_universal](Printers/template_impressora_lld_universal)
        * **Template_Snmp_Impressora_LLD_VERSAO-0.1**
    * [template_konica_c3100p](Printers/template_konica_c3100p)
        * **Konica C3100P SNMP**
    * [template_konica_minolta](Printers/template_konica_minolta)
        * **Konica Minolta**<p>The template was presented as a zip archive</p>
    * [template_kyocera_fs-4200dn](Printers/template_kyocera_fs-4200dn)
        * **Kyocera FS-4200DN**
    * [template_kyocera_fs-c8525mfp](Printers/template_kyocera_fs-c8525mfp)
        * **Template_Kyocera FS-C8525MFP**
    * [template_kyocera_taskalfa_3051ci](Printers/template_kyocera_taskalfa_3051ci)
        * **Kyocera TASKalfa 3051ci**
    * [template_monitoramento_print_server_do_windows](Printers/template_monitoramento_print_server_do_windows)
        * **Monitoramento Print Server do Windows**<p>The template was presented as a zip archive</p>
    * [template_panasonic_kx-mb2051ru](Printers/template_panasonic_kx-mb2051ru)
        * **Template Printer Panasonic KX-MB2051RU**
    * [template_panasonic_kx-mb2540_snmp](Printers/template_panasonic_kx-mb2540_snmp)
        * **Template_Printer_Panasonic_KX-MB2540**
    * [template_panasonic_kx-mc6020_snmp](Printers/template_panasonic_kx-mc6020_snmp)
        * **Template_Printer_Panasonic_KX-MC6020RU**
    * [template_ricoh_color_mfp](Printers/template_ricoh_color_mfp)
        * **Template MFP Ricoh**
    * [template_s_brother_printers](Printers/template_s_brother_printers)
        * **brother Printers templates**
    * [template_sharp_printer-c301w_and_mx-2640](Printers/template_sharp_printer-c301w_and_mx-2640)
        * **Template Sharp Printers**
    * [template_xerox_workcentre_6605dn](Printers/template_xerox_workcentre_6605dn)
        * **Template Printer Xerox WorkCentre 6605DN**
* [SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring)
    * [Cooling](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Cooling)
        * [template_airco_pcoweb](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Cooling/template_airco_pcoweb)
            * **Template Airco pCOWeb**
        * [template_apc_inrow_cooling_snmp](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Cooling/template_apc_inrow_cooling_snmp)
            * **APC InRow Cooling**
        * [template_sbr01_controller](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Cooling/template_sbr01_controller)
            * **Template SBR01**
        * [template_srk-m2(y);_срк-м2(у)_snmpv1](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Cooling/template_srk-m2(y);_срк-м2(у)_snmpv1)
            * **SRK-M2(Y); СРК-М2(У) SNMPv1**<p>The template was presented as a zip archive</p>
        * [template_stulz_wib_8000](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Cooling/template_stulz_wib_8000)
            * **Stulz Climate**
        * [template_zbx-sbr](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Cooling/template_zbx-sbr)
            * **zbx-sbr**<p>The template was presented as a zip archive</p>
    * [Monitoring_Equipment](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment)
        * [template_akcp_sensorprobe](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_akcp_sensorprobe)
            * **Template AKCP**
        * [template_apc_netbotz_ap9340](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_apc_netbotz_ap9340)
            * **Template APC Netbotz AP9340**<p>Retrieves temps and humidity from all the sensors.</p>
        * [template_apc_netbotz_monitor_2xx](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_apc_netbotz_monitor_2xx)
            * **Template APC NetBotz Rack Monitor 200**
            * **Template APC NetBotz Rack Monitor 250**
        * [template_apc_netbotz_rack_monitor_200](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_apc_netbotz_rack_monitor_200)
            * **Template SNMP APC NetBotz Rack Monitor 200**
        * [template_check-sensorgateway](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_check-sensorgateway)
            * **SNMP - ServerCheck.com - SensorGateway**
        * [template_dcm_se-10_2.0_snmp](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_dcm_se-10_2.0_snmp)
            * **DCM SE-10**
        * [template_dcm_se-10_http](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_dcm_se-10_http)
            * **DCM SE-10**
        * [template_dcm_se-10_snmp](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_dcm_se-10_snmp)
            * **DCM SE-10**
        * [template_dcm_sw-10_snmp](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_dcm_sw-10_snmp)
            * **DCM SW-10**
        * [template_dcm_sw-11-dsp](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_dcm_sw-11-dsp)
            * **DCM SW-11-DSP**
        * [template_dcm_sw-8_snmp](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_dcm_sw-8_snmp)
            * **DCM SW-8**
        * [template_hwg-ste_probe](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_hwg-ste_probe)
            * **HWg-STE**
        * [template_it_watchdog_15](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_it_watchdog_15)
            * **Template ITWatchDog 15**
        * [template_natureremo](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_natureremo)
            * **Template NatureRemo**
        * [template_schneider_pm8ecc_pm800](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_schneider_pm8ecc_pm800)
            * **PM8ECC**
        * [template_se-10_sw-10-dcm_tech](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_se-10_sw-10-dcm_tech)
            * **DCM SE-10**
        * [template_serverscheck_sensorgateway](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_serverscheck_sensorgateway)
            * **SNMP - ServerCheck.com - SensorGateway**
        * [template_teracom_tcw122b-wd](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_teracom_tcw122b-wd)
            * **Template Teracom TCW122B-WD SNMPv1**<p>Teracom TCW122B-WD IP watchdog monitoring module TCW122B-WD is an IP watchdog monitoring module, based on TCW122 hardware. It has 2 digital and 2 analog inputs. It supports up to two temperature/humidity sensors on its 1-Wire interface. The IP watchdog controller has also two relays with normally open and normally closed contacts. TCW122B-WD is dedicated to IP watchdog monitoring as a stand-alone device.The controller supports also SNMP v1 as M2M protocol. It can also be used as a part of small to medium SCADA systems for environmental monitoring of server rooms. Template by Kari Karvonen <oh1kk @toimii.fi> Tested with firmware version: tcw122-wd_v3.03</p>
        * [template_vertiv_geist_watchdog_1200s](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_vertiv_geist_watchdog_1200s)
            * **Geist Watchdog 1200s**<p>Check the watchdogs for the temperature in each closet.</p>
        * [template_volt_pop_protect_snmp](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_volt_pop_protect_snmp)
            * **Volt Pop Protect SNMP**
        * [template_volt_pop_protect_snmp-4.0](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/Monitoring_Equipment/template_volt_pop_protect_snmp-4.0)
            * **Volt Pop Protect SNMP**
    * [template_audemat_fm_monitor](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_audemat_fm_monitor)
        * **Template Discovery Audemat**
    * [template_avtech_room_alert_3e](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_avtech_room_alert_3e)
        * **RoomAlert 3E**
    * [template_daikin_air-conditioner](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_daikin_air-conditioner)
        * **Daikin air-conditioner**<p>The template was presented as a zip archive</p>
    * [template_fronius_device](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_fronius_device)
        * **Fronius Solar**<p>Uses Fronius API V1 to query inverter Make sure you update the following macros after linking the template DEVICE_ID: the device you want to monitor (defaults to 1 if you only have 1 inverter). Make sure your host has a hsotname of ip address configured. This must be the address of the Fronius device to monitor</p>
    * [template_lantronix_uds1100](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_lantronix_uds1100)
        * **LANTRONIX-UDS1100**<p>Simple LANTRONIX-UDS1100 template by Federico Coppola</p>
    * [template_luxtronik_2.0_wärmepumpe_heatpump](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_luxtronik_2.0_wärmepumpe_heatpump)
        * **Template Luxtronik 2.0 Wärmepumpe/Heatpump**<p>The template was presented as a zip archive</p>
    * [template_modbus_loadable_module](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_modbus_loadable_module)
        * **Modbus loadable module**<p>The template was presented as a tar.gz archive</p>
    * [template_mqtt-to-zabbix](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_mqtt-to-zabbix)
        * **mqtt-to-zabbix**<p>The template was presented as a zip archive</p>
    * [template_neptune_apex](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_neptune_apex)
        * **Neptune Apex**<p>The template was presented as a zip archive</p>
    * [template_tado_heating_control](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_tado_heating_control)
        * **Tado Template**
    * [template_tx_hitachi_ec704mp](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_tx_hitachi_ec704mp)
        * **Template tx Hitachi EC704MP**<p>Template of transmissor Hitachi model EC704MP.</p>
    * [template_tx_screen_nxt-151](SCADA,_IoT,_Energy,_Home_Automation,_Industrial_monitoring/template_tx_screen_nxt-151)
        * **Template Nxt151 General**
* [Server_Hardware](Server_Hardware)
    * [Cisco](Server_Hardware/Cisco)
        * [template_思科ucs交换矩阵监控模板](Server_Hardware/Cisco/template_思科ucs交换矩阵监控模板)
            * **思科UCS交换矩阵监控模板**
        * [template_cisco_eirpg_protocol](Server_Hardware/Cisco/template_cisco_eirpg_protocol)
            * **CISCO EIGRP**
        * [template_cisco_ucs](Server_Hardware/Cisco/template_cisco_ucs)
            * **Cisco-UCS**
        * [template_cisco_ucs_standalone_hw_monitoring](Server_Hardware/Cisco/template_cisco_ucs_standalone_hw_monitoring)
            * **Template Cisco UCS Standalone SNMP**
        * [template_ipmi_cisco_ucs-c220_server_hardware](Server_Hardware/Cisco/template_ipmi_cisco_ucs-c220_server_hardware)
            * **IPMI Cisco UCS-C220 Server hardware**<p>ipmi sensors, please disable absend HDD and unsupported items</p>
        * [template_standalone_cisco_ucs_server_snmp](Server_Hardware/Cisco/template_standalone_cisco_ucs_server_snmp)
            * **Template Cisco UCS Standalone SNMP**
    * [Dell](Server_Hardware/Dell)
        * [template_戴尔poweredge系列机架服务器监控模板](Server_Hardware/Dell/template_戴尔poweredge系列机架服务器监控模板)
            * **戴尔PowerEdge系列机架服务器监控模板**
        * [template_dell_idrac](Server_Hardware/Dell/template_dell_idrac)
            * **Dell idrac**
        * [template_dell_idrac(chinese)](Server_Hardware/Dell/template_dell_idrac(chinese))
            * **Dell idrac**
        * [template_dell_idrac_9_snmp](Server_Hardware/Dell/template_dell_idrac_9_snmp)
            * **Template-SNMP-iDRAC-9**<p>Lucas Afonso Kremer https://www.linkedin.com/in/lucasafonsokremer</p>
        * [template_dell_idrac_via_redfish](Server_Hardware/Dell/template_dell_idrac_via_redfish)
            * **Dell iDRAC via Redfish**<p>The template was presented as a zip archive</p>
        * [template_dell_poweredge_1950_ipmi](Server_Hardware/Dell/template_dell_poweredge_1950_ipmi)
            * **3-IPMI Dell Power Edge 1950**
        * [template_dell_poweredge_2900_ipmi](Server_Hardware/Dell/template_dell_poweredge_2900_ipmi)
            * **3-IPMI Dell Power Edge 2900**
        * [template_dell_poweredge_c6220_ipmi](Server_Hardware/Dell/template_dell_poweredge_c6220_ipmi)
            * **Template IPMI Dell PowerEdge C6220**
        * [template_dell_poweredge_r415_ipmi](Server_Hardware/Dell/template_dell_poweredge_r415_ipmi)
            * **Template IPMI Dell PowerEdge R415**
        * [template_dell_poweredge_r715_ipmi](Server_Hardware/Dell/template_dell_poweredge_r715_ipmi)
            * **Template IPMI Dell PowerEdge R715**
        * [template_dell_poweredge_t300_ipmi](Server_Hardware/Dell/template_dell_poweredge_t300_ipmi)
            * **3-IPMI Dell Power Edge T300**
        * [template_dell_poweredge_t310_ipmi](Server_Hardware/Dell/template_dell_poweredge_t310_ipmi)
            * **IPMI Dell Power Edge T310**
        * [template_dell_poweredge_t320_ipmi](Server_Hardware/Dell/template_dell_poweredge_t320_ipmi)
            * **3-IPMI Dell Power Edge T320**
        * [template_dell_poweredge_t420_ipmi](Server_Hardware/Dell/template_dell_poweredge_t420_ipmi)
            * **3-IPMI Dell Power Edge T420**
        * [template_dell_poweredge_t620_ipmi](Server_Hardware/Dell/template_dell_poweredge_t620_ipmi)
            * **3-IPMI Dell Power Edge T620**
        * [template_ipmi_dell_poweredge_2950](Server_Hardware/Dell/template_ipmi_dell_poweredge_2950)
            * **Template IPMI Dell PowerEdge 2950**
        * [template_ipmi_dell_poweredge_r510](Server_Hardware/Dell/template_ipmi_dell_poweredge_r510)
            * **Template IPMI Dell PowerEdge R510**
    * [Fujitsu_Siemens](Server_Hardware/Fujitsu_Siemens)
        * [template_ipmi_rx2530](Server_Hardware/Fujitsu_Siemens/template_ipmi_rx2530)
            * **IPMI Fujitsu RX2530 M2**
    * [H3C](Server_Hardware/H3C)
        * [template_for_h3c_hdm_1.30.x](Server_Hardware/H3C/template_for_h3c_hdm_1.30.x)
            * **H3C_basic_monitoring**<p>H3C server basic monitoring items</p>
        * [template_for_h3c_r4900_g2](Server_Hardware/H3C/template_for_h3c_r4900_g2)
            * **H3C_basic_momitoring_G2**
        * [template_h3c_rackserver_monitor](Server_Hardware/H3C/template_h3c_rackserver_monitor)
            * **H3C RackServer Monitor Template**<p>H3C_RackServer_monitor_template Known Issues: device : UIS-Cell-3030-G3,UniServer-R4900</p>
    * [HP](Server_Hardware/HP)
        * [template_惠普proliant系列机架服务器监控模板](Server_Hardware/HP/template_惠普proliant系列机架服务器监控模板)
            * **惠普ProLiant系列机架服务器监控模板**
        * [template_c7000_chassis](Server_Hardware/HP/template_c7000_chassis)
            * **C7000 Chassis**<p>The template was presented as a zip archive</p>
        * [template_dl360p_gen8](Server_Hardware/HP/template_dl360p_gen8)
            * **IPMI HP DL360p Gen8**
        * [template_dl380_gen5](Server_Hardware/HP/template_dl380_gen5)
            * **DL380 Gen5**<p>The template was presented as a zip archive</p>
        * [template_dl380p_gen7](Server_Hardware/HP/template_dl380p_gen7)
            * **DL380p Gen7**<p>The template was presented as a zip archive</p>
        * [template_dl380p_gen8](Server_Hardware/HP/template_dl380p_gen8)
            * **DL380p Gen8**<p>The template was presented as a zip archive</p>
        * [template_hp_array](Server_Hardware/HP/template_hp_array)
            * **HP array**<p>The template was presented as a zip archive</p>
        * [template_hp_c7000_chassis](Server_Hardware/HP/template_hp_c7000_chassis)
            * **HP C7000 Chassis (EN)**<p>This template requires the MIBs: CPQRACK-MIB CPQHOST-MIB These are referenced in the template, not the full numeric OID.</p>
        * [template_hp_dl320e_gen8_ipmi_(ilo4)](Server_Hardware/HP/template_hp_dl320e_gen8_ipmi_(ilo4))
            * **IPMI_HP320eG8**
        * [template_hp_dl360_gen9_ipmi](Server_Hardware/HP/template_hp_dl360_gen9_ipmi)
            * **HP DL360 Gen9 IPMI**<p>The template was presented as a zip archive</p>
        * [template_hp_ilo_5_snmp](Server_Hardware/HP/template_hp_ilo_5_snmp)
            * **Template-SNMP-HP-iLO5**<p>Created by Lucas Afonso Kremer <lucasafonsokremer@gmail.com> https://www.linkedin.com/in/lucasafonsokremer</p>
        * [template_hp_ilo_proliant_dl380p_gen8](Server_Hardware/HP/template_hp_ilo_proliant_dl380p_gen8)
            * **ILO ProLiant DL380p Gen8**<p>Zabbix monitoring template about ILO ProLiant DL380p Gen8. This template controls CPU, RAM banks, temperature and disks status. By Federico Coppola </p>
        * [template_hp_server_snmp_autodiscovery](Server_Hardware/HP/template_hp_server_snmp_autodiscovery)
            * **Template_HP_SNMP_Autodiscovery**
        * [template_hp_xl420_gen9](Server_Hardware/HP/template_hp_xl420_gen9)
            * **Template IPMI HP ProLiant XL420 Gen9**
        * [template_ipmi_hp_bl460c_g8](Server_Hardware/HP/template_ipmi_hp_bl460c_g8)
            * **IPMI HP BL460c Gen8**
        * [template_ipmi_hp_dl360_g5_no_drives_only](Server_Hardware/HP/template_ipmi_hp_dl360_g5_no_drives_only)
            * **ipmi hp DL360 G5 no drives only**<p>The template was presented as a zip archive</p>
        * [template_ipmi_hp_dl360_g6_with_nohdd_option](Server_Hardware/HP/template_ipmi_hp_dl360_g6_with_nohdd_option)
            * **ipmi HP DL360 G6 with noHDD option**<p>The template was presented as a zip archive</p>
        * [template_ipmi_hp_dl360p_g8_with_nohdd_option](Server_Hardware/HP/template_ipmi_hp_dl360p_g8_with_nohdd_option)
            * **ipmi HP DL360p G8 with noHDD option**<p>The template was presented as a zip archive</p>
        * [template_ipmi_hp_dl360p_g9_with_nohdd_option](Server_Hardware/HP/template_ipmi_hp_dl360p_g9_with_nohdd_option)
            * **ipmi HP DL360p G9 with noHDD option**<p>The template was presented as a zip archive</p>
        * [template_ipmi_hp_dl380p_g9_without_drives_only](Server_Hardware/HP/template_ipmi_hp_dl380p_g9_without_drives_only)
            * **IPMI HP DL380p Gen9 without Drives**
        * [template_ipmi_hp_servers_hdd_discovery](Server_Hardware/HP/template_ipmi_hp_servers_hdd_discovery)
            * **IPMI HP servers HDD discovery**<p>The template was presented as a zip archive</p>
        * [template_server_hp_ilo100i_ipmi](Server_Hardware/HP/template_server_hp_ilo100i_ipmi)
            * **Template HP iLO100i IPMI**<p>Template polling sensor data of a HP iLO100i</p>
    * [Huawei](Server_Hardware/Huawei)
        * [template_fusion_module_800](Server_Hardware/Huawei/template_fusion_module_800)
            * **Fusion Module 800**<p>The template was presented as a zip archive</p>
        * [template_huawei_ccu](Server_Hardware/Huawei/template_huawei_ccu)
            * **Huawei CCU Template**<p>The template was presented as a zip archive</p>
        * [template_huawei_chassis_emm](Server_Hardware/Huawei/template_huawei_chassis_emm)
            * **Huawei Chassis EMM Template**<p>The template was presented as a zip archive</p>
        * [template_huawei_chassis_swi](Server_Hardware/Huawei/template_huawei_chassis_swi)
            * **Huawei Chassis SWI Template**<p>The template was presented as a zip archive</p>
        * [template_huawei_pc_server](Server_Hardware/Huawei/template_huawei_pc_server)
            * **Huawei PC Server**<p>The template was presented as a zip archive</p>
        * [template_huawei_rh5885h_v3](Server_Hardware/Huawei/template_huawei_rh5885h_v3)
            * **Huawei Server iBMC Template**
        * [template_huawei_server_hmm](Server_Hardware/Huawei/template_huawei_server_hmm)
            * **Huawei Server HMM Template**<p>The template was presented as a zip archive</p>
        * [template_huawei_server_ibmc](Server_Hardware/Huawei/template_huawei_server_ibmc)
            * **Huawei Server IBMC Template**<p>The template was presented as a zip archive</p>
        * [template_vlan_l2_huawei](Server_Hardware/Huawei/template_vlan_l2_huawei)
            * **VLAN L2 Huawei**
    * [IBM_and_Lenovo](Server_Hardware/IBM_and_Lenovo)
        * [template_lenovo_flex_snmpv3](Server_Hardware/IBM_and_Lenovo/template_lenovo_flex_snmpv3)
            * **Template Lenovo Flex chassis**
        * [template_server_ibm_imm_snmpvx](Server_Hardware/IBM_and_Lenovo/template_server_ibm_imm_snmpvx)
            * **Template Server IBM IMM SNMPvX**<p>The template was presented as a zip archive</p>
        * [template_server_lenovo_xcc_snmpv3](Server_Hardware/IBM_and_Lenovo/template_server_lenovo_xcc_snmpv3)
            * **Template Server Lenovo XCC SNMPv3**
        * [template_server_with_imm_imm2](Server_Hardware/IBM_and_Lenovo/template_server_with_imm_imm2)
            * **Server with IMM/IMM2**<p>The template was presented as a zip archive</p>
        * [template_system_x3650_x3550_x3550m2_x3550m3](Server_Hardware/IBM_and_Lenovo/template_system_x3650_x3550_x3550m2_x3550m3)
            * **System x3650/x3550/x3550m2/x3550m3**<p>The template was presented as a zip archive</p>
    * [Inspur](Server_Hardware/Inspur)
        * [template_inspur_server_for_zabbix_5.0](Server_Hardware/Inspur/template_inspur_server_for_zabbix_5.0)
            * **Template Server Inspur BMC All Items 4 Zabbix5.0**<p>加密方式改为SHA和AES</p>
        * [template_inspur_server_snmpv3](Server_Hardware/Inspur/template_inspur_server_snmpv3)
            * **Template Server Inspur BMC SNMPv3**
        * [template_inspur_server_snmpv3_1](Server_Hardware/Inspur/template_inspur_server_snmpv3_1)
            * **Template Server Inspur BMC SNMPv3**
    * [Intel](Server_Hardware/Intel)
        * [template_intel_quicksync_gpu_metrics](Server_Hardware/Intel/template_intel_quicksync_gpu_metrics)
            * **Template Intel QuickSync GPU metrics**
        * [template_intel_s5500bc_ipmi](Server_Hardware/Intel/template_intel_s5500bc_ipmi)
            * **Template Server Intel S5500BC IPMI**
        * [template_ipmi_intel_rmm3](Server_Hardware/Intel/template_ipmi_intel_rmm3)
            * **Template IPMI Intel RMM3**
        * [template_ipmi_intel_s2400sc_bmc_integrated](Server_Hardware/Intel/template_ipmi_intel_s2400sc_bmc_integrated)
            * **Template IPMI Intel S2400SC**
    * [Other](Server_Hardware/Other)
        * [template_amd_monitoring_for_multiple_gpus](Server_Hardware/Other/template_amd_monitoring_for_multiple_gpus)
            * **Blank AMD**<p>This is a Blank AMD template</p>
        * [template_ipmi_asus_asmb4-ikvm_asmb4-sol](Server_Hardware/Other/template_ipmi_asus_asmb4-ikvm_asmb4-sol)
            * **Template IPMI ASUS ASMB4**<p>ASUS ASMB4-iKVM/ASMB4-SOL PLUS Hardware Monitor / System Sensor related Autor template: m.beloglazov@gmail.com Version Zabbix: 3.0</p>
        * [template_md_raid](Server_Hardware/Other/template_md_raid)
            * **Template MD Soft RAID**<p>Monitoring of MD Soft RAID</p>
        * [template_nvidia-smi_integration](Server_Hardware/Other/template_nvidia-smi_integration)
            * **Template NVidia Sensors**
        * [template_raid_cciss](Server_Hardware/Other/template_raid_cciss)
            * **Template RAID CCISS**<p>The template was presented as a zip archive</p>
        * [template_raspberry_pi_cpu_temperature](Server_Hardware/Other/template_raspberry_pi_cpu_temperature)
            * **Raspberry PI CPU Temperature**<p>The template was presented as a zip archive</p>
        * [template_redfish_for_gagar_in_openbmc](Server_Hardware/Other/template_redfish_for_gagar_in_openbmc)
            * **Redfish for GAGAR>IN OpenBMC**<p>The template was presented as a zip archive</p>
        * [template_snmp_sun_m5000_xscf](Server_Hardware/Other/template_snmp_sun_m5000_xscf)
            * **Template SNMP XSCF Sun M5000**<p>please set {$SNMP_COMMUNITY} macros</p>
        * [template_storage_works_x1600](Server_Hardware/Other/template_storage_works_x1600)
            * **Storage Works X1600**<p>The template was presented as a zip archive</p>
        * [template_sun_blade_2000](Server_Hardware/Other/template_sun_blade_2000)
            * **Sun Blade 2000**<p>The template was presented as a zip archive</p>
        * [template_sun_enterprise_t2000_server](Server_Hardware/Other/template_sun_enterprise_t2000_server)
            * **Sun Enterprise T2000 server**<p>The template was presented as a zip archive</p>
        * [template_sun_m4000_prtdiag](Server_Hardware/Other/template_sun_m4000_prtdiag)
            * **Sun M4000 prtdiag**<p>The template was presented as a zip archive</p>
        * [template_sun_ultra_80](Server_Hardware/Other/template_sun_ultra_80)
            * **Sun Ultra 80**<p>The template was presented as a zip archive</p>
        * [template_sun_v440](Server_Hardware/Other/template_sun_v440)
            * **Sun v440**<p>The template was presented as a zip archive</p>
        * [template_sun_v890](Server_Hardware/Other/template_sun_v890)
            * **Sun v890**<p>The template was presented as a zip archive</p>
        * [template_veritas_disks_discovery_on_solaris_sparc](Server_Hardware/Other/template_veritas_disks_discovery_on_solaris_sparc)
            * **Veritas disks discovery on Solaris Sparc**<p>The template was presented as a zip archive</p>
        * [template_zabbix-agent_d2500cc](Server_Hardware/Other/template_zabbix-agent_d2500cc)
            * **Template Sensors D2500CC**<p>fan2 is ignored as MB only has 1 fan pin</p>
        * [template_zabbix-agent_dn2800mt](Server_Hardware/Other/template_zabbix-agent_dn2800mt)
            * **Template Sensors DN2800MT**<p>temp2 is ignored as it is fixed to 110.5°C</p>
    * [RAID_Cards](Server_Hardware/RAID_Cards)
        * [template_adaptec-universal-storage-mib](Server_Hardware/RAID_Cards/template_adaptec-universal-storage-mib)
            * **ADAPTEC-UNIVERSAL-STORAGE-MIB**<p>The template was presented as a zip archive</p>
        * [template_adaptec_microsemi_using_arcconf](Server_Hardware/RAID_Cards/template_adaptec_microsemi_using_arcconf)
            * **Template Adaptec PS**
        * [template_adaptec_raid_controller_with_lld](Server_Hardware/RAID_Cards/template_adaptec_raid_controller_with_lld)
            * **Adaptec RAID Controller Template with LLD**<p>The template was presented as a zip archive</p>
        * [template_intel_rst_(intel_vroc)](Server_Hardware/RAID_Cards/template_intel_rst_(intel_vroc))
            * **Template Intel RST with js**
        * [template_lsi_avago_broadcom_megaraid_sas_snmp](Server_Hardware/RAID_Cards/template_lsi_avago_broadcom_megaraid_sas_snmp)
            * **Template SNMP MegaRAID SAS**<p>Zabbix Template for Avago Megaraid SAS (formerly LSI) RAID cards</p>
        * [template_lsi_avago_broadcom_using_json_outputs_of_storcli](Server_Hardware/RAID_Cards/template_lsi_avago_broadcom_using_json_outputs_of_storcli)
            * **Template LSI JSON discovery**
        * [template_lsi_raid_controller_with_lld](Server_Hardware/RAID_Cards/template_lsi_raid_controller_with_lld)
            * **LSI RAID Controller Template with LLD**<p>The template was presented as a zip archive</p>
        * [template_marvell_raid_controller](Server_Hardware/RAID_Cards/template_marvell_raid_controller)
            * **Marvell RAID Controller**<p>The template was presented as a zip archive</p>
        * [template_zbx-raid-controller](Server_Hardware/RAID_Cards/template_zbx-raid-controller)
            * **zbx-raid-controller**<p>The template was presented as a zip archive</p>
    * [SGI](Server_Hardware/SGI)
        * [template_sgi_altix_c2108-g9_ipmi](Server_Hardware/SGI/template_sgi_altix_c2108-g9_ipmi)
            * **3-IPMI SGI Altix C2108-G9**
        * [template_sgi_altix_c2112-4g10](Server_Hardware/SGI/template_sgi_altix_c2112-4g10)
            * **3-IPMI SGI Altix C2112-4G10**
        * [template_sgi_altix_c2112-gp2_ipmi](Server_Hardware/SGI/template_sgi_altix_c2112-gp2_ipmi)
            * **3-IPMI SGI Altix C2112-GP2**
        * [template_sgi_altix_h2106-g7_ipmi](Server_Hardware/SGI/template_sgi_altix_h2106-g7_ipmi)
            * **3-IPMI SGI Altix H2106-G7**
        * [template_sgi_altix_iss3114_ipmi](Server_Hardware/SGI/template_sgi_altix_iss3114_ipmi)
            * **3-IPMI SGI Altix ISS3114**
    * [Supermicro](Server_Hardware/Supermicro)
        * [template_ipmi-supermicro-x10drw-e](Server_Hardware/Supermicro/template_ipmi-supermicro-x10drw-e)
            * **IPMI - Supermicro - X10DRW-E**
        * [template_ipmi_supermicro_h8dgt](Server_Hardware/Supermicro/template_ipmi_supermicro_h8dgt)
            * **Template IPMI Supermicro H8DGT**
        * [template_ipmi_supermicro_sys-5018d-mtf](Server_Hardware/Supermicro/template_ipmi_supermicro_sys-5018d-mtf)
            * **Template IPMI Supermicro SYS-5018D**
        * [template_ipmi_supermicro_sys-5019s-l](Server_Hardware/Supermicro/template_ipmi_supermicro_sys-5019s-l)
            * **Template IPMI Supermicro SYS-5019S-L**
        * [template_ipmi_supermicro_sys-6028r-tr](Server_Hardware/Supermicro/template_ipmi_supermicro_sys-6028r-tr)
            * **Template IPMI Supermicro SYS-6028R-TR**
        * [template_ipmi_supermicro_x10drt-h](Server_Hardware/Supermicro/template_ipmi_supermicro_x10drt-h)
            * **IPMI SuperMicro X10DRT-H**
        * [template_ipmi_supermicro_x10sll-f](Server_Hardware/Supermicro/template_ipmi_supermicro_x10sll-f)
            * **IPMI Supermicro X10SLL-F**
        * [template_ipmi_supermicro_x10srl-f](Server_Hardware/Supermicro/template_ipmi_supermicro_x10srl-f)
            * **Template IPMI Supermicro X10SRL-F**
        * [template_ipmi_supermicro_x10srm-tf](Server_Hardware/Supermicro/template_ipmi_supermicro_x10srm-tf)
            * **Template IPMI Supermicro X10SRM-TF**
        * [template_ipmi_supermicro_x8dtl-3f](Server_Hardware/Supermicro/template_ipmi_supermicro_x8dtl-3f)
            * **Template IPMI Supermicro X8DTL-3F**
        * [template_ipmi_supermicro_x9dbl-if](Server_Hardware/Supermicro/template_ipmi_supermicro_x9dbl-if)
            * **Template IPMI Supermicro X9DBL**
        * [template_ipmi_supermicro_x9drl-7f-bo](Server_Hardware/Supermicro/template_ipmi_supermicro_x9drl-7f-bo)
            * **Template IPMI Supermicro X9DRL-7F-BO**
        * [template_ipmi_supermicro_x9drt](Server_Hardware/Supermicro/template_ipmi_supermicro_x9drt)
            * **Template IPMI Supermicro X9DRT**
        * [template_ipmi_supermicro_x9scl-f-b](Server_Hardware/Supermicro/template_ipmi_supermicro_x9scl-f-b)
            * **Template IPMI Supermicro X9DRL-7F-BO**
        * [template_ipmi_supermicro_x9scl_x9scm](Server_Hardware/Supermicro/template_ipmi_supermicro_x9scl_x9scm)
            * **Template IPMI Supermicro X9SCLX9SCM**
        * [template_ipmi_supermicro_x9sri](Server_Hardware/Supermicro/template_ipmi_supermicro_x9sri)
            * **Template IPMI Supermicro X9SRI-F**
        * [template_supermicro_a1sam-2750f_(ipmi)](Server_Hardware/Supermicro/template_supermicro_a1sam-2750f_(ipmi))
            * **Template IPMI Supermicro A1SAM-2750F**
        * [template_supermicro_snmp_superdoctor_5_lld](Server_Hardware/Supermicro/template_supermicro_snmp_superdoctor_5_lld)
            * **Template Supermicro SNMP Superdoctor 5 LLD**
        * [template_supermicro_x9drd-7ln4f](Server_Hardware/Supermicro/template_supermicro_x9drd-7ln4f)
            * **IPMI SuperMicro X9DRD-7LN4F**
        * [template_zabbix_2.2_ipmi_supermicro_5017a-ef_(and_other_atom_cpu)](Server_Hardware/Supermicro/template_zabbix_2.2_ipmi_supermicro_5017a-ef_(and_other_atom_cpu))
            * **Template IPMI SuperMicro**
    * [Tyan](Server_Hardware/Tyan)
        * [template_ipmi_tyan_s5532](Server_Hardware/Tyan/template_ipmi_tyan_s5532)
            * **Template IPMI Tyan S5532**
    * [template_dell_poweredge_m610](Server_Hardware/template_dell_poweredge_m610)
        * **Template IPMI Dell PowerEdge M610**
    * [template_ecc](Server_Hardware/template_ecc)
        * **ECC**<p>The template was presented as a zip archive</p>
    * [template_fujitsu_eternus_dx60_s3](Server_Hardware/template_fujitsu_eternus_dx60_s3)
        * **Template Module Generic SNMPv2 to Fuji Eternus**<p>Template Module Generic version: 0.15 MIBs used: SNMPv2-MIB</p>
    * [template_fujitsu_primergy_rx2530_m2](Server_Hardware/template_fujitsu_primergy_rx2530_m2)
        * **Template Module Generic SNMPv2 to Fuji IRMC**<p>Template Module Generic version: 0.15 MIBs used: SNMPv2-MIB</p>
    * [template_gemalto_luna_hsm_snmpv3](Server_Hardware/template_gemalto_luna_hsm_snmpv3)
        * **Template Gemalto SafeNet Luna SNMPv3**
    * [template_h3c_zabbix_snmp_monitoring](Server_Hardware/template_h3c_zabbix_snmp_monitoring)
        * **H3C_basic_monitoring**<p>H3C server basic monitoring items</p>
    * [template_hardware_information_cpu,_ram,_net,_bios_(lld,_trapper)](Server_Hardware/template_hardware_information_cpu,_ram,_net,_bios_(lld,_trapper))
        * **Hardware information: CPU, RAM, NET, BIOS (LLD, Trapper)**<p>The template was presented as a zip archive</p>
    * [template_ipmi_gigabyte_6pxsv4](Server_Hardware/template_ipmi_gigabyte_6pxsv4)
        * **Template IPMI Gigabyte 6PXSV4**
    * [template_module_lm-sensors](Server_Hardware/template_module_lm-sensors)
        * **Template Module lm-sensors**<p>The template was presented as a zip archive</p>
    * [template_mssql_2008-2016_multi_instance_with_wsfc_(autodiscovery)](Server_Hardware/template_mssql_2008-2016_multi_instance_with_wsfc_(autodiscovery))
        * **Template App MSSQL 2008-2016 WSFC**
    * [template_sensors](Server_Hardware/template_sensors)
        * **Sensors**<p>The template was presented as a zip archive</p>
    * [template_sugon_rackserver_monitor](Server_Hardware/template_sugon_rackserver_monitor)
        * **Sugon RackServer Monitor Template**<p>Hitachi_DiskArray_monitor_template Known Issues: In some version, the item "nicHealthAllStatus" may be disable device : H620-G30, I620-G30, I840-G30</p>
* [Storage_Devices](Storage_Devices)
    * [Buffalo](Storage_Devices/Buffalo)
        * [template_buffalo_terastation](Storage_Devices/Buffalo/template_buffalo_terastation)
            * **Buffalo TeraStation**<p>The template was presented as a zip archive</p>
        * [template_buffalo_terastation_hs-dhtgl_r5_monitoring_snmp_v2](Storage_Devices/Buffalo/template_buffalo_terastation_hs-dhtgl_r5_monitoring_snmp_v2)
            * **Template TeraStation SNMPV2**
        * [template_buffalo_terastation_ts4500r](Storage_Devices/Buffalo/template_buffalo_terastation_ts4500r)
            * **Template Buffalo TeraStation TS4500R**
    * [Dell](Storage_Devices/Dell)
        * [template_compellent_sc](Storage_Devices/Dell/template_compellent_sc)
            * **Compellent SC**<p>The template was presented as a zip archive</p>
        * [template_dell_data_domain](Storage_Devices/Dell/template_dell_data_domain)
            * **Data Domain SNMP**
        * [template_dell_powervault](Storage_Devices/Dell/template_dell_powervault)
            * **Template DELL POWERVAULT TL2000**
    * [EMC](Storage_Devices/EMC)
        * [template_emc_isilon_onefs_snmp](Storage_Devices/EMC/template_emc_isilon_onefs_snmp)
            * **Template SNMP EMC Isilon Cluster**
            * **Template SNMP EMC Isilon Node**
        * [template_emc_unity](Storage_Devices/EMC/template_emc_unity)
            * **Template EMC Unity REST-API v3**
        * [template_emc_vnx_monitoring&reporting_2.x](Storage_Devices/EMC/template_emc_vnx_monitoring&reporting_2.x)
            * **Template_VNX_monitoring_and_reporting**
        * [template_emc_vnx_storage_hardware](Storage_Devices/EMC/template_emc_vnx_storage_hardware)
            * **Template EMC VNX Storage Hardware**<p>The template was presented as a zip archive</p>
    * [FreeNAS](Storage_Devices/FreeNAS)
        * [template_freenas_11_snmp](Storage_Devices/FreeNAS/template_freenas_11_snmp)
            * **Template SNMP FreeNAS 11**
        * [template_truenas_freenas_snmp_w_zfs_stats](Storage_Devices/FreeNAS/template_truenas_freenas_snmp_w_zfs_stats)
            * **Template SNMP FreeNAS**
    * [Fujitsu](Storage_Devices/Fujitsu)
        * [template_fujitsu_eternus_dx_200](Storage_Devices/Fujitsu/template_fujitsu_eternus_dx_200)
            * **Fujitsu Eternus DX 200**<p>The template was presented as a zip archive</p>
        * [template_fujitsu_rx2540_snmp_v2](Storage_Devices/Fujitsu/template_fujitsu_rx2540_snmp_v2)
            * **Fujitsu RX2540 SNMP V2**<p>The template was presented as a zip archive</p>
        * [template_primequest_3800e](Storage_Devices/Fujitsu/template_primequest_3800e)
            * **Fujitsu Primequest 3800E**
    * [HP](Storage_Devices/HP)
        * [template_3par-7200_use_toolkit_for_hpe_3par_](Storage_Devices/HP/template_3par-7200_use_toolkit_for_hpe_3par_)
            * **3par**
        * [template_hp_3par](Storage_Devices/HP/template_hp_3par)
            * **Template HPE 3PAR SMI-S for shareZabbix**
        * [template_hp_eva](Storage_Devices/HP/template_hp_eva)
            * **HP EVA**<p>The template was presented as a zip archive</p>
        * [template_hp_msa_(telnet_xml)_(nolld)](Storage_Devices/HP/template_hp_msa_(telnet_xml)_(nolld))
            * **[Шаблон] TELNET - HP StorageWorks**
        * [template_hp_msa_2040](Storage_Devices/HP/template_hp_msa_2040)
            * **HP MSA 2040**<p>The template was presented as a zip archive</p>
        * [template_hp_smart_array_controller](Storage_Devices/HP/template_hp_smart_array_controller)
            * **HP Smart Array Controller**<p>The template was presented as a zip archive</p>
        * [template_hpe_msa_(xml_api)](Storage_Devices/HP/template_hpe_msa_(xml_api))
            * **HPE MSA (XML API)**<p>The template was presented as a zip archive</p>
        * [template_hpe_msa_2040](Storage_Devices/HP/template_hpe_msa_2040)
            * **HPE MSA 2040**<p>The template was presented as a zip archive</p>
    * [Hitachi](Storage_Devices/Hitachi)
        * [template_hitachi_df_diskarray_monitor](Storage_Devices/Hitachi/template_hitachi_df_diskarray_monitor)
            * **Hitachi DF DiskArray Monitor Template**<p>Hitachi_DF_DiskArray_monitor_template Known Issues: device : AMS 2100，AMS 2300，HUS130，HUS150</p>
        * [template_hitachi_diskarray_monitor](Storage_Devices/Hitachi/template_hitachi_diskarray_monitor)
            * **Hitachi DiskArray Monitor Template**<p>Hitachi_DiskArray_monitor_template Known Issues: device : G200，G400，G800</p>
    * [Huawei](Storage_Devices/Huawei)
        * [template_huawei_diskarray_monitor](Storage_Devices/Huawei/template_huawei_diskarray_monitor)
            * **Huawei DiskArray Monitor Template**<p>Huawei_DiskArray_monitor_template Known Issues: device : OceanStor-2600, OceanStor-5300, OceanStor-5600, OceanStor-6800, OceanStor-Dorado6000</p>
        * [template_huawei_oceanstor_sx900_hardware](Storage_Devices/Huawei/template_huawei_oceanstor_sx900_hardware)
            * **Template HUAWEI OceanStor Sx900 Hardware**<p>The template was presented as a zip archive</p>
        * [template_huawei_oceanstore](Storage_Devices/Huawei/template_huawei_oceanstore)
            * **Template Huawei OceanStor Rest-API v2**
    * [IBM](Storage_Devices/IBM)
        * [template_ibm_storwize_and_other_storages_monitoring_via_cim_wbem](Storage_Devices/IBM/template_ibm_storwize_and_other_storages_monitoring_via_cim_wbem)
            * **Storage Pystormon**
        * [template_ibm_storwize_v3700](Storage_Devices/IBM/template_ibm_storwize_v3700)
            * **Template IBM-Storwize-3700 CLI v2**
        * [template_ibm_storwize_v7000](Storage_Devices/IBM/template_ibm_storwize_v7000)
            * **IBM SW 7k**
        * [template_ibm_xiv_storage_system](Storage_Devices/IBM/template_ibm_xiv_storage_system)
            * **Template IBM XIV Storage System**<p>Template for monitoring IBM XIV servers with pyxcli</p>
    * [Lenovo_EMC](Storage_Devices/Lenovo_EMC)
        * [template_iomega_x4-200d](Storage_Devices/Lenovo_EMC/template_iomega_x4-200d)
            * **IOMEGA ix4-200d**
        * [template_lenovo_emc_px4-200d](Storage_Devices/Lenovo_EMC/template_lenovo_emc_px4-200d)
            * **Lenovo EMC PX4-200d**
        * [template_lenovo_emc_px4-300d](Storage_Devices/Lenovo_EMC/template_lenovo_emc_px4-300d)
            * **Lenovo EMC PX4-300d**
        * [template_lenovo_ix4-200d](Storage_Devices/Lenovo_EMC/template_lenovo_ix4-200d)
            * **Lenovo ix4-200d**
        * [template_lenovoemc_px6-300d](Storage_Devices/Lenovo_EMC/template_lenovoemc_px6-300d)
            * **Template LenovoEMC px6-300d**<p>The template was presented as a zip archive</p>
        * [template_nas_lenovo_iomega_ix4-300d](Storage_Devices/Lenovo_EMC/template_nas_lenovo_iomega_ix4-300d)
            * **Lenovo ix4-300d**
        * [template_nas_lenovo_ix4-300d](Storage_Devices/Lenovo_EMC/template_nas_lenovo_ix4-300d)
            * **Template Storage Lenovo ix4-300d**
    * [NetAPP](Storage_Devices/NetAPP)
        * [template_netapp_cdot_8.3.x](Storage_Devices/NetAPP/template_netapp_cdot_8.3.x)
            * **NetApp cDot >8.3.x**<p>The template was presented as a zip archive</p>
        * [template_netapp_ontap_9.1](Storage_Devices/NetAPP/template_netapp_ontap_9.1)
            * **NETAPP_FAS_ONTAP_9.1**<p>Template Ontap 9.1</p>
        * [template_netapp_ontap_9.5](Storage_Devices/NetAPP/template_netapp_ontap_9.5)
            * **Template SNMP NetApp cDot**
        * [template_netapp_ontap_=_9.5](Storage_Devices/NetAPP/template_netapp_ontap_=_9.5)
            * **Template Module Netapp OS**
    * [Oracle](Storage_Devices/Oracle)
        * [template_oracle_storagetek_sl3000_modular_library_system_snmp](Storage_Devices/Oracle/template_oracle_storagetek_sl3000_modular_library_system_snmp)
            * **Template SNMP Oracle SL3000**
        * [template_tape_library_oracle_storagetek_sl150](Storage_Devices/Oracle/template_tape_library_oracle_storagetek_sl150)
            * **Template SNMP Tape Library Oracle StorageTek SL150**<p>Based on MIB File: STREAMLINE-TAPE-LIBRARY-MIB Created by Samuel Martins https://github.com/slunart/ https://www.linkedin.com/in/slmartins/ 2020-04-19 Version 1.0</p>
    * [QNAP](Storage_Devices/QNAP)
        * [template_qnap_(snmpv2)](Storage_Devices/QNAP/template_qnap_(snmpv2))
            * **Template SNMP QNAP**
        * [template_zabbix_2.2_qnap_nas_snmp](Storage_Devices/QNAP/template_zabbix_2.2_qnap_nas_snmp)
            * **Template SNMP QNAP NAS**
        * [template_zabbix_3.0_qnap_nas_snmp](Storage_Devices/QNAP/template_zabbix_3.0_qnap_nas_snmp)
            * **Template SNMP QNAP NAS**
        * [template_zabbix_3.4_qnap_nas_snmp](Storage_Devices/QNAP/template_zabbix_3.4_qnap_nas_snmp)
            * **Template SNMP QNAP NAS**
        * [template_zabbix_4.2_qnap_nas_snmp](Storage_Devices/QNAP/template_zabbix_4.2_qnap_nas_snmp)
            * **Template SNMP QNAP NAS**
        * [template_zabbix_5_qnap_nas_snmp](Storage_Devices/QNAP/template_zabbix_5_qnap_nas_snmp)
            * **QNAP NAS Template SNMP**
    * [QSAN](Storage_Devices/QSAN)
        * [template_qsan_xs3224](Storage_Devices/QSAN/template_qsan_xs3224)
            * **Template SNMP trap fallback**
            * **Template SNMP QSAN XS3224 Storage**<p>Template SNMP QSAN Storage</p>
            * **Template SNMP traps**
    * [ReadyNAS](Storage_Devices/ReadyNAS)
        * [template_readynas_3200_snmp](Storage_Devices/ReadyNAS/template_readynas_3200_snmp)
            * **Template SNMP ReadyNas 3200**
        * [template_readynas_monitor_via_snmp](Storage_Devices/ReadyNAS/template_readynas_monitor_via_snmp)
            * **Template SNMP ReadyNAS**
        * [template_snmp_readynas](Storage_Devices/ReadyNAS/template_snmp_readynas)
            * **Template SNMP ReadyNas**<p>NetGear ReadyNAS 102</p>
        * [template_snmp_readynas_tega](Storage_Devices/ReadyNAS/template_snmp_readynas_tega)
            * **Template SNMP ReadyNAS Tega**<p>For Netgear Ready NAS http://www.downloads.netgear.com/files/ReadyNAS/READYNAS-MIB.txt Template is used for monitoring of the disks state, disks temperature, a status of volumes and general state device. Calculated value can be unavailable the some time</p>
        * [template_zabbix_2.2_readynas_snmp](Storage_Devices/ReadyNAS/template_zabbix_2.2_readynas_snmp)
            * **Template SNMP ReadyNas**
    * [Synology](Storage_Devices/Synology)
        * [template_synology_backup_using_lld](Storage_Devices/Synology/template_synology_backup_using_lld)
            * **Halley Synology NAS Backup**<p>Is the template for the service NAS Backup. Will contain only items for discover and monitor de NAS backup instances</p>
        * [template_synology_diskstation](Storage_Devices/Synology/template_synology_diskstation)
            * **Template Synology DiskStation**
        * [template_synology_diskstation_snmpv3](Storage_Devices/Synology/template_synology_diskstation_snmpv3)
            * **Template Synology DiskStation SNMPv3**<p>Based on https://share.zabbix.com/storage-devices/synology/synology-diskstation SHA authpass and AES privpass are hardcoded DiskStationManager > Terminal SNMP > SNMP > Enable SNMPv3 set all values and set macros in Zabbix </p>
        * [template_synology_ds212](Storage_Devices/Synology/template_synology_ds212)
            * **Synology DS212**<p>The template was presented as a zip archive</p>
        * [template_synology_dsm_5+](Storage_Devices/Synology/template_synology_dsm_5+)
            * **Synology DSM 5+**<p>The template was presented as a zip archive</p>
        * [template_synology_dsm_6.2_cluster_monitoring](Storage_Devices/Synology/template_synology_dsm_6.2_cluster_monitoring)
            * **Zshare Synology Cluster**<p>Template to monitor Synology HA Solution</p>
    * [smartmontools](Storage_Devices/smartmontools)
        * [template_cross-platform_smart_monitoring_(lld,_trapper)](Storage_Devices/smartmontools/template_cross-platform_smart_monitoring_(lld,_trapper))
            * **Cross-platform SMART monitoring (LLD, Trapper)**<p>The template was presented as a zip archive</p>
        * [template_s.m.a.r.t._monitoring_with_smartmontools_(lld,trapper)](Storage_Devices/smartmontools/template_s.m.a.r.t._monitoring_with_smartmontools_(lld,trapper))
            * **S.M.A.R.T. monitoring with smartmontools (LLD,Trapper)**<p>The template was presented as a tar.gz archive</p>
        * [template_storage_device_monitoring_via_smartmontools](Storage_Devices/smartmontools/template_storage_device_monitoring_via_smartmontools)
            * **Storage Device Monitoring via Smartmontools**<p>The template was presented as a zip archive</p>
        * [template_zbx-smartmonitor](Storage_Devices/smartmontools/template_zbx-smartmonitor)
            * **zbx-smartmonitor**<p>The template was presented as a zip archive</p>
    * [template_asustor_storage_devices](Storage_Devices/template_asustor_storage_devices)
        * **Template MIB Asustor**
    * [template_avid_nexis](Storage_Devices/template_avid_nexis)
        * **Template SNMP AvidNEXIS-MIB**
    * [template_hitachi](Storage_Devices/template_hitachi)
        * **Hitachi**<p>The template was presented as a zip archive</p>
    * [template_infortrend_esds_10xx-30xx](Storage_Devices/template_infortrend_esds_10xx-30xx)
        * **Infortrend ESDS 10xx - 30xx**<p>The template was presented as a zip archive</p>
    * [template_macrosan](Storage_Devices/template_macrosan)
        * **macrosanStorage**<p>宏杉存储监控模板</p>
    * [template_nec_hydrastor](Storage_Devices/template_nec_hydrastor)
        * **NEC HYDRAstor template**<p>The template was presented as a zip archive</p>
    * [template_oceanstore_huawei_2600](Storage_Devices/template_oceanstore_huawei_2600)
        * **Template Huawei Storage OceanStor**
    * [template_overland-tandberg_neoxl_tape_libary](Storage_Devices/template_overland-tandberg_neoxl_tape_libary)
        * **Template - Other - NeoXL**
    * [template_pivot3_vstac_monitoring](Storage_Devices/template_pivot3_vstac_monitoring)
        * **Template SNMP Pivot3**
    * [template_quantum_stornext_quotas_webapi](Storage_Devices/template_quantum_stornext_quotas_webapi)
        * **Template Stornext Quota**
    * [template_seagate_nas_pro_6-bay](Storage_Devices/template_seagate_nas_pro_6-bay)
        * **Seagate Pro NAS DP6**
    * [template_storage_nbu_5240_snmp_trap](Storage_Devices/template_storage_nbu_5240_snmp_trap)
        * **Template Storage NBU 5240 SNMP Trap**
    * [template_storage_oceanstor_5500](Storage_Devices/template_storage_oceanstor_5500)
        * **Huawei Storage OceanStor 5500 LLD V**
    * [template_synology_active_backup_for_business](Storage_Devices/template_synology_active_backup_for_business)
        * **Synology Active Backup for Business**<p>The template was presented as a zip archive</p>
    * [template_tintri_storage_snmp](Storage_Devices/template_tintri_storage_snmp)
        * **Template Net Tintri SNMP**<p>Template for Trintri devices.</p>
    * [template_to_get_information_of_disks_in_lsi_controller](Storage_Devices/template_to_get_information_of_disks_in_lsi_controller)
        * **Template to get information of disks in LSI controller**<p>The template was presented as a zip archive</p>
    * [template_wd_my_cloud_ex4](Storage_Devices/template_wd_my_cloud_ex4)
        * **WD My Cloud EX4 Template**
    * [template_xsky_sds](Storage_Devices/template_xsky_sds)
        * **Template Storage XSKY XMS by HTTP**<p>Template for XMS API</p>
    * [template_zbx-disk-performance](Storage_Devices/template_zbx-disk-performance)
        * **zbx-disk-performance**<p>The template was presented as a zip archive</p>
* [Telephony](Telephony)
    * [PBX](Telephony/PBX)
        * [template_3cx_services_linux](Telephony/PBX/template_3cx_services_linux)
            * **Template 3CX Services Linux**
        * [template_alcatel_oxe](Telephony/PBX/template_alcatel_oxe)
            * **PABX**<p>Model for PBX OXE R9.1 or greater, discovery: "trunk" only works on OXE R12.2 Modelo para PBX OXE R9.1 ou superior, descoberta: tronco só funciona em OXE R12.2</p>
            * **PABX-TRAPS**
        * [template_asterisk](Telephony/PBX/template_asterisk)
            * **Asterisk Template**<p>The template was presented as a zip archive</p>
        * [template_asterisk_1](Telephony/PBX/template_asterisk_1)
            * **Asterisk**<p>Asterisk IP PBX template</p>
        * [template_cucm_axl_e1_callactive](Telephony/PBX/template_cucm_axl_e1_callactive)
            * **Cisco AXL MGCP monitoring**
        * [template_cucm_database_replication_state](Telephony/PBX/template_cucm_database_replication_state)
            * **Cisco AXL DataBase Replication status**
        * [template_cucm_licenserequest](Telephony/PBX/template_cucm_licenserequest)
            * **Cisco AXL License data**
        * [template_cucm_servicestatus](Telephony/PBX/template_cucm_servicestatus)
            * **Cisco AXL Feature Service Status**
        * [template_leucotron_ision](Telephony/PBX/template_leucotron_ision)
            * **Template ISION**<p>Template do PABX da Leucotron, modelo ISION IP</p>
        * [template_mitel_mivoice_business](Telephony/PBX/template_mitel_mivoice_business)
            * **Template Mitel MiVoice Business**
        * [template_mitel_mivoice_office_250](Telephony/PBX/template_mitel_mivoice_office_250)
            * **Mitel MiVoice Office 250**<p>For Mitel MiVoice Office 250 phone system, fka Mitel 5000, fka Inter-Tel. Requires access from Zabbix server to the web interface of the phone system.</p>
        * [template_s_3cx_odbc](Telephony/PBX/template_s_3cx_odbc)
            * **Templates 3CX ODBC**
        * [template_siemens_hipath](Telephony/PBX/template_siemens_hipath)
            * **Siemens HiPATH**
        * [template_siemens_hipath_3k_lld_discovery](Telephony/PBX/template_siemens_hipath_3k_lld_discovery)
            * **aa Template Siemens Hipath**
        * [template_yeastar_s100_s300_trunk_monitoring](Telephony/PBX/template_yeastar_s100_s300_trunk_monitoring)
            * **Template Yeastar S300**
    * [Phones](Telephony/Phones)
        * [template_gammu](Telephony/Phones/template_gammu)
            * **16TemplateGammuSMS**
    * [Voice_Gateways](Telephony/Voice_Gateways)
        * [template_cisco_sla_udp-jitter](Telephony/Voice_Gateways/template_cisco_sla_udp-jitter)
            * **VoIP IPSLA Discovery**
        * [template_eltex_smg](Telephony/Voice_Gateways/template_eltex_smg)
            * **Template Eltex SMG SNMPv2**
        * [template_eltex_tau](Telephony/Voice_Gateways/template_eltex_tau)
            * **Template Eltex TAU SNMPv2**
        * [template_grandstream_ht813_snmpv2](Telephony/Voice_Gateways/template_grandstream_ht813_snmpv2)
            * **Grandstream HT813 SNMPv2**<p>Simple ports and uptime checking for Grandstream HT813 gateway Be sure that you turned on SNMPv2 on device Made by http://itprofit32.ru</p>
    * [template_freeswitch](Telephony/template_freeswitch)
        * **Template_Freeswitch**
    * [template_kamailio_stats](Telephony/template_kamailio_stats)
        * **Kamailio**<p>Kamailio (kamcli) template Version: 1.0.0 Author: Neimar L. Avila - neimar.avila@gmail.com</p>
    * [template_mimosa_c5c](Telephony/template_mimosa_c5c)
        * **Template Mimosa C5c by Dzset**<p>Template para Rádio Mimosa C5c. By Dzset Tecnologia. www.dzset.com.br</p>
    * [template_net_brocade_foundry_nonstackable_snmpv3](Telephony/template_net_brocade_foundry_nonstackable_snmpv3)
        * **Template Net Brocade_Foundry Nonstackable SNMPv3**<p>The template was presented as a zip archive</p>
    * [template_si2000](Telephony/template_si2000)
        * **SI2000**<p>The template was presented as a zip archive</p>
    * [template_snmp_geral](Telephony/template_snmp_geral)
        * **Template SNMP Geral**
    * [template_snmp_huawei_roteador](Telephony/template_snmp_huawei_roteador)
        * **Template Huawei NE20S2**
    * [template_snmp_interfaces_com_descrição](Telephony/template_snmp_interfaces_com_descrição)
        * **Template SNMP Interfaces**
* [Unsorted](Unsorted)
    * [template_arp_monitoring_and_rogue_network_devices_detection](Unsorted/template_arp_monitoring_and_rogue_network_devices_detection)
        * **Template ARP Monitoring**<p>Rafael Gustavo Gassner 02/2021 This script activelly scans arp and sends to zabbix server using zabbix_sender. arp-scan should be installed and interfaces variable should be configured for your environment. You will want to run every 10 minutes or so, using crontab. First run(s) might not populate data, since LLD items are still beeing created in zabbix server. With the script and template, you will be able to: - Detect newly connected devices on the network. - Have a history of which macs were used by which ips and vice versa. - Detect if there are multiple ips associated to the same mac. - Detect if there are multiple macs associated to the same ip address. - Identify the active period on the network for each device. Since this is designed for a small environment, the trigger for new device has no recovery expression, and should be manually disabled. You can configure the "new device" trigger disabled for initial run. After that you could disable each trigger mannualy when you have recognized the new device as not beeing a rogue one. In the zabbix template, "Allowed hosts" variable should be configured for your environment in item prototypes and in discovery rule.</p>
    * [template_automatic_fuzzytime_trigger_for_zabbix_proxy](Unsorted/template_automatic_fuzzytime_trigger_for_zabbix_proxy)
        * **Auto fuzzytime trigger for Zabbix proxy**
    * [template_brrr.cz_sensors](Unsorted/template_brrr.cz_sensors)
        * **Template Humidity and temperature sensor brrr.cz**
        * **Template Temperature sensor brrr.cz**
    * [template_btc_trading](Unsorted/template_btc_trading)
        * **Template - MBTC Trading**<p>Trading using MercadoBitcoin API. Build using MBTC api documentation (https://www.mercadobitcoin.com.br/api-doc/)</p>
    * [template_calix_interface_graphs](Unsorted/template_calix_interface_graphs)
        * **calix**
    * [template_deva_smartgen_6](Unsorted/template_deva_smartgen_6)
        * **Template DEVA SmartGen 6**<p>Template for SNMP-enabled RDS coder DEVA SmartGen 6 http://www.devabroadcast.com v1.0: 2017-10-30 Roman Ermakov, r.ermakov@emg.fm</p>
    * [template_digital_devices_octopus_net](Unsorted/template_digital_devices_octopus_net)
        * **Octopus NET DD Bridge satelite mon**
    * [template_ds18b20_&_raspberrypi_(1wire)](Unsorted/template_ds18b20_&_raspberrypi_(1wire))
        * **1wire Temperature Probe**<p>Automatically finds all 1wire devices and assumes them to be temperature probes. Specifically made for DS18B20 sensor probes in combination with Raspberry Pis. Useful macros: You can assign a friendly name for the probes using the following syntax: {$PROBE:"1wire-ID"} 1wire-ID being the devices name, found under /sys/bus/w1/devices/. The set value will represent the friendly name. You also have the option to assign sensors to three different groups: 0, 1 and 2. This will modify the trigger behaviour for specific sensors. 0 is using a normal temperature range calculated for server rooms, 1 is using an extended range and 2 is disabling triggers completly. You can see the specific values in the trigger section. The macro syntax for this is similar to the friendly name: {$GROUP:"1wire-ID"}</p>
    * [template_hikvision_nvr](Unsorted/template_hikvision_nvr)
        * **Template Hikvision**
    * [template_improved_hikvision_camera](Unsorted/template_improved_hikvision_camera)
        * **Security Cameras - HikVision**<p>Based of SNMP v2 Generic</p>
    * [template_inode_psense_in_russian](Unsorted/template_inode_psense_in_russian)
        * **iNode-Sense**<p>byS</p>
    * [template_lld_script_for_sensor_type_items_(based_on_lm-sensors)](Unsorted/template_lld_script_for_sensor_type_items_(based_on_lm-sensors))
        * **LLD script for sensor type items (based on lm-sensors)**<p>The template was presented as a zip archive</p>
    * [template_mcs_hp](Unsorted/template_mcs_hp)
        * **Monitoring MCS**
    * [template_module_dahua_video_camera](Unsorted/template_module_dahua_video_camera)
        * **Dahua Video Camera**<p>A simple template based on official Dahua MIB (DAHUA-SNMP-MIB 2014-01-07)</p>
    * [template_module_generic_snmpv3](Unsorted/template_module_generic_snmpv3)
        * **Template Module Generic SNMPv3**<p>Template Module Generic version: 0.14 MIBs used: SNMPv2-MIB</p>
    * [template_module_interfaces_simple_snmpv3](Unsorted/template_module_interfaces_simple_snmpv3)
        * **Template Module Interfaces Simple SNMPv3**<p>MIBs used: IF-MIB</p>
    * [template_noisypeak_live_encoders](Unsorted/template_noisypeak_live_encoders)
        * **Noisypeak Live encoders**
    * [template_olt_fiber_homer-pon1_a_pon8](Unsorted/template_olt_fiber_homer-pon1_a_pon8)
        * **Fiberhome**
    * [template_openldap-cluster-zabbix](Unsorted/template_openldap-cluster-zabbix)
        * **Template LDAP**
    * [template_orban_8700i](Unsorted/template_orban_8700i)
        * **Template SNMP ORBAN8700-MIB - orban**<p>Generated by mib2zabbix</p>
    * [template_qct_server_snmpv2_fan_control](Unsorted/template_qct_server_snmpv2_fan_control)
        * **QCT Hardware Health**
    * [template_scopus_ird-2900](Unsorted/template_scopus_ird-2900)
        * **Template Scopus IRD-2900 SNMP Sensors**<p>Scopus IRD-2900 series SNMP status sensors. Reading QPSK received signal quality. v1.0 initial release by r.ermakov@emg.fm. v1.1 added multiplier for BER, changed some colours.</p>
    * [template_sensor_prodigital_term-1net](Unsorted/template_sensor_prodigital_term-1net)
        * **Template Sensor ProDigital Term-1Net**<p>Template para o sensor de umidade e temperatura ProDigital Term-1Net</p>
    * [template_sensor_temp_e_umidade](Unsorted/template_sensor_temp_e_umidade)
        * **Sonicwall SNMP - TZ600**<p>Template customizado para o TZ600</p>
    * [template_shelly_1pm_via_http](Unsorted/template_shelly_1pm_via_http)
        * **Template Shelly 1PM**
    * [template_snmp_asustor_nas](Unsorted/template_snmp_asustor_nas)
        * **Template Asustor NAS**<p>Asustor NAS AS1004T https://www.asustor.com/</p>
    * [template_status](Unsorted/template_status)
        * **Template Status**<p>Monitoria Status do Device -ICMP -SNMP test -Uptime By: Flavio Gomes Figueira Camacho Junior Dependency: Template Module ICMP Ping</p>
    * [template_tcp_state_count_on_linux](Unsorted/template_tcp_state_count_on_linux)
        * **Template_TCP-state-count bulkget**<p>The number of TCP sessions. Using "dependent item" net.tcp.count.master[<source port>,<dest port>] https://github.com/mutz0623/zabbix_TCP-state-count-module</p>
    * [template_telos_alliance_aero_snmp](Unsorted/template_telos_alliance_aero_snmp)
        * **Aero-1000 SNMP**<p>Template for monitoring Telos Allaince Aero devices over SNMP Capability in AERO.10/100/1000/2000/asi/soft Depends A1K-MIB.MIB.</p>
    * [template_telos_z_ip_stream_x2](Unsorted/template_telos_z_ip_stream_x2)
        * **Template SNMP Telos ZIPStream-X2**<p>Telos Z/IPStream-X2 SNMP Template. Created by Roman Ermakov r.ermakov@emg.fm v1.0 - 2019-01-29 - Initial release Usage notes: 1. Install and configure SNMP Service on your Windows server; 2. Install and activate ZIPStream software; 3. Run: C: Program Files (x86) ZIPStream X2 snmpmgr.exe register 4. Restart SNMP Service If you need the MIB, get TLSCORP-ZIPSTREAM-X2-MIB.txt from installation folder.</p>
    * [template_temperature_and_humidity_monitoring_for_zabbix_using_esp8266_and_dht11_sensors.](Unsorted/template_temperature_and_humidity_monitoring_for_zabbix_using_esp8266_and_dht11_sensors.)
        * **Template_ZBX-ESP-ENV**<p>Temperature and humidity monitoring for Zabbix using ESP8266 and DHT11 sensors.</p>
    * [template_windows_icmp_macro_discovery_active](Unsorted/template_windows_icmp_macro_discovery_active)
        * **Template Windows ICMP Macro Discovery Active**
* [Virtualization](Virtualization)
    * [Citrix](Virtualization/Citrix)
        * [template_citrix_xenserver_disk,_physical_network_and_memory](Virtualization/Citrix/template_citrix_xenserver_disk,_physical_network_and_memory)
            * **Citrix Xenserver Disk, Physical Network and Memory**<p>The template was presented as a zip archive</p>
    * [Docker](Virtualization/Docker)
        * [template_docker_for_linux](Virtualization/Docker/template_docker_for_linux)
            * **Docker for Linux**<p>The template was presented as a zip archive</p>
        * [template_docker_swarm_monitoring](Virtualization/Docker/template_docker_swarm_monitoring)
            * **Template App Docker swarm**
        * [template_harbor_services_status](Virtualization/Docker/template_harbor_services_status)
            * **Harbor**
    * [Hyper-V](Virtualization/Hyper-V)
        * [template_hyper-v_server](Virtualization/Hyper-V/template_hyper-v_server)
            * **Hyper-V Server**<p>The template was presented as a zip archive</p>
        * [template_hyper-v_with_replication_state](Virtualization/Hyper-V/template_hyper-v_with_replication_state)
            * **Hyper-V Template with Replication State**<p>The template was presented as a zip archive</p>
    * [KVM](Virtualization/KVM)
        * [template_solusvm_monitoring_via_api](Virtualization/KVM/template_solusvm_monitoring_via_api)
            * **SolusVM Monitoring via API**<p>The template was presented as a zip archive</p>
    * [Kubernetes](Virtualization/Kubernetes)
        * [template_zabbix-kube-prom](Virtualization/Kubernetes/template_zabbix-kube-prom)
            * **Template Kube by Prom API**<p>This template works out of the box as soon as Prometheus (Prometheus-operator) is available inside your cluster; it does not require any Zabbix agent installation or configuration. It allows external monitoring of the Kubernetes cluster through ingress, without any NodePort declaration. It uses the Prometheus API to create a Zabbix host for each pod available inside the Kubernetes cluster. {$PROM.API.URL} must contains the Prometheus entry point into your Kubernetes cluster. Zabbix pod hosts are created with the "Template Kube Pod by Prom API" template by default.</p>
            * **Template Kube Pod by Prom API**
            * **Template Kube Node by Prom API**<p>Official Linux template using node exporter. Known Issues: Description: node_exporter v0.16.0 renamed many metrics. CPU utilization for 'guest' and 'guest_nice' metrics are not supported in this template with node_exporter < 0.16. Disk IO metrics are not supported. Other metrics provided as 'best effort'. See https://github.com/prometheus/node_exporter/releases/tag/v0.16.0 for details. Version: below 0.16.0 Description: metric node_network_info with label 'device' cannot be found, so network discovery is not possible. Version: below 0.18 You can discuss this template or leave feedback on our forum https://www.zabbix.com/forum/zabbix-suggestions-and-feedback/387225-discussion-thread-for-official-zabbix-template-for-linux Template tooling version used: 0.34</p>
    * [Proxmox](Virtualization/Proxmox)
        * [template_proxmox_5.x_services_monitoring](Virtualization/Proxmox/template_proxmox_5.x_services_monitoring)
            * **Template Proxmox Services**
        * [template_proxmox_countainers_resources_monitoring](Virtualization/Proxmox/template_proxmox_countainers_resources_monitoring)
            * **Proxmox Countainers resources monitoring**<p>The template was presented as a zip archive</p>
        * [template_proxmox_vms_backup_status](Virtualization/Proxmox/template_proxmox_vms_backup_status)
            * **Proxmox VMs Backup Status Template**<p>The template was presented as a zip archive</p>
    * [VMware](Virtualization/VMware)
        * [template_hypervisor_esxi_vmware_datastore_monitoring](Virtualization/VMware/template_hypervisor_esxi_vmware_datastore_monitoring)
            * **Template Virt VMware Hypervisor ESXi - Andre Bello**
        * [template_improved_virt_vmware_hypervisor](Virtualization/VMware/template_improved_virt_vmware_hypervisor)
            * **Template Virt VMware Hypervisor**
        * [template_snmp_check_for_vcenter_6.7_(vcsa_6.7)](Virtualization/VMware/template_snmp_check_for_vcenter_6.7_(vcsa_6.7))
            * **vCenter_SNMP-VMWARE_VCSA_6.7**<p>vCenter 6.7 U1 Build 10244745</p>
        * [template_snmp_check_vcenter](Virtualization/VMware/template_snmp_check_vcenter)
            * **SNMP-VMWARE-Supervision_SNMPv2_vCenter**<p>Check host vCenter with SNMP. /! Must be vCenter 6.0.2a or later /! </p>
        * [template_snmp_check_vcenter_(vcsa_6.5)](Virtualization/VMware/template_snmp_check_vcenter_(vcsa_6.5))
            * **vCenter_SNMP-VMWARE_VCSA_6.5**<p>vCenter 6.5 Usage 5318154</p>
        * [template_vmware_esx](Virtualization/VMware/template_vmware_esx)
            * **Template VM VMware Guest**
            * **Template VM VMware**
            * **Template VM VMware Hypervisor**
        * [template_vmware_esxi_6.0_via_common_information_model_(cim)](Virtualization/VMware/template_vmware_esxi_6.0_via_common_information_model_(cim))
            * **VMWare ESXi 6.0 via Common Information Model (CIM)**<p>The template was presented as a zip archive</p>
        * [template_vmware_uuid_esxi_standalone](Virtualization/VMware/template_vmware_uuid_esxi_standalone)
            * **Template VM VMware UUID ESXi Standalone**
        * [template_vmware_uuid_vm_standalone](Virtualization/VMware/template_vmware_uuid_vm_standalone)
            * **Template VM VMware UUID VM Standalone**
    * [template_docker](Virtualization/template_docker)
        * **Template.Docker.ContainerDetails**<p>Monitor Docker Container Details</p>
        * **Template..Docker.OSLinux.ShortTermContainers**
    * [template_hyclops_for_zabbix](Virtualization/template_hyclops_for_zabbix)
        * **HyClops for Zabbix**<p>The template was presented as a zip archive</p>
    * [template_oraclevm](Virtualization/template_oraclevm)
        * **OracleVM**<p>The template was presented as a zip archive</p>
    * [template_zerto_replication_vpg_monitoring_for_vsphere](Virtualization/template_zerto_replication_vpg_monitoring_for_vsphere)
        * **Zerto Replication VPG monitoring for vSphere**<p>The template was presented as a zip archive</p>
* [Zabbix](Zabbix)
    * [API_Libraries](Zabbix/API_Libraries)
        * [Bash](Zabbix/API_Libraries/Bash)
            * [template_return_a_value_on_no_such_instance_](Zabbix/API_Libraries/Bash/template_return_a_value_on_no_such_instance_)
                * **Return a value on "No such instance"**<p>The template was presented as a zip archive</p>
        * [template_zabbix_graph_image_api](Zabbix/API_Libraries/template_zabbix_graph_image_api)
            * **Zabbix Graph Image API**<p>The template was presented as a zip archive</p>
    * [Icon_sets](Zabbix/Icon_sets)
        * [template_(zabbix)_icons_for_maps](Zabbix/Icon_sets/template_(zabbix)_icons_for_maps)
            * **(Zabbix) Icons for Maps**<p>The template was presented as a zip archive</p>
    * [Installers](Zabbix/Installers)
        * [template_(zabbix)_agent_windows_interative_installer](Zabbix/Installers/template_(zabbix)_agent_windows_interative_installer)
            * **(Zabbix) Agent Windows Interative Installer**<p>The template was presented as a zip archive</p>
        * [template_inno_setup_script](Zabbix/Installers/template_inno_setup_script)
            * **Inno Setup script**<p>The template was presented as a zip archive</p>
        * [template_zabbix_windows_agent_powershell_install_script](Zabbix/Installers/template_zabbix_windows_agent_powershell_install_script)
            * **Zabbix Windows Agent Powershell install script**<p>The template was presented as a zip archive</p>
    * [Notifications](Zabbix/Notifications)
        * [template_creation_ticket_in_jira](Zabbix/Notifications/template_creation_ticket_in_jira)
            * **Creation ticket in jira**<p>The template was presented as a zip archive</p>
        * [template_google_chat_media_type](Zabbix/Notifications/template_google_chat_media_type)
            * **Google Chat Media Type**<p>The template was presented as a zip archive</p>
        * [template_microsoft_kaizala-alertscript](Zabbix/Notifications/template_microsoft_kaizala-alertscript)
            * **Microsoft Kaizala - Alertscript**<p>The template was presented as a zip archive</p>
        * [template_microsoft_teams-alertscript](Zabbix/Notifications/template_microsoft_teams-alertscript)
            * **Microsoft Teams - Alertscript**<p>The template was presented as a zip archive</p>
        * [template_notification_via_asterisk](Zabbix/Notifications/template_notification_via_asterisk)
            * **Notification via asterisk**<p>The template was presented as a tar.gz archive</p>
        * [template_receiving_events,_saving_in_excel](Zabbix/Notifications/template_receiving_events,_saving_in_excel)
            * **Receiving events, saving in Excel**<p>The template was presented as a zip archive</p>
        * [template_send_events_to_telegram_via_webhook_(without_.sh_files)](Zabbix/Notifications/template_send_events_to_telegram_via_webhook_(without_.sh_files))
            * **Spectralink DECT server**
        * [template_sounds_alarms](Zabbix/Notifications/template_sounds_alarms)
            * **Sounds Alarms**<p>The template was presented as a zip archive</p>
        * [template_zabbix-line-notification](Zabbix/Notifications/template_zabbix-line-notification)
            * **Template Server Intel S5500BC IPMI**
        * [template_zabbix-line-notify](Zabbix/Notifications/template_zabbix-line-notify)
            * **Template to get information about .NET status**<p>The template was presented as a zip archive</p>
        * [template_zabbix-rocket](Zabbix/Notifications/template_zabbix-rocket)
            * **Template ArubaOS**
        * [template_zabbix-webhook-glpi](Zabbix/Notifications/template_zabbix-webhook-glpi)
            * **Zabbix-WebHook-GLPI**<p>The template was presented as a zip archive</p>
        * [template_zabbix_sms_alerts_via_d7sms](Zabbix/Notifications/template_zabbix_sms_alerts_via_d7sms)
            * **Zabbix SMS alerts via D7SMS**<p>The template was presented as a zip archive</p>
        * [template_zabbix_to_rocket.chat](Zabbix/Notifications/template_zabbix_to_rocket.chat)
            * **Zabbix to Rocket.Chat**<p>The template was presented as a zip archive</p>
        * [template_zabbix_viber_webhook_alerts](Zabbix/Notifications/template_zabbix_viber_webhook_alerts)
            * **Banwidth Monitoring with vnstat  - Includes triggers**<p>The template was presented as a zip archive</p>
    * [Provisioning_and_deploy](Zabbix/Provisioning_and_deploy)
        * [template_zabbix_manager](Zabbix/Provisioning_and_deploy/template_zabbix_manager)
            * **zabbix_manager**<p>The template was presented as a tar.gz archive</p>
    * [Tools_and_utilities](Zabbix/Tools_and_utilities)
        * [template_geoip2db_zabbix_inventory](Zabbix/Tools_and_utilities/template_geoip2db_zabbix_inventory)
            * **GeoIP2 Location Template**<p>Template for executing https://github.com/mjtrangoni/geoip2_zabbix This populates the location to the Host Inventory</p>
        * [template_name_to_snmp_sysname](Zabbix/Tools_and_utilities/template_name_to_snmp_sysname)
            * **Name to snmp sysName**<p>The template was presented as a zip archive</p>
        * [template_oid2valuemapping](Zabbix/Tools_and_utilities/template_oid2valuemapping)
            * **oid2valuemapping**<p>The template was presented as a zip archive</p>
        * [template_validate_session_key](Zabbix/Tools_and_utilities/template_validate_session_key)
            * **check if session key is valid api**<p>You may need to obtain a new session key. Replace user 'Admin' and password 'zabbix' curl -s -X POST http://127.0.0.1/api_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{ "jsonrpc ": "2.0 ", "method ": "user.login ", "params ":{ "user ": "Admin ", "password ": "zabbix "}, "id ":1}" | grep -E -o "([0-9a-f]{32,32})" curl -s -X POST http://127.0.0.1/zabbix/api_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{ "jsonrpc ": "2.0 ", "method ": "user.login ", "params ":{ "user ": "Admin ", "password ": "zabbix "}, "id ":1}" | grep -E -o "([0-9a-f]{32,32})"</p>
        * [template_zabbix_backup_script](Zabbix/Tools_and_utilities/template_zabbix_backup_script)
            * **Zabbix Backup Script**<p>The template was presented as a zip archive</p>
        * [template_zabbix_hostgroup_extract_tool](Zabbix/Tools_and_utilities/template_zabbix_hostgroup_extract_tool)
            * **Zabbix HostGroup Extract tool**<p>The template was presented as a zip archive</p>
        * [template_zabbix_mailserver](Zabbix/Tools_and_utilities/template_zabbix_mailserver)
            * **Zabbix Mailserver Template**<p>The template was presented as a tar.gz archive</p>
        * [template_zc(1)._zabbix_command_line_tools](Zabbix/Tools_and_utilities/template_zc(1)._zabbix_command_line_tools)
            * **zc(1). Zabbix command line tools**<p>The template was presented as a tar.gz archive</p>
    * [Web_Addons](Zabbix/Web_Addons)
        * [template_zabbix_integrate_with_keycloak[_zbxnext-4640]](Zabbix/Web_Addons/template_zabbix_integrate_with_keycloak[_zbxnext-4640])
            * **zabbix integrate with keycloak[:ZBXNEXT-4640]**<p>The template was presented as a zip archive</p>
        * [template_zabbix_use_multiple_application](Zabbix/Web_Addons/template_zabbix_use_multiple_application)
            * **Zabbix_use_multiple_application**<p>The template was presented as a zip archive</p>
        * [template_zabbix_wallboard](Zabbix/Web_Addons/template_zabbix_wallboard)
            * **Zabbix Wallboard**<p>The template was presented as a tar.gz archive</p>
        * [template_zabbix_wallboard-ui_module](Zabbix/Web_Addons/template_zabbix_wallboard-ui_module)
            * **Zabbix Wallboard - UI Module**<p>The template was presented as a tar.gz archive</p>
    * [template_app_zabbix_processes_memory_usage](Zabbix/template_app_zabbix_processes_memory_usage)
        * **Template App Zabbix processes memory usage**<p>Template requires the following utilities to be available on the Agent host: - pgrep - egrep - sed - jq</p>
    * [template_automatically_register_an_active_zabbix_proxy](Zabbix/template_automatically_register_an_active_zabbix_proxy)
        * **Auto register an active Zabbix proxy**<p>prxid=$(/usr/bin/curl -sk {$Z_API_PHP} -X POST -H "Content-Type: application/json" -d ' { "jsonrpc": "2.0", "method": "proxy.create", "params": { "host": "{EVENT.TAGS}", "status": "5" }, "auth": "{$Z_API_SESSIONID}", "id": 1 } ' | grep -o -E "[0-9]+{3,}") && /usr/bin/curl -sk {$Z_API_PHP} -X POST -H "Content-Type: application/json" -d " { "jsonrpc ": "2.0 ", "method ": "host.create ", "params ": { "host ": "{EVENT.TAGS} ", "interfaces ": [ { "type ": 1, "main ": 1, "useip ": 1, "ip ": "127.0.0.1 ", "dns ": " ", "port ": "10050 " } ], "groups ": [ { "groupid ": "4 " } ], "templates ": [ { "templateid ": "10048 " } ], "proxy_hostid ": "$prxid " }, "auth ": "{$Z_API_SESSIONID} ", "id ": 1 } " && /usr/sbin/zabbix_server -R config_cache_reload && /usr/bin/sleep 20 && /usr/bin/curl -sk {$Z_API_PHP} -X POST -H "Content-Type: application/json" -d ' { "jsonrpc": "2.0", "method": "event.acknowledge", "params": { "eventids": "{EVENT.ID}", "action": 1, "message": "Problem resolved." }, "auth": "{$Z_API_SESSIONID}", "id": 1 } '</p>
    * [template_check_availability_zabbix_agent](Zabbix/template_check_availability_zabbix_agent)
        * **Template TCP Zabbix Agent**<p>Simple template to check the Zabbix Agent Service on server This template uses "Simple Check" of Zabbix (ping and tcp control). by Federico Coppola</p>
    * [template_dhcpd-pools_shared_network_monitoring](Zabbix/template_dhcpd-pools_shared_network_monitoring)
        * **DHCPD Pools data**<p>Template that use dhcpd-pools ( package avail on EPEL or http://dhcpd-pools.sourceforge.net ) to monitor DHCPD Pools Status</p>
    * [template_dvr_intelbras_mhdx_1116](Zabbix/template_dvr_intelbras_mhdx_1116)
        * **DVR Intelbras MHDX 1116**<p>The template was presented as a zip archive</p>
    * [template_maintain_zabbix_api_session_id_in_a_global_level](Zabbix/template_maintain_zabbix_api_session_id_in_a_global_level)
        * **Check if Zabbix session key is valid via API**<p>To use template create new user 'api' and set user type 'Zabbix Super Admin'. Setup global macros: {$Z_API_USER} {$Z_API_PASSWORD} {$Z_API_PHP} {$Z_API_SESSIONID} for example: {$Z_API_USER} = 'api' {$Z_API_PASSWORD} = 'jp5Jda5ABveGVEbSyJgZ' {$Z_API_PHP} = 'http://127.0.0.1/api_jsonrpc.php' Obtain new session id instantly curl -sk http://127.0.0.1/api_jsonrpc.php -X POST -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d '{"jsonrpc":"2.0","method":"user.login","params":{"user":"api","password":"jp5Jda5ABveGVEbSyJgZ"},"id":1}' | grep -E -o "([0-9a-f]{32,32})" Install session: {$Z_API_SESSIONID} = '2fdcdb96409fb134f82a2029342ce933'</p>
    * [template_meraki_access_points_status](Zabbix/template_meraki_access_points_status)
        * **Template Meraki Access Points**
    * [template_mikrotik_queue_tree_discovery](Zabbix/template_mikrotik_queue_tree_discovery)
        * **Mikrotik-QUEUETREE**
    * [template_mitrastar_gpt-2741gnac-n2_(vivo_fibra)](Zabbix/template_mitrastar_gpt-2741gnac-n2_(vivo_fibra))
        * **MitraStar - GPT-2741GNAC-N2**<p>Template roteador de fibra MitraStar - GPT-2741GNAC-N2 utilizado pela Vivo no Brasil Desenvolvido por Maurício Venzi mvenzi at gmail.com</p>
    * [template_module_http_lld_w_covid19](Zabbix/template_module_http_lld_w_covid19)
        * **Template_Module_HTTP_LLD_W_Corona_44**
    * [template_monitorar_uso_de_cpu_processo_jboss](Zabbix/template_monitorar_uso_de_cpu_processo_jboss)
        * **Monitoramento de USO DE CPU JBOSS**
    * [template_rpcm-1502](Zabbix/template_rpcm-1502)
        * **rpcm_1502_template**
    * [template_signl4_–_critical_mobile_alerting](Zabbix/template_signl4_–_critical_mobile_alerting)
        * **SIAE Custom Shell Script**<p>The template was presented as a tar.gz archive</p>
    * [template_tp-link_managed_switch_with_snmp_v3](Zabbix/template_tp-link_managed_switch_with_snmp_v3)
        * **TP-Link Managed switch with SNMP v3**<p>It is for TP-Link managed switches</p>
    * [template_windows_certificates_discover](Zabbix/template_windows_certificates_discover)
        * **Windows Certificates Discover**<p>The template was presented as a zip archive</p>
    * [template_zabbix_agent_time_is_off](Zabbix/template_zabbix_agent_time_is_off)
        * **Time is off by Zabbix agent active**
    * [template_zabbix_graph_downloader](Zabbix/template_zabbix_graph_downloader)
        * **Zabbix_Graph_Downloader**<p>The template was presented as a zip archive</p>
    * [template_zabbix_slack_alertscript](Zabbix/template_zabbix_slack_alertscript)
        * **Zabbix Slack AlertScript**<p>The template was presented as a zip archive</p>
    * [template_zabbix_trigger_excell_export](Zabbix/template_zabbix_trigger_excell_export)
        * **Zabbix trigger excell export**<p>The template was presented as a zip archive</p>
    * [template_zbx-reports](Zabbix/template_zbx-reports)
        * **zbx-report-templates**<p>The template was presented as a zip archive</p>
