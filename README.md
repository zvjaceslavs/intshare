# File structure
* [Applications](Applications)
    * [1C](Applications/1C)
        * [template_1c_enterprise](Applications/1C/template_1c_enterprise)
            * **Template 1C Enterprise**<p></p>
        * [template_monitoring_a_cluster_of_1c_servers](Applications/1C/template_monitoring_a_cluster_of_1c_servers)
            * **Monitoring a cluster of 1C servers**<p>The template was presented as a zip archive</p>
        * [template_zbx-1c-server](Applications/1C/template_zbx-1c-server)
            * **zbx-1c-server**<p>The template was presented as a zip archive</p>
    * [Anti-Virus](Applications/Anti-Virus)
        * [template_cortex_xdr](Applications/Anti-Virus/template_cortex_xdr)
            * **Template App Cortex XDR**<p></p>
        * [template_kaspersky](Applications/Anti-Virus/template_kaspersky)
            * **Template App Kaspersky**<p></p>
        * [template_kaspersky_security_center_11](Applications/Anti-Virus/template_kaspersky_security_center_11)
            * **SNMP Kaspersky Security Center 11**<p></p>
    * [Backup](Applications/Backup)
        * [template_arcserve_udp_vm_backup_jobs](Applications/Backup/template_arcserve_udp_vm_backup_jobs)
            * **Template_Arcserve UDP VM Backup Check**<p></p>
        * [template_asigra_backup_snmp_traps](Applications/Backup/template_asigra_backup_snmp_traps)
            * **Asigra Backup SNMP Traps**<p></p>
        * [template_backuppc_monitoring](Applications/Backup/template_backuppc_monitoring)
            * **Template App BackupPC by Zabbix agent**<p>The template to monitor BackupPC metrics API by Zabbix agent without need for extra scripts on server. Template Version v0.0.1 - Evren Yurtesen Tested on Zabbix5 and BackupPC 4.4.1 (needs updated metrics)</p>
        * [template_bareos](Applications/Backup/template_bareos)
            * **Bareos**<p>The template was presented as a zip archive</p>
        * [template_nakivo_backup_&_replication](Applications/Backup/template_nakivo_backup_&_replication)
            * **Template Nakivo**<p></p>
        * [template_restic_backup](Applications/Backup/template_restic_backup)
            * **Template restic backup by Zabbix agent**<p></p>
            * **Template restic backup by Zabbix agent active**<p></p>
        * [template_sap_backup_tenant_systemdb](Applications/Backup/template_sap_backup_tenant_systemdb)
            * **Template SAP Backup**<p></p>
        * [template_symantec_backup_exec_jobs_(russian)](Applications/Backup/template_symantec_backup_exec_jobs_(russian))
            * **Symantec Backup Exec Jobs (Russian)**<p>The template was presented as a zip archive</p>
        * [template_tsm_client_scheduler_service](Applications/Backup/template_tsm_client_scheduler_service)
            * **Template App TSM Client Scheduler**<p></p>
        * [template_tsm_journal_service](Applications/Backup/template_tsm_journal_service)
            * **Template App TSM Journal Service**<p></p>
        * [template_veeam_agents_for_microsoft_windows](Applications/Backup/template_veeam_agents_for_microsoft_windows)
            * **Template VEEAM-Agents**<p></p>
        * [template_veeam_b&r_license_status](Applications/Backup/template_veeam_b&r_license_status)
            * **Veeam B&R License Status**<p>The template was presented as a zip archive</p>
        * [template_veeam_backup_&_replication_by_smtp](Applications/Backup/template_veeam_backup_&_replication_by_smtp)
            * **Template VEEAM SMTP trapper**<p></p>
        * [template_veritas_symantec_backup_exec_server](Applications/Backup/template_veritas_symantec_backup_exec_server)
            * **Template Backup Exec Server**<p>Veritas/Simantec Backup Exec Server template All checks executes with T-SQL, so you must configure Zabbix to use FreeTDS for MS SQL Server. Backup Jobs ODBC LLD rules: - Backup Exec Windows Service - Backup Exec Jobs (FULL) - Backup Exec Jobs (INCREMENTAL) Two rules needs for creating triggers with different severity levels for Full job types and Incremental job types. Macroses {$BE.USER} and {$BE.PASSWORD} must be set on template or host level before usage. These are username and password to connect to BEDB database. LLD returns {#JOB.TYPE} macros, containig 'FULL' or 'INCR' string to determine backup job type. On database level it's: 16777216 - INCR 16973824 - FULL Documentation will be available soon on my GitHub page (https://github.com/asand3r).</p>
        * [template_zabbix_backups](Applications/Backup/template_zabbix_backups)
            * **Zabbix backup templates**<p>The template was presented as a zip archive</p>
    * [Bug and issue tracking](Applications/Bug and issue tracking)
        * [template_jira_monitoring](Applications/Bug and issue tracking/template_jira_monitoring)
            * **Jira monitoring**<p>The template was presented as a zip archive</p>
    * [Cluster](Applications/Cluster)
        * [template_corosync_status](Applications/Cluster/template_corosync_status)
            * **CoroSync-Ring-0**<p></p>
        * [template_monitoring_citrix_xenserver_host_and_vms_based_on_python_xenapi](Applications/Cluster/template_monitoring_citrix_xenserver_host_and_vms_based_on_python_xenapi)
            * **Monitoring Citrix XENSERVER Host and VMs based on Python XENApi**<p>The template was presented as a zip archive</p>
        * [template_monitoring_xenserver_xcp_host_and_vms-python](Applications/Cluster/template_monitoring_xenserver_xcp_host_and_vms-python)
            * **Monitoring XenServer/XCP Host and VMs - Python**<p>The template was presented as a zip archive</p>
        * [template_nomad_daemon_monitoring](Applications/Cluster/template_nomad_daemon_monitoring)
            * **Nomad daemon monitoring**<p>The template was presented as a zip archive</p>
        * [template_oracle_exadata](Applications/Cluster/template_oracle_exadata)
            * **Template ILOM ORACLE SRV X8-2 SNMP Trap**<p>Exadata Database Machine X8-2</p>
    * [Clustered File Systems](Applications/Clustered File Systems)
        * [template_glusterfs_discovery](Applications/Clustered File Systems/template_glusterfs_discovery)
            * **Gluster Storage**<p></p>
    * [DNS](Applications/DNS)
        * [template_()_zone_dns_server](Applications/DNS/template_()_zone_dns_server)
            * **(Template) Zone DNS Server**<p>The template was presented as a zip archive</p>
        * [template_app_powerdns_dnsdist](Applications/DNS/template_app_powerdns_dnsdist)
            * **App PowerDNS dnsdist**<p>Self-contained Zabbix template to get information about PowerDNS dnsdist. Source: https://github.com/frei-style/zabbix-powerdns-dnsdist-template/</p>
        * [template_bind_recursive_queries](Applications/DNS/template_bind_recursive_queries)
            * **Template Bind queries**<p>/etc/zabbix/zabbix_agentd.d/userparameter_bind.conf: UserParameter=bind.tcpcl,/bin/cat /tmp/namedtcp.log UserParameter=bind.udpcl,/bin/cat /tmp/namedudp.log --------------- cron every 30 sec: /var/spool/cron/root: SHELL=/bin/sh PATH=/sbin:/bin:/usr/sbin:/usr/bin 0-59 * * * * /etc/zabbix/custom/named.sh 0-59 * * * * ( sleep 30; /etc/zabbix/custom/named.sh ) /etc/zabbix/custom/named.sh: #!/bin/bash /usr/local/named/sbin/rndc status > /tmp/rndcstatus cat /tmp/rndcstatus | grep tcp | awk '{ print $3 }' | cut -d '/' -f 1 > /tmp/namedtcp.log cat /tmp/rndcstatus | grep recursive | awk '{ print $3 }' | cut -d '/' -f 1 > /tmp/namedudp.log ----------------------------- add key for rndc in config of named</p>
        * [template_bind_stat](Applications/DNS/template_bind_stat)
            * **DNS**<p></p>
        * [template_knot_resolver](Applications/DNS/template_knot_resolver)
            * **Template Knot Resolver Statistics**<p>Collects statistic values from Knot Resolver</p>
        * [template_net.dns.perf](Applications/DNS/template_net.dns.perf)
            * **net.dns.perf**<p>DNS応答時間測定</p>
        * [template_pihole_daemon_check](Applications/DNS/template_pihole_daemon_check)
            * **pihole-FTL**<p>pihole-FTL [zabbix active agent] check status pihole-FTL service if not "start" send alarm triger</p>
    * [Excel Export](Applications/Excel Export)
        * [template_nexus_3xxx](Applications/Excel Export/template_nexus_3xxx)
            * **NEXUS 3xxx**<p>A template to monitor nexus switch via SNMP</p>
    * [Firewall](Applications/Firewall)
        * [template_fail2ban](Applications/Firewall/template_fail2ban)
            * **Template Fail2ban**<p></p>
        * [template_forcepoint_ngfw](Applications/Firewall/template_forcepoint_ngfw)
            * **Template Forcepoint NGFW**<p>The template was presented as a zip archive</p>
        * [template_vipnet_ids_snmpv2](Applications/Firewall/template_vipnet_ids_snmpv2)
            * **ViPNet IDS SNMPv2 template**<p>ViPNet IDS SNMPv2 template</p>
        * [template_windows_firewall](Applications/Firewall/template_windows_firewall)
            * **Windows Firewall**<p>The template was presented as a zip archive</p>
    * [High Availability (HA)](Applications/High Availability (HA))
        * [template_haproxy_using_socket](Applications/High Availability (HA)/template_haproxy_using_socket)
            * **HAProxy**<p></p>
        * [template_keepalived_snmp](Applications/High Availability (HA)/template_keepalived_snmp)
            * **Keepalived SNMP**<p>The template was presented as a zip archive</p>
        * [template_linux_virtual_server_statictics](Applications/High Availability (HA)/template_linux_virtual_server_statictics)
            * **Linux Virtual Server statictics**<p>The template was presented as a zip archive</p>
        * [template_maxscale_script_discovery](Applications/High Availability (HA)/template_maxscale_script_discovery)
            * **MaxScale Script Discovery**<p>The template was presented as a zip archive</p>
        * [template_maxscale_scriptless_discovery](Applications/High Availability (HA)/template_maxscale_scriptless_discovery)
            * **Maxscale scriptless discovery**<p>The template was presented as a zip archive</p>
        * [template_traefik_daemon_monitoring](Applications/High Availability (HA)/template_traefik_daemon_monitoring)
            * **Traefik daemon monitoring**<p>The template was presented as a zip archive</p>
    * [Java Application](Applications/Java Application)
        * [template_app_generic_java_jmx_with_metaspace](Applications/Java Application/template_app_generic_java_jmx_with_metaspace)
            * **Template App Generic Java JMX**<p></p>
        * [template_glassfish_webserver](Applications/Java Application/template_glassfish_webserver)
            * **Template App Glassfish server.jvm**<p></p>
        * [template_jvm_and_g1_gc_monitoring_with_jmx](Applications/Java Application/template_jvm_and_g1_gc_monitoring_with_jmx)
            * **Template JVM Generic**<p></p>
    * [Mail servers](Applications/Mail servers)
        * [template_cisco_esa_(_ironport_)_additional_monitoring](Applications/Mail servers/template_cisco_esa_(_ironport_)_additional_monitoring)
            * **ESA-CISCO XML Status**<p></p>
        * [template_exchange_2010_client_access_performance_monitoring_(rus)](Applications/Mail servers/template_exchange_2010_client_access_performance_monitoring_(rus))
            * **Template Exchange Mailbox Servers_RU**<p></p>
        * [template_exchange_2010_client_access_performance_monitoring_(rus)_1](Applications/Mail servers/template_exchange_2010_client_access_performance_monitoring_(rus)_1)
            * **Template Exchange Mailbox Servers_RU**<p></p>
        * [template_exchange_2016-mailboxes](Applications/Mail servers/template_exchange_2016-mailboxes)
            * **Exchange 2016 - Mailboxes**<p>The template was presented as a zip archive</p>
        * [template_exchange_2016-services](Applications/Mail servers/template_exchange_2016-services)
            * **Template Microsoft Exchange Server 2016 - Services**<p></p>
        * [template_exchange_server](Applications/Mail servers/template_exchange_server)
            * **Exchange Server**<p>The template was presented as a zip archive</p>
        * [template_exchange_server_2016_performance_monitoring](Applications/Mail servers/template_exchange_server_2016_performance_monitoring)
            * **Template Exchange 2016**<p></p>
        * [template_exim_stats](Applications/Mail servers/template_exim_stats)
            * **exim stats**<p>The template was presented as a zip archive</p>
        * [template_fortinet_fortimail](Applications/Mail servers/template_fortinet_fortimail)
            * **Template Fortimail 60D**<p></p>
        * [template_mdaemon_fr](Applications/Mail servers/template_mdaemon_fr)
            * **Template App MDaemon**<p></p>
        * [template_mdaemon_rus](Applications/Mail servers/template_mdaemon_rus)
            * **Template App MDaemon**<p></p>
        * [template_monitor_axigen_with_zabbix](Applications/Mail servers/template_monitor_axigen_with_zabbix)
            * **Template App Axigen-Services**<p>Axigen template</p>
        * [template_zimbra_collaboration](Applications/Mail servers/template_zimbra_collaboration)
            * **Template Zimbra**<p></p>
        * [template_zimbra_statistic](Applications/Mail servers/template_zimbra_statistic)
            * **Zimbra Statistic Template**<p>The template was presented as a zip archive</p>
        * [template_zimbra_zmcontrol_status](Applications/Mail servers/template_zimbra_zmcontrol_status)
            * **Template Zimbra**<p></p>
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
    * [Monitoring System](Applications/Monitoring System)
        * [template_()_zabbix_server_housekeeper_monitor](Applications/Monitoring System/template_()_zabbix_server_housekeeper_monitor)
            * **(Template) Zabbix Server Housekeeper Monitor**<p>The template was presented as a zip archive</p>
        * [template_bcmstat_for_raspberry_pi](Applications/Monitoring System/template_bcmstat_for_raspberry_pi)
            * **Template App bcmstat**<p>Monitoring bcmstat 0.5.4 or greater. https://github.com/MilhouseVH/bcmstat</p>
        * [template_cisco_prime_central](Applications/Monitoring System/template_cisco_prime_central)
            * **Cisco Prime Central**<p>The template was presented as a zip archive</p>
        * [template_get_nagiostats](Applications/Monitoring System/template_get_nagiostats)
            * **Template App Nagios stats**<p></p>
        * [template_graylog_node_monitoring_using_zabbix](Applications/Monitoring System/template_graylog_node_monitoring_using_zabbix)
            * **Template Graylog: Nodes**<p></p>
        * [template_junos_space](Applications/Monitoring System/template_junos_space)
            * **Junos Space**<p></p>
        * [template_nec_pnmsj](Applications/Monitoring System/template_nec_pnmsj)
            * **NEC PNMSj**<p>The template was presented as a zip archive</p>
        * [template_ozeki_sms_gateway](Applications/Monitoring System/template_ozeki_sms_gateway)
            * **8TemplateOzeki**<p></p>
        * [template_proximvision_nms](Applications/Monitoring System/template_proximvision_nms)
            * **ProximVision NMS**<p></p>
        * [template_zabbix_monitor_housekeeper](Applications/Monitoring System/template_zabbix_monitor_housekeeper)
            * **Template Housekeeping Metrics**<p>Language: English Autor: Bernardo Lankheet Blog: www.bernardolankheet.com.br Repositorio: https://github.com/bernardolankheet/Zabbix-Monitor-Housekeeper</p>
    * [NFS](Applications/NFS)
        * [template_nfs_module](Applications/NFS/template_nfs_module)
            * **NFS Template Module**<p>The template was presented as a zip archive</p>
    * [NTP](Applications/NTP)
        * [template_chrony_accuracy](Applications/NTP/template_chrony_accuracy)
            * **Template App Chrony Service**<p></p>
        * [template_chrony_accuracy_1](Applications/NTP/template_chrony_accuracy_1)
            * **chronyTemplate**<p></p>
        * [template_chrony_accuracy_english](Applications/NTP/template_chrony_accuracy_english)
            * **chronyTemplate**<p></p>
        * [template_chrony_accuracy_japanese](Applications/NTP/template_chrony_accuracy_japanese)
            * **chronyテンプレート**<p></p>
        * [template_ntp_accuracy](Applications/NTP/template_ntp_accuracy)
            * **NTP[Remote]**<p></p>
            * **NTP**<p></p>
        * [template_ntp_accuracy_japanese](Applications/NTP/template_ntp_accuracy_japanese)
            * **NTPテンプレート（リモート）**<p></p>
            * **NTPテンプレート**<p></p>
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
            * **Template APC NetBotz Rack Monitor 200**<p></p>
            * **Template APC NetBotz Rack Monitor 250**<p></p>
        * [template_needrestart](Applications/Others/template_needrestart)
            * **Template App Needrestart**<p></p>
        * [template_okta_ad_agent_status](Applications/Others/template_okta_ad_agent_status)
            * **OKTA AD Agent Healthcheck**<p></p>
        * [template_openvpn_discovery_of_all_service_instances](Applications/Others/template_openvpn_discovery_of_all_service_instances)
            * **OpenVPN discovery of all service instances**<p>The template was presented as a zip archive</p>
        * [template_openvpn_for_thevpncompany](Applications/Others/template_openvpn_for_thevpncompany)
            * **Template OpenVPN**<p>Template to monitor VPN Services according to the Open Source configuration provided at https://thevpncompany.com.au The VPN Company provides the source code to create an end-to-end VPN Company.</p>
            * **Template VPN Server**<p>Template to monitor VPN Services according to the Open Source configuration provided at https://thevpncompany.com.au The VPN Company provides the source code to create an end-to-end VPN Company.</p>
        * [template_sap_process](Applications/Others/template_sap_process)
            * **Template SAP Availability Linux**<p></p>
        * [template_sdelete_utility](Applications/Others/template_sdelete_utility)
            * **SDelete utility**<p>The template was presented as a zip archive</p>
        * [template_tacacs_service](Applications/Others/template_tacacs_service)
            * **Template App TACACS Service**<p></p>
        * [template_trassir_cctv_dvr_sdk](Applications/Others/template_trassir_cctv_dvr_sdk)
            * **Trassir-server**<p></p>
        * [template_veeam_backup](Applications/Others/template_veeam_backup)
            * **Veeam Backup**<p>The template was presented as a zip archive</p>
        * [template_websphere_mq_for_mswin](Applications/Others/template_websphere_mq_for_mswin)
            * **WebSphere MQ for MSWin**<p>The template was presented as a zip archive</p>
        * [template_wireguard_vpn](Applications/Others/template_wireguard_vpn)
            * **Template App WireGuard**<p></p>
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
            * **GG_pihole**<p></p>
    * [Queue managers](Applications/Queue managers)
        * [template_activemq_jmx](Applications/Queue managers/template_activemq_jmx)
            * **Template App ActiveMQ JMX**<p></p>
        * [template_activemq_jmx_discovery](Applications/Queue managers/template_activemq_jmx_discovery)
            * **Template JMX ActiveMQ**<p></p>
        * [template_ibm_mq-agent_module](Applications/Queue managers/template_ibm_mq-agent_module)
            * **IBM MQ - agent module**<p>The template was presented as a zip archive</p>
        * [template_kafka_jmx_discovery](Applications/Queue managers/template_kafka_jmx_discovery)
            * **Template App Kafka**<p></p>
        * [template_microsoft_message_queue_monitor_for_zabbix](Applications/Queue managers/template_microsoft_message_queue_monitor_for_zabbix)
            * **Microsoft Message Queue Monitor for Zabbix**<p>The template was presented as a zip archive</p>
    * [Security](Applications/Security)
        * [template_canary_files_monitoring](Applications/Security/template_canary_files_monitoring)
            * **Template Canary**<p></p>
        * [template_cve-2016-0728_check](Applications/Security/template_cve-2016-0728_check)
            * **cve-2016-0728**<p></p>
        * [template_devline._windows._мониторинг_наличия_изображений_с_камер](Applications/Security/template_devline._windows._мониторинг_наличия_изображений_с_камер)
            * **DEVLINE**<p></p>
        * [template_trassir_cctv_monitoring](Applications/Security/template_trassir_cctv_monitoring)
            * **Trassir CCTV Monitoring Template**<p>The template was presented as a zip archive</p>
    * [Skype](Applications/Skype)
        * [template_skype_for_business](Applications/Skype/template_skype_for_business)
            * **Skype For Business**<p>The template was presented as a zip archive</p>
    * [TV Broadcasting](Applications/TV Broadcasting)
        * [template_service_hls](Applications/TV Broadcasting/template_service_hls)
            * **Template Service HLS**<p></p>
        * [template_vizrt_viz_engine_snmp](Applications/TV Broadcasting/template_vizrt_viz_engine_snmp)
            * **Template Vizrt SNMP**<p></p>
    * [Web-servers](Applications/Web-servers)
        * [template_apache_base](Applications/Web-servers/template_apache_base)
            * **Apache base**<p>The template was presented as a zip archive</p>
        * [template_apache_http_server](Applications/Web-servers/template_apache_http_server)
            * **Template Apache**<p></p>
        * [template_apache_http_server_on_linux](Applications/Web-servers/template_apache_http_server_on_linux)
            * **Apache HTTP Server on Linux**<p>The template was presented as a zip archive</p>
        * [template_apache_solr_statistics_via_json](Applications/Web-servers/template_apache_solr_statistics_via_json)
            * **Template App Solr**<p>Template for monitoring Solr using json statistics. http://{USERNAME}@{PASSWORD}:{HOST.CONN}/solr/admin/metrics</p>
        * [template_app_nginx_for_zabbix_3.4.x](Applications/Web-servers/template_app_nginx_for_zabbix_3.4.x)
            * **Template App Nginx by Alex Gluck**<p></p>
        * [template_domain_registration_expiration_and_ssl_certificates_check_lld](Applications/Web-servers/template_domain_registration_expiration_and_ssl_certificates_check_lld)
            * **Template SSL check LLD**<p></p>
        * [template_fcgi_stat_getter._monitor_php-fpm_without_nginx_proxy](Applications/Web-servers/template_fcgi_stat_getter._monitor_php-fpm_without_nginx_proxy)
            * **Template App PHP-FPM**<p></p>
        * [template_immuniweb_ssl_security_test](Applications/Web-servers/template_immuniweb_ssl_security_test)
            * **Template App SSL ImmuniWeb Scan**<p>https://www.immuniweb.com/ssl/</p>
        * [template_microsoft_iis_7.5,_8.0,_8.5_and_10_services,_ports_and_performance_counters.](Applications/Web-servers/template_microsoft_iis_7.5,_8.0,_8.5_and_10_services,_ports_and_performance_counters.)
            * **Template App IIS Service**<p></p>
        * [template_microsoft_iis_8,_8.5,_10_for_rus_server](Applications/Web-servers/template_microsoft_iis_8,_8.5,_10_for_rus_server)
            * **Template App IIS Service_RUS**<p></p>
        * [template_nginx](Applications/Web-servers/template_nginx)
            * **Nginx**<p>The template was presented as a zip archive</p>
        * [template_nginx_for_zabbix_3.4.x](Applications/Web-servers/template_nginx_for_zabbix_3.4.x)
            * **Template App Nginx by Alex Gluck**<p></p>
        * [template_nginx_for_zabbix_4.0](Applications/Web-servers/template_nginx_for_zabbix_4.0)
            * **Template_NGINX_http_agent**<p></p>
        * [template_nginx_stat_getter._simple_check_for_nginx_stats.](Applications/Web-servers/template_nginx_stat_getter._simple_check_for_nginx_stats.)
            * **Template App Nginx**<p></p>
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
            * **Template App PHP-FPM**<p></p>
    * [template_apache_2_web_server_http_item](Applications/template_apache_2_web_server_http_item)
        * **Template App Apache2**<p></p>
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
        * **Template App Citrix License Sever**<p></p>
    * [template_citrix_xendesktop_7.15-delivery_controller](Applications/template_citrix_xendesktop_7.15-delivery_controller)
        * **C24_CVAD-715_Broker_v1.00**<p></p>
    * [template_citrix_xendesktop_license_server](Applications/template_citrix_xendesktop_license_server)
        * **C24_CVAD-715_CTXLicServer_v1.00**<p></p>
    * [template_covid19_monitoring_updated](Applications/template_covid19_monitoring_updated)
        * **Coronavirus - Covid19 Monitoring**<p>Getting cases from worldometers.info and plotting on Zabbix</p>
    * [template_cpu_disk_temperature_monitoring](Applications/template_cpu_disk_temperature_monitoring)
        * **CPU_disk temperature monitoring**<p>The template was presented as a zip archive</p>
    * [template_elasticsearch](Applications/template_elasticsearch)
        * **Template - App Elasticsearch Cluster new**<p></p>
    * [template_elasticsearch_2.x_cluster_&_node_monitoring](Applications/template_elasticsearch_2.x_cluster_&_node_monitoring)
        * **Elasticsearch 2.x Cluster & Node Monitoring**<p>The template was presented as a zip archive</p>
    * [template_emq_(mqtt)](Applications/template_emq_(mqtt))
        * **Template App EMQTT  Service**<p></p>
    * [template_eocortex_vms](Applications/template_eocortex_vms)
        * **Template Eocortex**<p></p>
    * [template_es_stats_zabbix_(elasticsearch_cluster_&_node_monitoring)](Applications/template_es_stats_zabbix_(elasticsearch_cluster_&_node_monitoring))
        * **es_stats_zabbix (Elasticsearch Cluster & Node Monitoring)**<p>The template was presented as a tar.gz archive</p>
    * [template_exchange_2016](Applications/template_exchange_2016)
        * **Template Microsoft Exchange Server 2016**<p></p>
    * [template_exchange_2019](Applications/template_exchange_2019)
        * **Template Microsoft Exchange Server 2019**<p></p>
    * [template_focco](Applications/template_focco)
        * **Focco**<p></p>
    * [template_internet_speed_test](Applications/template_internet_speed_test)
        * **Template - SpeedTest**<p></p>
    * [template_it_services-sla](Applications/template_it_services-sla)
        * **IT SERVICES - SLA**<p>The template was presented as a zip archive</p>
    * [template_lighttpd](Applications/template_lighttpd)
        * **Template App Lighttpd by Zabbix Agent**<p></p>
    * [template_lld_olt_zte](Applications/template_lld_olt_zte)
        * **LLD OLT ZTE**<p></p>
    * [template_logstash](Applications/template_logstash)
        * **Template App Logstash**<p></p>
    * [template_mariadb_database_partition_monitoring](Applications/template_mariadb_database_partition_monitoring)
        * **Template Zabbix DB Partitions**<p></p>
    * [template_mdaemon](Applications/template_mdaemon)
        * **Template App MDaemon**<p></p>
    * [template_mqtt_(mosquitto)_broker_monitoring](Applications/template_mqtt_(mosquitto)_broker_monitoring)
        * **Template App MQTT  Service**<p></p>
    * [template_netbackup](Applications/template_netbackup)
        * **Netbackup**<p></p>
    * [template_nextcloud_v._14_monitoring](Applications/template_nextcloud_v._14_monitoring)
        * **NextCloud v. 14 Monitoring**<p>The template was presented as a zip archive</p>
    * [template_nfs_server_and_client_mount_monitoring](Applications/template_nfs_server_and_client_mount_monitoring)
        * **NFS server and client mount monitoring**<p>The template was presented as a zip archive</p>
    * [template_nginx_plus](Applications/template_nginx_plus)
        * **Template App Nginx Plus**<p></p>
    * [template_olt_zte_c320](Applications/template_olt_zte_c320)
        * **OLT ZTE C320**<p></p>
    * [template_pi-hole_api](Applications/template_pi-hole_api)
        * **Template App Pi-Hole**<p>Domains Blocked DNS Queries Today Ads Blocked Today Ads Blocked Percentage Today Clients Ever Seen Unique Clients Reply NODATA Reply NXDOMAIN Reply CNAME Reply IP</p>
    * [template_plesk_obsidian_(active)](Applications/template_plesk_obsidian_(active))
        * **Template CustomApp Plesk**<p></p>
    * [template_pm2-zabbix](Applications/template_pm2-zabbix)
        * **pm2-zabbix**<p>The template was presented as a zip archive</p>
    * [template_qbittorrent](Applications/template_qbittorrent)
        * **Template qBittorrent**<p>Template de monitoramento da API do qBittorrent</p>
    * [template_quest_rapidrecovery](Applications/template_quest_rapidrecovery)
        * **Quest RapidRecovery Template**<p>The template was presented as a zip archive</p>
    * [template_rocket_chat_statistics](Applications/template_rocket_chat_statistics)
        * **Template App Rocket Chat**<p></p>
    * [template_s_emby](Applications/template_s_emby)
        * **Template Emby**<p></p>
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
        * **Template UPS HDS**<p></p>
    * [template_varnish](Applications/template_varnish)
        * **Template App Varnish by Zabbix agent**<p>Simple template for the Varnish cache using results from the varnishstat command. Ensure that "EnableRemoteCommands=1" is set in the host's agent config file.</p>
    * [template_varnish_cache_usage_monitoring](Applications/template_varnish_cache_usage_monitoring)
        * **Varnish cache usage monitoring**<p>The template was presented as a zip archive</p>
    * [template_weblogic_health_check_jmx](Applications/template_weblogic_health_check_jmx)
        * **WeblogicHealth**<p></p>
    * [template_wildfly_eap_jboss_discovery](Applications/template_wildfly_eap_jboss_discovery)
        * **Template JMX Wildlfy**<p>Install and info: https://github.com/hermanekt/Zabbix_wildfly_eap_jboss_monitoring https://share.zabbix.com/official-templates/wildfly-eap-jboss-discovery Version 1.2</p>
    * [template_zabbix-apt](Applications/template_zabbix-apt)
        * **Template APT Debian**<p></p>
    * [template_zabbix_for_wsus](Applications/template_zabbix_for_wsus)
        * **Zabbix template for WSUS**<p>The template was presented as a zip archive</p>
    * [template_zabbix_kafka_connector](Applications/template_zabbix_kafka_connector)
        * **Template Kafka Connector**<p></p>
* [Cloud](Cloud)
    * [AWS](Cloud/AWS)
        * [template_aws_cloudwatch_via_docker_wrapper_with_http_agent](Cloud/AWS/template_aws_cloudwatch_via_docker_wrapper_with_http_agent)
            * **AWS CloudWatch via Docker Wrapper**<p>Monitorizacion de AWS via CloudWatch utilizando un Wrapper desarrollado en NodeJS.</p>
    * [template_cloudflared_tunnel_metrics_(cloudflare_argo)](Cloud/template_cloudflared_tunnel_metrics_(cloudflare_argo))
        * **Cloudflared Tunnel Metrics (Cloudflare Argo)**<p>The template was presented as a zip archive</p>
    * [template_nextcloud_monitoring_api](Cloud/template_nextcloud_monitoring_api)
        * **Template App Nextcloud Monitoring API**<p></p>
* [Databases](Databases)
    * [Apache Ignite](Databases/Apache Ignite)
        * [template_ignite_jmx_with_instancename](Databases/Apache Ignite/template_ignite_jmx_with_instancename)
            * **Template App Ignite JMX**<p></p>
    * [Microsoft SQL Server](Databases/Microsoft SQL Server)
        * [template_()_windows_sql_server](Databases/Microsoft SQL Server/template_()_windows_sql_server)
            * **(Template) Windows SQL Server**<p>The template was presented as a zip archive</p>
        * [template_app_ms_sql_database_discovery_(lld)](Databases/Microsoft SQL Server/template_app_ms_sql_database_discovery_(lld))
            * **Template App MS SQL DB Discovery**<p></p>
        * [template_app_ms_sql_default_installation_(lld)](Databases/Microsoft SQL Server/template_app_ms_sql_default_installation_(lld))
            * **Template App MS SQL Default Installation (LLD)**<p>The template was presented as a zip archive</p>
        * [template_app_ms_sql_instance_discovery_(lld)](Databases/Microsoft SQL Server/template_app_ms_sql_instance_discovery_(lld))
            * **Template App MS SQL Instance Discovery**<p></p>
        * [template_ms_sql_2012](Databases/Microsoft SQL Server/template_ms_sql_2012)
            * **Template MS SQL 2012**<p>The template was presented as a zip archive</p>
        * [template_ms_sql_server_versions_value_mapping](Databases/Microsoft SQL Server/template_ms_sql_server_versions_value_mapping)
            * **Template UPS - diogont**<p></p>
        * [template_ms_sqlserver](Databases/Microsoft SQL Server/template_ms_sqlserver)
            * **MS SQLServer**<p>The template was presented as a zip archive</p>
        * [template_ms_sqlserver_database_backup](Databases/Microsoft SQL Server/template_ms_sqlserver_database_backup)
            * **MS SQLServer Database Backup**<p>The template was presented as a zip archive</p>
        * [template_zabbix_for_microsoft_sql_server_mini](Databases/Microsoft SQL Server/template_zabbix_for_microsoft_sql_server_mini)
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
            * **Template Pyora active send**<p></p>
        * [template_oracle_db](Databases/Oracle/template_oracle_db)
            * **Template Oracle DB**<p></p>
        * [template_zabbix_oci_dbaas](Databases/Oracle/template_zabbix_oci_dbaas)
            * **Template_OCI_Dbaas**<p></p>
    * [Others](Databases/Others)
        * [template_app_elasticsearch_cluster_by_zabbix_agent](Databases/Others/template_app_elasticsearch_cluster_by_zabbix_agent)
            * **Template App Elasticsearch Cluster by Zabbix agent**<p>This is the "Zabbix agent" version of the Elasticsearch template which ships with Zabbix 5.0 - Evren Yurtesen The template to monitor Elasticsearch by Zabbix that work without any external scripts. It works with both standalone and cluster instances. The metrics are collected in one pass remotely using an HTTP agent. They are getting values from REST API _cluster/health, _cluster/stats, _nodes/stats requests. You can set {$ELASTICSEARCH.USERNAME} and {$ELASTICSEARCH.PASSWORD} macros in the template for using on the host level. If you use an atypical location ES API, don't forget to change the macros {$ELASTICSEARCH.SCHEME}, {$ELASTICSEARCH.HOST},{$ELASTICSEARCH.PORT}. You can discuss this template or leave feedback on our forum https://www.zabbix.com/forum/zabbix-suggestions-and-feedback/399473-discussion-thread-for-official-zabbix-template-for-elasticsearch Template tooling version used: 0.35</p>
        * [template_clickhouse](Databases/Others/template_clickhouse)
            * **Template_Clickhouse**<p></p>
        * [template_clickhouse_zabbix_by_altinity](Databases/Others/template_clickhouse_zabbix_by_altinity)
            * **Clickhouse**<p></p>
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
            * **REDIS**<p></p>
        * [template_redis](Databases/Redis/template_redis)
            * **Redis**<p>The template was presented as a zip archive</p>
    * [template_coleta_sinal_sfp_mikrotik](Databases/template_coleta_sinal_sfp_mikrotik)
        * **Sinal SFP Mikrotik**<p>Igor Dib</p>
    * [template_elasticsearch_cluster_by_http_for_zabbix_4.2+](Databases/template_elasticsearch_cluster_by_http_for_zabbix_4.2+)
        * **Elasticsearch Cluster by HTTP zbx 4.2**<p>The template to monitor Elasticsearch by Zabbix that work without any external scripts. It works with both standalone and cluster instances. The metrics are collected in one pass remotely using an HTTP agent. They are getting values from REST API _cluster/health, _cluster/stats, _nodes/stats requests. You can set {$ELASTICSEARCH.USERNAME} and {$ELASTICSEARCH.PASSWORD} macros in the template for using on the host level. If you use an atypical location ES API, don't forget to change the macros {$ELASTICSEARCH.SCHEME},{$ELASTICSEARCH.PORT}. Parsed manually from https://git.zabbix.com/projects/ZBX/repos/zabbix/browse/templates/app/elasticsearch_http from zabbix version 5.0 to 4.2 and add triggers</p>
    * [template_postgres_odbc_database_monitoring](Databases/template_postgres_odbc_database_monitoring)
        * **Template Postgres ODBC**<p></p>
    * [template_progress_datasul_totvs](Databases/template_progress_datasul_totvs)
        * **Banco Progress Datasul**<p>Monitoramento Banco Progress Datasul</p>
    * [template_twemproxy_(nutcracker)](Databases/template_twemproxy_(nutcracker))
        * **Template App Nutcracker**<p></p>
    * [template_zabifx.sh-informix_database](Databases/template_zabifx.sh-informix_database)
        * **zabifx.sh - Informix database**<p>The template was presented as a zip archive</p>
* [Network Appliances](Network Appliances)
    * [template_alexa](Network Appliances/template_alexa)
        * **Alexa Template**<p>The template was presented as a zip archive</p>
    * [template_balabit-shell_control_box_snmp](Network Appliances/template_balabit-shell_control_box_snmp)
        * **BALABIT-SNMPv2-Shell_Control_Box**<p></p>
    * [template_big_ip_f5-snmp-português-br](Network Appliances/template_big_ip_f5-snmp-português-br)
        * **Template Device BigIP F5**<p></p>
    * [template_bluecoat_proxyav](Network Appliances/template_bluecoat_proxyav)
        * **Template App BlueCoat AV**<p></p>
    * [template_bluecoat_proxysg](Network Appliances/template_bluecoat_proxysg)
        * **Template App BlueCoat SG**<p></p>
    * [template_checkpoint_vpn-1](Network Appliances/template_checkpoint_vpn-1)
        * **Template Checkpoint VPN-1**<p></p>
    * [template_dsm_4.1+](Network Appliances/template_dsm_4.1+)
        * **DSM 4.1+**<p>The template was presented as a zip archive</p>
    * [template_equallogic_ps6110](Network Appliances/template_equallogic_ps6110)
        * **Equallogic	PS6110**<p>The template was presented as a tar.gz archive</p>
    * [template_fiberhome_2020](Network Appliances/template_fiberhome_2020)
        * **Template SNMP OLT FiberHome**<p></p>
    * [template_ipfire_2](Network Appliances/template_ipfire_2)
        * **IPFire 2**<p>The template was presented as a zip archive</p>
    * [template_mcafee_email_gateway](Network Appliances/template_mcafee_email_gateway)
        * **Template SNMP McAfee Email Gateway (SMTP - POP3)**<p>Created by Samuel Martins 2019-04-24 Version 1.00 https://github.com/slunart/Zabbix-Templates https://www.linkedin.com/in/slmartins/</p>
    * [template_mikrotik_routeros](Network Appliances/template_mikrotik_routeros)
        * **Mikrotik RouterOS**<p>Ros Modelo dedicado (dispositivo RB) Este modelo é usado apenas para o monitoramento do sistema de roteamento RouterOS.。 By:[Suspeito]</p>
    * [template_mobotix_security_camera](Network Appliances/template_mobotix_security_camera)
        * **Template Mobotix Camera**<p></p>
    * [template_nevis_proxy](Network Appliances/template_nevis_proxy)
        * **_Template Nevis**<p></p>
    * [template_ping_module](Network Appliances/template_ping_module)
        * **Ping Template Module**<p>The template was presented as a zip archive</p>
    * [template_quagga_bgp_sessions_monitor](Network Appliances/template_quagga_bgp_sessions_monitor)
        * **Quagga BGP**<p>Template for auto-discovery bgp peers and monitor they.</p>
    * [template_rittal_pdu-7955](Network Appliances/template_rittal_pdu-7955)
        * **Template_Rittal_PDU 1Phase EN**<p>IT Infrastructure Monitoring.</p>
    * [template_snmp_firewall_kerio](Network Appliances/template_snmp_firewall_kerio)
        * **Template_SNMP_FIREWALL_KERIO_CONTROL_LLD_VERSAO-1.0**<p></p>
    * [template_snmp_firewall_kerio_control_lld_versao-0.1](Network Appliances/template_snmp_firewall_kerio_control_lld_versao-0.1)
        * **Template_SNMP_FIREWALL_KERIO_CONTROL_LLD_VERSAO-1.0**<p></p>
    * [template_sophos_utm_9_firewall_vm_appliance_&_hardware](Network Appliances/template_sophos_utm_9_firewall_vm_appliance_&_hardware)
        * **Sophos UTM 9 Firewall VM Appliance & Hardware**<p>The template was presented as a zip archive</p>
    * [template_sophos_utm_v_9.6_over_api](Network Appliances/template_sophos_utm_v_9.6_over_api)
        * **Sophos UTM v 9.6 over API**<p>The template was presented as a zip archive</p>
    * [template_sophos_xg_firewall](Network Appliances/template_sophos_xg_firewall)
        * **Template MIB XG-FIREWALL-MIB - sophos**<p></p>
    * [template_speedtest_lan_monitoring](Network Appliances/template_speedtest_lan_monitoring)
        * **Template App Speedtest LAN**<p></p>
    * [template_speedtest_wan_isp_monitoring](Network Appliances/template_speedtest_wan_isp_monitoring)
        * **Template App Speedtest WAN**<p></p>
    * [template_speedtest_wan_isp_monitoring_1](Network Appliances/template_speedtest_wan_isp_monitoring_1)
        * **Speedtest WAN ISP monitoring**<p>The template was presented as a zip archive</p>
    * [template_stormshield_firewall_appliances](Network Appliances/template_stormshield_firewall_appliances)
        * **Template SNMP StormShield**<p></p>
* [Network Devices](Network Devices)
    * [A10](Network Devices/A10)
        * [template_a10_ax_series](Network Devices/A10/template_a10_ax_series)
            * **Template_A10_AX_Series**<p></p>
        * [template_snmp_a10](Network Devices/A10/template_snmp_a10)
            * **Template SNMP A10**<p>The template was presented as a zip archive</p>
    * [Alcatel-Lucent Enterprise](Network Devices/Alcatel-Lucent Enterprise)
        * [template_alcatel-lucent_enterprise_omniswitch_aos_release_6.x](Network Devices/Alcatel-Lucent Enterprise/template_alcatel-lucent_enterprise_omniswitch_aos_release_6.x)
            * **Template Alcatel-Lucent Enterprise OmniSwitch AOS 6.x**<p></p>
        * [template_alcatel-lucent_enterprise_omniswitch_aos_release_8.x](Network Devices/Alcatel-Lucent Enterprise/template_alcatel-lucent_enterprise_omniswitch_aos_release_8.x)
            * **Template Alcatel-Lucent Enterprise OmniSwitch AOS 8.x**<p></p>
    * [Arista](Network Devices/Arista)
        * [template_arista_snmpv2_bgp4](Network Devices/Arista/template_arista_snmpv2_bgp4)
            * **Template SNMP Arista BGP4**<p></p>
    * [Aruba](Network Devices/Aruba)
        * [template_aruba_2930f_m_vsf_and_stacking_(module)](Network Devices/Aruba/template_aruba_2930f_m_vsf_and_stacking_(module))
            * **Template_HPE_Module Aruba 2930 VSF or Stacking**<p></p>
        * [template_aruba_access_point](Network Devices/Aruba/template_aruba_access_point)
            * **Template SNMP Aruba Accesspoint**<p></p>
    * [Brocade](Network Devices/Brocade)
        * [template_博科光纤交换机监控模板](Network Devices/Brocade/template_博科光纤交换机监控模板)
            * **博科光纤交换机监控模板**<p></p>
        * [template_brocade_fc](Network Devices/Brocade/template_brocade_fc)
            * **Brocade FC**<p>The template was presented as a zip archive</p>
        * [template_brocade_fc_(3.0.1)](Network Devices/Brocade/template_brocade_fc_(3.0.1))
            * **KHP-BROCADE-FC-PORT**<p></p>
        * [template_brocade_icx_mlx_fcx](Network Devices/Brocade/template_brocade_icx_mlx_fcx)
            * **Template SNMP Brocade**<p></p>
            * **Template SNMP Brocade-Copper**<p></p>
            * **Template SNMP Brocade-Fiber**<p></p>
        * [template_fiber-channel_switch-brocade_300](Network Devices/Brocade/template_fiber-channel_switch-brocade_300)
            * **BROCADE FIBER CHANNEL SWITCH**<p></p>
        * [template_net_brocade_foundry_stackable_snmpv3](Network Devices/Brocade/template_net_brocade_foundry_stackable_snmpv3)
            * **Template Net Brocade_Foundry Stackable SNMPv3**<p>The template was presented as a zip archive</p>
    * [Checkpoint](Network Devices/Checkpoint)
        * [template_checkpoint](Network Devices/Checkpoint/template_checkpoint)
            * **Template CheckPoint SNMP**<p></p>
        * [template_checkpoint_fw-1](Network Devices/Checkpoint/template_checkpoint_fw-1)
            * **Template CheckPoint FW-1**<p></p>
        * [template_checkpoint_fw-1-hardware_(3.4)](Network Devices/Checkpoint/template_checkpoint_fw-1-hardware_(3.4))
            * **Checkpoint FW-1 - Hardware (3.4)**<p>The template was presented as a zip archive</p>
        * [template_checkpoint_fw-1-identity_awareness](Network Devices/Checkpoint/template_checkpoint_fw-1-identity_awareness)
            * **Checkpoint FW-1 - Identity Awareness**<p>The template was presented as a zip archive</p>
        * [template_checkpoint_fw-1_3.4](Network Devices/Checkpoint/template_checkpoint_fw-1_3.4)
            * **Checkpoint FW-1 3.4**<p>The template was presented as a zip archive</p>
        * [template_checkpoint_fw-1_interfaces](Network Devices/Checkpoint/template_checkpoint_fw-1_interfaces)
            * **Template CheckPoint FW-1 Interfaces**<p></p>
        * [template_checkpoint_vpn-1_3.4](Network Devices/Checkpoint/template_checkpoint_vpn-1_3.4)
            * **Checkpoint VPN-1 3.4**<p>The template was presented as a zip archive</p>
    * [Cisco](Network Devices/Cisco)
        * [template_2960](Network Devices/Cisco/template_2960)
            * **2960**<p>The template was presented as a zip archive</p>
        * [template_2960g](Network Devices/Cisco/template_2960g)
            * **2960g**<p>The template was presented as a zip archive</p>
        * [template_ap_cisco_wap4410n-e](Network Devices/Cisco/template_ap_cisco_wap4410n-e)
            * **Template Cisco WAP4410N**<p></p>
        * [template_asr9006_ipv4_pool_discovery](Network Devices/Cisco/template_asr9006_ipv4_pool_discovery)
            * **Template for ASR9006 IPv4 Pool discovery**<p>Discovering pool name and vrf name from ASR9006 and represents Used & Free IP addresses Mokhtari Tce mohamadreza.mokhtari@gmail.com</p>
        * [template_catalyst_ws-c2950g-48-ei](Network Devices/Cisco/template_catalyst_ws-c2950g-48-ei)
            * **Template SNMP Cisco WS2950**<p></p>
        * [template_catalyst_ws-c3750g-24t](Network Devices/Cisco/template_catalyst_ws-c3750g-24t)
            * **Template SNMP Cisco WS3750**<p>ciscoEnvMonState{ normal(1), warning(2), critical(3), shutdown(4), notPresent(5), notFunctioning(6) }</p>
        * [template_cisco_1900](Network Devices/Cisco/template_cisco_1900)
            * **Template_Cisco_1900**<p></p>
        * [template_cisco_2960](Network Devices/Cisco/template_cisco_2960)
            * **Template_Cisco_2960**<p></p>
            * **Template_Cisco_Traps**<p></p>
            * **Template Cisco General**<p></p>
        * [template_cisco_3500](Network Devices/Cisco/template_cisco_3500)
            * **Template_Cisco_3500**<p></p>
            * **Template_Cisco_Traps**<p></p>
            * **Template Cisco General**<p></p>
        * [template_cisco_6500](Network Devices/Cisco/template_cisco_6500)
            * **Template_Cisco_6500**<p></p>
            * **Template_Cisco_Traps**<p></p>
            * **Template Cisco General**<p></p>
        * [template_cisco_7200](Network Devices/Cisco/template_cisco_7200)
            * **Template_Cisco_7200**<p></p>
            * **Template_Cisco_Traps**<p></p>
            * **Template Cisco General**<p></p>
        * [template_cisco_7513](Network Devices/Cisco/template_cisco_7513)
            * **Template_Cisco_7513**<p></p>
            * **Template_Cisco_Traps**<p></p>
            * **Template Cisco General**<p></p>
        * [template_cisco_7600](Network Devices/Cisco/template_cisco_7600)
            * **Template_Cisco_7600**<p></p>
            * **Template_Cisco_Traps**<p></p>
            * **Template Cisco General**<p></p>
        * [template_cisco_7600_health_snmp](Network Devices/Cisco/template_cisco_7600_health_snmp)
            * **Template Cisco 7600 Health SNMP**<p>Template Cisco 7600 Health -CPU -Memory -PowerSupply -PowerConsumption -Temperature -FAN -CEF By: Flavio Gomes Figueira Camacho Junior Require: Firmware / Software .IOS rp-ADVENTERPRISEK9-M 15.2(4)S4 ValueMaps .CISCO-ENVMON-MIB::CiscoEnvMonState .ENTITY-SENSORS-MIB::EntitySensorStatus .CISCO-CEF-TC-MIB::CefFailureReason Base: CISCO-ENVMON-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-ENVMON-MIB.php CISCO-MEMORY-POOL-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-MEMORY-POOL-MIB.php CISCO-PROCESS-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-PROCESS-MIB.php ENTITY-MIB.mib http://www.circitor.fr/Mibs/Html/E/ENTITY-MIB.php CISCO-ENTITY-SENSOR-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-ENTITY-SENSOR-MIB.php CISCO-ENTITY-FRU-CONTROL-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-ENTITY-FRU-CONTROL-MIB.php CISCO-CEF-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-CEF-MIB.php https://share.zabbix.com/network_devices/cisco/template-cisco-7600 External Scripts and Value Mapping on my Github: https://github.com/flaviojunior1995/Zabbix-Templates</p>
        * [template_cisco_asa](Network Devices/Cisco/template_cisco_asa)
            * **Template Cisco ASA**<p>Version 1.1.3, Release date 29.4.2020 Made by: Ville Leinonen/www.hacknetwork.org Template is tested in Zabbix 4.4 and ASA version 9.14(1) Changelog: SNMPv3 support added TODO (maybe): Interface statistic and more triggers.</p>
        * [template_cisco_asa_515](Network Devices/Cisco/template_cisco_asa_515)
            * **Template Cisco ASA 515**<p></p>
        * [template_cisco_asa_discovery](Network Devices/Cisco/template_cisco_asa_discovery)
            * **Template Cisco ASA Discovery**<p></p>
        * [template_cisco_asr1006](Network Devices/Cisco/template_cisco_asr1006)
            * **Template_Cisco_Traps**<p></p>
            * **Template Cisco General**<p></p>
            * **Template_Cisco_ASR_1006**<p></p>
        * [template_cisco_asr9k_health](Network Devices/Cisco/template_cisco_asr9k_health)
            * **Template Cisco ASR 9K Health SNMP**<p>Template Cisco ASR 9k Health -CPU -Memory -Power Supply -Temperature ( RSP e LC ) -FAN ( FAN and FANTray ) -Power Consumption By: Flavio Gomes Figueira Camacho Junior Require: Firmware / Software .IOS XR 5.3.1 .IOS XR 5.3.4 ValueMap .CISCO-ENTITY-FRU-CONTROL-MIB::PowerOperType .ENTITY-SENSORS-MIB::EntitySensorStatus .CISCO-ENTITY-FRU-CONTROL-MIB::CefcFanTrayStatusEntry .CISCO-ENTITY-SENSOR-MIB::SensorStatus Base: CISCO-MEMORY-POOL-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-MEMORY-POOL-MIB.php CISCO-PROCESS-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-PROCESS-MIB.php ENTITY-MIB http://www.circitor.fr/Mibs/Html/E/ENTITY-MIB.php CISCO-ENTITY-FRU-CONTROL-MIB.mib https://circitor.fr/Mibs/Html/C/CISCO-ENTITY-FRU-CONTROL-MIB.php CISCO-ENTITY-SENSOR-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-ENTITY-SENSOR-MIB.php https://share.zabbix.com/network_devices/cisco/template-cisco-asr-9k External Scripts and Value Mapping on my Github: https://github.com/flaviojunior1995/Zabbix-Templates</p>
        * [template_cisco_asr9k_optical_monitoring](Network Devices/Cisco/template_cisco_asr9k_optical_monitoring)
            * **ZBX-CISCO-ASR9001-OPTICAL-MONITORING**<p></p>
        * [template_cisco_asr_9k](Network Devices/Cisco/template_cisco_asr_9k)
            * **Template_Cisco_ASR_9K**<p></p>
            * **Template_Cisco_Traps**<p></p>
            * **Template Cisco General**<p></p>
        * [template_cisco_bgp_snmp](Network Devices/Cisco/template_cisco_bgp_snmp)
            * **Template Cisco BGP SNMP**<p>Template Cisco BGP Sessions -AdminStatus -Established Time -OperationStatus -AS Name -Maximum Prefix -Accepted Prefix -BGP last Error By: Flavio Gomes Figueira Camacho Junior Require: ValueMaps .BGP4-MIB::bgpPeerAdminStatus .BGP4-MIB::bgpPeerState ExternalScript .as.name .oid_to_ipv6 Base: CISCO-BGP4-MIB.mib http://www.circitor.fr/Mibs/Html/C/CISCO-BGP4-MIB.php#cbgpPeer2RemoteAs External Scripts and Value Mapping on my Github: https://github.com/flaviojunior1995/Zabbix-Templates</p>
        * [template_cisco_configuration](Network Devices/Cisco/template_cisco_configuration)
            * **Template SNMP Cisco Configuration**<p></p>
        * [template_cisco_ip_sla_discovery](Network Devices/Cisco/template_cisco_ip_sla_discovery)
            * **Template SNMP Cisco IP SLA**<p></p>
        * [template_cisco_ip_sla_discovery_1](Network Devices/Cisco/template_cisco_ip_sla_discovery_1)
            * **Template SNMP Cisco IP SLA**<p></p>
        * [template_cisco_ipsec_vpn_discovering](Network Devices/Cisco/template_cisco_ipsec_vpn_discovering)
            * **Cisco IPsec VPN discovering**<p></p>
        * [template_cisco_memory_and_cpu](Network Devices/Cisco/template_cisco_memory_and_cpu)
            * **tpl_part_network_cisco_all_performance**<p></p>
        * [template_cisco_nexus_9000](Network Devices/Cisco/template_cisco_nexus_9000)
            * **Template cisco nexus 9000**<p>The template was presented as a zip archive</p>
        * [template_cisco_sg200-26p](Network Devices/Cisco/template_cisco_sg200-26p)
            * **Template_Cisco_SG200-26P**<p></p>
        * [template_cisco_sg300_and_sg200](Network Devices/Cisco/template_cisco_sg300_and_sg200)
            * **Cisco_SG300-52-d**<p>by padamiak, 2019.05.28, zabbix v4.0, tested on sg300 and sg200</p>
        * [template_cisco_sg500_48p](Network Devices/Cisco/template_cisco_sg500_48p)
            * **Template_SG500X_48P**<p></p>
        * [template_cisco_sg500x-48p](Network Devices/Cisco/template_cisco_sg500x-48p)
            * **Template SNMP Cisco SG500x**<p></p>
        * [template_cisco_sge2000p_complete_monitoring](Network Devices/Cisco/template_cisco_sge2000p_complete_monitoring)
            * **Template XSM SNMP Devices**<p></p>
        * [template_cisco_sge2010_&_sge2010p](Network Devices/Cisco/template_cisco_sge2010_&_sge2010p)
            * **Template_SGE2010_48P**<p></p>
        * [template_cisco_snmp_ipsec](Network Devices/Cisco/template_cisco_snmp_ipsec)
            * **Template SNMP Cisco IPSec**<p></p>
        * [template_cisco_snmp_memory](Network Devices/Cisco/template_cisco_snmp_memory)
            * **Template SNMP Cisco Memory**<p></p>
        * [template_cisco_snmp_v3_interface_discovery](Network Devices/Cisco/template_cisco_snmp_v3_interface_discovery)
            * **CiscoSwitchInterfaceSNMPv3**<p></p>
        * [template_cisco_total](Network Devices/Cisco/template_cisco_total)
            * **Cisco Total**<p></p>
        * [template_for_cisco_nexus_9000](Network Devices/Cisco/template_for_cisco_nexus_9000)
            * **NEXUS 9000**<p></p>
        * [template_for_cisco_optical_sensors_with_autodiscovery](Network Devices/Cisco/template_for_cisco_optical_sensors_with_autodiscovery)
            * **Template_Cisco_Sensors**<p></p>
        * [template_generic_cisco](Network Devices/Cisco/template_generic_cisco)
            * **Generic Cisco**<p></p>
        * [template_lacp_ports_monitoring](Network Devices/Cisco/template_lacp_ports_monitoring)
            * **Template_Cisco_LAG**<p></p>
        * [template_mappings_for_cisco_nexus_9000_for_zabbix_3.2](Network Devices/Cisco/template_mappings_for_cisco_nexus_9000_for_zabbix_3.2)
            * **Template APC PDU**<p></p>
        * [template_sg220-26](Network Devices/Cisco/template_sg220-26)
            * **Template_Cisco_SG220-26P.xml**<p></p>
        * [template_sg350xg-2f10](Network Devices/Cisco/template_sg350xg-2f10)
            * **Cisco_SB_SG350XG-2F10**<p></p>
        * [template_sg500_500x_stacking](Network Devices/Cisco/template_sg500_500x_stacking)
            * **Template SNMP Cisco SG500x**<p></p>
        * [template_zabbix_for_monitoring_cisco_3750_in_stackwise](Network Devices/Cisco/template_zabbix_for_monitoring_cisco_3750_in_stackwise)
            * **Zabbix template for monitoring Cisco 3750 in StackWise**<p>The template was presented as a zip archive</p>
    * [Citrix NetScaler](Network Devices/Citrix NetScaler)
        * [template_basics_plus_ha](Network Devices/Citrix NetScaler/template_basics_plus_ha)
            * **Template NetScaler**<p>Same as v2.0 with valuemap and application prototype added.</p>
        * [template_netscaler](Network Devices/Citrix NetScaler/template_netscaler)
            * **Template NetScaler**<p></p>
    * [D-Link](Network Devices/D-Link)
        * [template_шаблон_d-link_dns-340l](Network Devices/D-Link/template_шаблон_d-link_dns-340l)
            * **Шаблон d-link dns-340l**<p>The template was presented as a zip archive</p>
        * [template_d-link_des3026](Network Devices/D-Link/template_d-link_des3026)
            * **Template_Dlink_DES3026**<p></p>
        * [template_d-link_dgs-1100-08v2_snmpv2](Network Devices/D-Link/template_d-link_dgs-1100-08v2_snmpv2)
            * **D-Link DGS 1100**<p></p>
        * [template_d-link_dgs-1100-10_me_rev._a1](Network Devices/D-Link/template_d-link_dgs-1100-10_me_rev._a1)
            * **Template SNMP D-link DGS-1100-10/ME revA1**<p></p>
        * [template_d-link_dgs-1210-52_rev._b](Network Devices/D-Link/template_d-link_dgs-1210-52_rev._b)
            * **Template SNMP D-link DGS-1210-52 revB**<p></p>
        * [template_d-link_dgs-1210-52_rev._c](Network Devices/D-Link/template_d-link_dgs-1210-52_rev._c)
            * **Template SNMP D-link DGS-1210-52 revC**<p></p>
        * [template_d-link_dgs-3100-xx](Network Devices/D-Link/template_d-link_dgs-3100-xx)
            * **Template SNMP D-link DGS-3100-xx**<p>RlEnvMonState/ciscoEnvMonState{ normal(1), warning(2), critical(3), shutdown(4), notPresent(5), notFunctioning(6) }</p>
        * [template_d-link_dgs-3120-xx](Network Devices/D-Link/template_d-link_dgs-3120-xx)
            * **Template SNMP D-link DGS-3120-xx**<p>D-link do something realy wierd with swTemperatureTable. So it's values not discovered but set manualy as items</p>
        * [template_d-link_dgs_1100](Network Devices/D-Link/template_d-link_dgs_1100)
            * **D-Link DGS 1100**<p></p>
        * [template_des-1210-28](Network Devices/D-Link/template_des-1210-28)
            * **Template SNMP D-Link DES-1210-28**<p>Autor: m.beloglazov@gmail.com Template: Template D-link DES-1210-28 SNMP Version Zabbix: 3.0</p>
        * [template_des-3526](Network Devices/D-Link/template_des-3526)
            * **DES-3526**<p></p>
        * [template_zabbix_2.2_d-link_dgs-3200_snmp](Network Devices/D-Link/template_zabbix_2.2_d-link_dgs-3200_snmp)
            * **Template SNMP D-Link DGS-3200**<p></p>
    * [Datacom](Network Devices/Datacom)
        * [template_dm2500](Network Devices/Datacom/template_dm2500)
            * **DATACOM DM2500**<p></p>
        * [template_dm4610_olt](Network Devices/Datacom/template_dm4610_olt)
            * **DATACOM DmOS - ONU Interfaces**<p></p>
        * [template_dmos](Network Devices/Datacom/template_dmos)
            * **DM Template - DmOS**<p></p>
        * [template_dmos-hardware_monitor](Network Devices/Datacom/template_dmos-hardware_monitor)
            * **DmOS - Hardware Monitor**<p>Monitor de objetos da MIB DMOS-HW-MONITOR-MIB para monitoramento do hardware dos devices.</p>
    * [Dell](Network Devices/Dell)
        * [template_dell_idrac](Network Devices/Dell/template_dell_idrac)
            * **Dell iDrac**<p>The template was presented as a tar.gz archive</p>
        * [template_force_c150](Network Devices/Dell/template_force_c150)
            * **Force C150**<p></p>
    * [Eltex](Network Devices/Eltex)
        * [template_eltex_lte-8x](Network Devices/Eltex/template_eltex_lte-8x)
            * **Template Eltex LTE-8X**<p></p>
        * [template_eltex_mes](Network Devices/Eltex/template_eltex_mes)
            * **Template Eltex MES SNMPv2**<p></p>
        * [template_mes3124f](Network Devices/Eltex/template_mes3124f)
            * **Template_MES3124**<p></p>
        * [template_mes3124f_1](Network Devices/Eltex/template_mes3124f_1)
            * **Template_MES3124**<p></p>
        * [template_snmp_array_network_secure_access_gateway](Network Devices/Eltex/template_snmp_array_network_secure_access_gateway)
            * **Array AG1100 SNMP 监控模板**<p></p>
    * [Fortigate](Network Devices/Fortigate)
        * [template_fortianalyzer](Network Devices/Fortigate/template_fortianalyzer)
            * **Template SNMP FortiAnalyzer**<p>Version 1.0 Created by Samuel Martins Repo: https://github.com/slunart/Zabbix-Templates Plesase, install the Fortianalyzer MIB on Zabbix Server FORTINET-FORTIMANAGER-FORTIANALYZER-MIB</p>
        * [template_fortigate_100d](Network Devices/Fortigate/template_fortigate_100d)
            * **Template Fortigate 100D**<p></p>
        * [template_fortigate_100d-200b-60c-30d](Network Devices/Fortigate/template_fortigate_100d-200b-60c-30d)
            * **FGT-INTERFACES DISCOVERY**<p></p>
        * [template_fortigate_100d-200b-60c-30d_1](Network Devices/Fortigate/template_fortigate_100d-200b-60c-30d_1)
            * **FGT-CPU**<p></p>
            * **FGT-EQUIPAMENTO**<p></p>
            * **FGT-INTERFACES DISCOVERY**<p></p>
            * **FGT-MEMORIA**<p></p>
        * [template_fortigate_ha_status](Network Devices/Fortigate/template_fortigate_ha_status)
            * **Fortigate HA Sync**<p>BY EAS *************** CONTACT erik@tndbrasil.com.br Facebook: https://www.facebook.com/easerik Instagram: https://www.instagram.com/easerik Linkedin: https://www.linkedin.com/in/easerik/</p>
        * [template_fortigate_snmp](Network Devices/Fortigate/template_fortigate_snmp)
            * **Template SNMP Fortinet Devices**<p></p>
        * [template_fortigate_snmp_v2019](Network Devices/Fortigate/template_fortigate_snmp_v2019)
            * **Template SNMP Fortinet Devices v2019**<p></p>
        * [template_fortinet_all_discovery](Network Devices/Fortigate/template_fortinet_all_discovery)
            * **Template Module Interfaces SNMPv2**<p>Template Interfaces version: 0.14 MIBs used: IF-MIB</p>
        * [template_fortiswitch_124e-poe](Network Devices/Fortigate/template_fortiswitch_124e-poe)
            * **Template SNMP FortiSwitch Devices**<p></p>
        * [template_snmp_fortigate_wifi_access_point](Network Devices/Fortigate/template_snmp_fortigate_wifi_access_point)
            * **Template SNMP Fortigate Wifi Access Points**<p>Created by Samuel Martins (02-17-2021) https://github.com/slunart https://www.linkedin.com/in/slmartins ----------------------------------------------------------- Forti AP is monitored through FortiGate, so you need to apply this template to the Fortigate device. Originally based on template: "Fortigate SNMP SSLVPN/FortiAP Manged by Fortigate WiFi Controller template" created by Vadim Portnoy. Source: https://share.zabbix.com/network_devices/fortigate/fortigate-snmp-sslvpn-fortiap-manged-by-fortigate-wifi-controller-template My improvements: - More items monitored. - Items' name shorted - Interval time of items modified - Trigged added - Graphics Prototype added</p>
        * [template_snmp_fortinet-antivirus_and_webfilter](Network Devices/Fortigate/template_snmp_fortinet-antivirus_and_webfilter)
            * **Template SNMP Fortinet  - Antivirus and WebFilter**<p>Created by Samuel Martins (04-16-2021) https://github.com/slunart https://www.linkedin.com/in/slmartins ----------------------------------------------------------- Based on FORTINET-FORTIGATE-MIB OBJECTS { fgAvVirusDetected, fgAvVirusBlocked, fgAvHTTPVirusDetected, fgAvHTTPVirusBlocked, fgAvSMTPVirusDetected, fgAvSMTPVirusBlocked, fgAvPOP3VirusDetected, fgAvPOP3VirusBlocked, fgAvIMAPVirusDetected, fgAvIMAPVirusBlocked, fgAvFTPVirusDetected, fgAvFTPVirusBlocked, fgAvIMVirusDetected, fgAvIMVirusBlocked, fgAvNNTPVirusDetected, fgAvNNTPVirusBlocked, fgAvOversizedDetected, fgAvOversizedBlocked } FgWebfilterStatsEntry ::= SEQUENCE { fgWfHTTPBlocked Counter32, fgWfHTTPSBlocked Counter32, fgWfHTTPURLBlocked Counter32, fgWfHTTPSURLBlocked Counter32, fgWfActiveXBlocked Counter32, fgWfCookieBlocked Counter32, fgWfAppletBlocked Counter32 }</p>
    * [Generic](Network Devices/Generic)
        * [template_arp_check](Network Devices/Generic/template_arp_check)
            * **SNMPv2 ARP**<p></p>
        * [template_bgpv4_snmp](Network Devices/Generic/template_bgpv4_snmp)
            * **Template BGPv4 SNMP**<p>Template BGPv4 Sessions -Admin Status -Established Time -Operation Status -AS Name -BGP last Error By: Flavio Gomes Figueira Camacho Junior Require: ValueMaps .BGP4-MIB::bgpPeerAdminStatus .BGP4-MIB::bgpPeerState ExternalScript .as_name Base: BGP4-MIB.mib https://www.iana.org/assignments/bgp-parameters/bgp-parameters.xhtml</p>
        * [template_module_etherlike-mib_snmpv3](Network Devices/Generic/template_module_etherlike-mib_snmpv3)
            * **Template Module EtherLike-MIB SNMPv3**<p>Template Module EtherLike-MIB SNMPv3 Template used Template Module EtherLike-MIB SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.1</p>
        * [template_module_generic_snmpv3](Network Devices/Generic/template_module_generic_snmpv3)
            * **Template Module Generic SNMPv3**<p>Template Module Generic SNMPv3 Template used Template Module Generic SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.1</p>
        * [template_module_interfaces_snmpv3](Network Devices/Generic/template_module_interfaces_snmpv3)
            * **Template Module Interfaces SNMPv3**<p>Template Module Interfaces SNMPv3 Used template Template Module Interfaces SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.0</p>
        * [template_net_network_generic_device_snmpvx](Network Devices/Generic/template_net_network_generic_device_snmpvx)
            * **Template Net Network Generic Device SNMPvX**<p>The template was presented as a zip archive</p>
        * [template_snmpv2_interfaces_packets_per_second](Network Devices/Generic/template_snmpv2_interfaces_packets_per_second)
            * **Template SNMPv2 Interfaces packets per second**<p>Template adds items for measuring switchport unicast, broadcast and multicast packets per second.</p>
    * [H3C](Network Devices/H3C)
        * [template_华三交换机通用监控模板](Network Devices/H3C/template_华三交换机通用监控模板)
            * **华三交换机监控模板**<p></p>
        * [template_华三交换机h3c_s3100自制监控模板](Network Devices/H3C/template_华三交换机h3c_s3100自制监控模板)
            * **Template Housekeeping Metrics**<p>Language: English Autor: Bernardo Lankheet Blog: www.bernardolankheet.com.br Repositorio: https://github.com/bernardolankheet/Zabbix-Monitor-Housekeeper</p>
        * [template_华三交换机h3c_s7506自制监控模板](Network Devices/H3C/template_华三交换机h3c_s7506自制监控模板)
            * **Canon Color MF printers Template**<p>Template for color Canon Multi Functional printer.</p>
        * [template_华三secpath系列防火墙监控模板](Network Devices/H3C/template_华三secpath系列防火墙监控模板)
            * **华三SecPath防火墙监控模板**<p></p>
        * [template_h3c_wx3510h_discovery](Network Devices/H3C/template_h3c_wx3510h_discovery)
            * **H3C_WX3510H**<p></p>
    * [HP](Network Devices/HP)
        * [template_3com](Network Devices/HP/template_3com)
            * **Template 3COM 4500 28 Ports**<p></p>
        * [template_3com_baseline_2226-sfp_plus_snmpv2](Network Devices/HP/template_3com_baseline_2226-sfp_plus_snmpv2)
            * **Template 3COM Baseline 2226-SFP Plus SNMPv2**<p></p>
        * [template_aruba_os_wlc_6.5+-zabbix_4.x](Network Devices/HP/template_aruba_os_wlc_6.5+-zabbix_4.x)
            * **Template ArubaOS**<p></p>
        * [template_hp-2920-xxg](Network Devices/HP/template_hp-2920-xxg)
            * **HP Procurve 2920**<p></p>
        * [template_hp_(chassis,_brocade,_blade)](Network Devices/HP/template_hp_(chassis,_brocade,_blade))
            * **Template HP (Chassis, Brocade, Blade)**<p>The template was presented as a tar.gz archive</p>
        * [template_hp_1920-16g](Network Devices/HP/template_hp_1920-16g)
            * **Template SNMP HP v1920-16G**<p></p>
        * [template_hp_1920-24g](Network Devices/HP/template_hp_1920-24g)
            * **Template SNMP HP v1920-24G**<p></p>
        * [template_hp_5100_gbic](Network Devices/HP/template_hp_5100_gbic)
            * **Sinais Opticos SW HP**<p>Sinais ópticos (GBIC) para SW HP 5100</p>
        * [template_hp_a5120_switch,_snmp_v3](Network Devices/HP/template_hp_a5120_switch,_snmp_v3)
            * **Template HP A5120**<p></p>
        * [template_hp_ilo4](Network Devices/HP/template_hp_ilo4)
            * **Template SNMP HP Server Health Template**<p></p>
        * [template_hp_msa_2040](Network Devices/HP/template_hp_msa_2040)
            * **Template SNMP HP MSA 2040 SAN**<p></p>
        * [template_hp_officeconnect_19xx](Network Devices/HP/template_hp_officeconnect_19xx)
            * **Template SNMP OfficeConnect 19XX**<p></p>
        * [template_hp_transceivers_lld_monitoring_(gbic_ddm_ddmi_dom)](Network Devices/HP/template_hp_transceivers_lld_monitoring_(gbic_ddm_ddmi_dom))
            * **Template GM DDMI**<p>Monitor HP transceivers</p>
        * [template_hp_v1910-24g_switch_equipamento](Network Devices/HP/template_hp_v1910-24g_switch_equipamento)
            * **SWITCH HP - EQUIPAMENTO**<p></p>
        * [template_net_hp_and_aruba_enterprise_switch_snmpv3](Network Devices/HP/template_net_hp_and_aruba_enterprise_switch_snmpv3)
            * **Template Net HP Enterprise Switch SNMPv3**<p>Template Net HP Enterprise Switch, support SNMPv3 Original template Template Net HP Enterprise Switch SNMPv2 Ville Leinonen https://www.hacknetwork.org Version 1.0</p>
        * [template_zabbix_2.2_hp_v19##-24g_snmp](Network Devices/HP/template_zabbix_2.2_hp_v19##-24g_snmp)
            * **Template SNMP HP v1910-24G**<p></p>
        * [template_zabbix_2.2_hp_v1905_poe_snmp](Network Devices/HP/template_zabbix_2.2_hp_v1905_poe_snmp)
            * **Template SNMP HP v1905 POE**<p></p>
        * [template_zabbix_2.2_hp_v1910-24g_snmp](Network Devices/HP/template_zabbix_2.2_hp_v1910-24g_snmp)
            * **Template SNMP HP v1910-24G**<p></p>
        * [template_zabbix_hp_v1910-48g_snmp](Network Devices/HP/template_zabbix_hp_v1910-48g_snmp)
            * **Template SNMP HP v1910-48G**<p></p>
    * [Huawei](Network Devices/Huawei)
        * [template_华为交换机通用监控模板](Network Devices/Huawei/template_华为交换机通用监控模板)
            * **华为交换机监控模板**<p></p>
        * [template_huawei_ar_161_s2220e](Network Devices/Huawei/template_huawei_ar_161_s2220e)
            * **Basic HUAWEI SNMP with traps AR161 and S2220E**<p></p>
        * [template_huawei_b593](Network Devices/Huawei/template_huawei_b593)
            * **Template B593**<p></p>
        * [template_huawei_ne40e_peering_bgp](Network Devices/Huawei/template_huawei_ne40e_peering_bgp)
            * **Huawei NE40E - BGP**<p>Template para monitoramento de sessão BGP</p>
        * [template_huawei_quidway_s3900_series_switch](Network Devices/Huawei/template_huawei_quidway_s3900_series_switch)
            * **Template Huawei Quidway s3900 series switches**<p></p>
        * [template_huawei_quidway_s5600_series_switches](Network Devices/Huawei/template_huawei_quidway_s5600_series_switches)
            * **Template Huawei Quidway s5600 series switches**<p></p>
        * [template_huawei_s5700](Network Devices/Huawei/template_huawei_s5700)
            * **Template Huawei Switch S5700**<p></p>
        * [template_ma5600_gpon](Network Devices/Huawei/template_ma5600_gpon)
            * **Template SNMP Interfaces Huawei**<p></p>
        * [template_optical_modules_huawei](Network Devices/Huawei/template_optical_modules_huawei)
            * **Template Optical Modules Huawei**<p></p>
        * [template_power_supply_netengine_snmp](Network Devices/Huawei/template_power_supply_netengine_snmp)
            * **Power Supply NetEngine SNMP**<p></p>
        * [template_power_supply_s6700_snmp](Network Devices/Huawei/template_power_supply_s6700_snmp)
            * **Power Supply S6700 SNMP**<p></p>
        * [template_s_for_nex0_s57xx_s67xx](Network Devices/Huawei/template_s_for_nex0_s57xx_s67xx)
            * **Templates for NEx0/S57xx/S67xx**<p>The template was presented as a zip archive</p>
    * [Infinera](Network Devices/Infinera)
        * [template_groove_g30_infinera](Network Devices/Infinera/template_groove_g30_infinera)
            * **Groove-G30 Infinera**<p></p>
        * [template_infinera_xtm_series_tm-3000_ii_and_tm-301_ii_chassis](Network Devices/Infinera/template_infinera_xtm_series_tm-3000_ii_and_tm-301_ii_chassis)
            * **ZBX-INFINERA-XTM-SERIES-MONITORING**<p></p>
    * [Intelbras](Network Devices/Intelbras)
        * [template_dvr_intelbras](Network Devices/Intelbras/template_dvr_intelbras)
            * **Template_Dvr**<p>template dvr</p>
        * [template_olt8820g_intelbras](Network Devices/Intelbras/template_olt8820g_intelbras)
            * **OLT**<p></p>
        * [template_olt_4840e](Network Devices/Intelbras/template_olt_4840e)
            * **Solustic-Modulo SNMP Generico v1.0.2**<p>MIBs: - SNMPv2-MIB</p>
            * **Solustic - OLT GCOM EL5610 (Intelbras 4840E) v1.0.0**<p>Homologado na EL5610-04P (Intelbras 4840E) firmware V100R001B01D001P006SP5</p>
        * [template_olt_4840e_1](Network Devices/Intelbras/template_olt_4840e_1)
            * **Solustic-Modulo SNMP Generico v1.0.2**<p>MIBs: - SNMPv2-MIB</p>
            * **Solustic - OLT GCOM EL5610 (Intelbras 4840E) v1.0.0**<p>Homologado na EL5610-04P (Intelbras 4840E) firmware V100R001B01D001P006SP5</p>
    * [Juniper](Network Devices/Juniper)
        * [template_瞻博srx系列防火墙监控模板](Network Devices/Juniper/template_瞻博srx系列防火墙监控模板)
            * **瞻博SRX防火墙监控模板**<p></p>
        * [template_juniper-optical-interface](Network Devices/Juniper/template_juniper-optical-interface)
            * **Juniper-Optical-Interfaces**<p>Based on Zabbix's official Template Net Juniper SNMPv2, only minor modifications have been made. 1.The interfaces in the down and shutdown states have been filtered,virtual interfaces have also been filtered 2.The trigger threshold seting is -19dbm or 0dbm. 3.only RxLaserPower items,if you need TxLaserPower items but don’t know how to do it, please email me. whye1700#gmail.com(replace # with @)</p>
        * [template_juniper_(netscreen)](Network Devices/Juniper/template_juniper_(netscreen))
            * **Juniper (Netscreen) Template**<p>The template was presented as a zip archive</p>
        * [template_juniper_bgp](Network Devices/Juniper/template_juniper_bgp)
            * **Juniper BGP**<p></p>
        * [template_juniper_ex_series](Network Devices/Juniper/template_juniper_ex_series)
            * **Template Juniper EX**<p></p>
        * [template_juniper_srx_series](Network Devices/Juniper/template_juniper_srx_series)
            * **Template Juniper SRX**<p></p>
        * [template_juniper_total](Network Devices/Juniper/template_juniper_total)
            * **Juniper Total**<p></p>
    * [Mikrotik](Network Devices/Mikrotik)
        * [template_advanced_net_mikrotik_snmpv2](Network Devices/Mikrotik/template_advanced_net_mikrotik_snmpv2)
            * **Advanced Template Net Mikrotik SNMPv2**<p>The template was presented as a zip archive</p>
        * [template_crs125-24g-1s-2hnd-in](Network Devices/Mikrotik/template_crs125-24g-1s-2hnd-in)
            * **Mikrotik CRS125-24G-1S-2HnD-IN**<p></p>
        * [template_mikrotik_bgp_lld](Network Devices/Mikrotik/template_mikrotik_bgp_lld)
            * **Mikrotik - BGP LLD**<p></p>
        * [template_mikrotik_queue_traffic_discovery](Network Devices/Mikrotik/template_mikrotik_queue_traffic_discovery)
            * **Mikrotik-QUEUE**<p></p>
        * [template_mikrotik_rb3011uias](Network Devices/Mikrotik/template_mikrotik_rb3011uias)
            * **MikroTik RB3011UiAS**<p></p>
        * [template_mikrotik_rb750-rb1100](Network Devices/Mikrotik/template_mikrotik_rb750-rb1100)
            * **Template Mikrotik RB750-RB1100**<p>Autor: Danilo Barros de Medeiros Template: Mikrotik RB750/RB1100 Versão Zabbix: 3.0 Versão Template: 1.1</p>
        * [template_mikrotik_rb750gr3](Network Devices/Mikrotik/template_mikrotik_rb750gr3)
            * **MikroTik RB750GR3**<p></p>
        * [template_mikrotik_routerboard通用模板（仅限于rb设备）](Network Devices/Mikrotik/template_mikrotik_routerboard通用模板（仅限于rb设备）)
            * **Mikrotik RouterBOARD**<p>Ros 专用模板（RB设备） 该模板只用于RouterOS路由系统监控，其它设备请绕路。 By:【犯罪嫌疑人】</p>
        * [template_mikrotik_routeros_v6.x_2021](Network Devices/Mikrotik/template_mikrotik_routeros_v6.x_2021)
            * **MikroTik**<p></p>
        * [template_mikrotik_script_execution_via_snmp](Network Devices/Mikrotik/template_mikrotik_script_execution_via_snmp)
            * **Mikrotik Script Execution**<p></p>
        * [template_mikrotik_wireless_lld](Network Devices/Mikrotik/template_mikrotik_wireless_lld)
            * **MikroTik - Basico Wireless Station**<p></p>
            * **MikroTik - Basico Wireless AP**<p></p>
            * **MikroTik - Basico Wireless Registration Table**<p></p>
        * [template_monitoramento_de_mikrotik_sem_interface_pppoe](Network Devices/Mikrotik/template_monitoramento_de_mikrotik_sem_interface_pppoe)
            * **Template Mikrotik**<p></p>
        * [template_net_mikrotik_snmpv3](Network Devices/Mikrotik/template_net_mikrotik_snmpv3)
            * **Template Net Mikrotik SNMPv3**<p>Template Net Mikrotik MIBs used: HOST-RESOURCES-MIB MIKROTIK-MIB</p>
        * [template_quantidade_de_clientes_pppoe](Network Devices/Mikrotik/template_quantidade_de_clientes_pppoe)
            * **1 - Template Check Active Client PPPoE**<p></p>
        * [template_routerboard_ccr_sem_interfaces_ppp](Network Devices/Mikrotik/template_routerboard_ccr_sem_interfaces_ppp)
            * **aa Template SNMP Mikrotik CCR-1036**<p></p>
        * [template_routerboard_rb2011-uias-rm](Network Devices/Mikrotik/template_routerboard_rb2011-uias-rm)
            * **aa Template SNMP Mikrotik RB2011UiAS**<p></p>
        * [template_sfp_mikrotik](Network Devices/Mikrotik/template_sfp_mikrotik)
            * **SFP Mikrotik**<p></p>
        * [template_templete_ubiquiti](Network Devices/Mikrotik/template_templete_ubiquiti)
            * **templete rsg**<p></p>
        * [template_zabbix-mikrotik-bgp-json](Network Devices/Mikrotik/template_zabbix-mikrotik-bgp-json)
            * **Mikrotik - BGP LLD**<p></p>
        * [template_zabbix-mikrotik-ospf-json](Network Devices/Mikrotik/template_zabbix-mikrotik-ospf-json)
            * **Mikrotik - OSPF LLD**<p></p>
        * [template_zabbix-mikrotik-partition-table](Network Devices/Mikrotik/template_zabbix-mikrotik-partition-table)
            * **Mikrotik-Partion-Table**<p></p>
        * [template_zabbix-mikrotik-queue-tree](Network Devices/Mikrotik/template_zabbix-mikrotik-queue-tree)
            * **Mikrotik-Queue-Tree**<p></p>
        * [template_zabbix_routeros_bgp_monitoring](Network Devices/Mikrotik/template_zabbix_routeros_bgp_monitoring)
            * **Template RouterOS BGP**<p></p>
    * [Netgear](Network Devices/Netgear)
        * [template_netgear_gs110tp](Network Devices/Netgear/template_netgear_gs110tp)
            * **Template Netgear GS110TP**<p></p>
        * [template_netgear_gs716t](Network Devices/Netgear/template_netgear_gs716t)
            * **Template_Netgear_GS716T**<p></p>
        * [template_netgear_gs724t](Network Devices/Netgear/template_netgear_gs724t)
            * **Template_Netgear_GS724T**<p></p>
        * [template_netgear_gs724tv3](Network Devices/Netgear/template_netgear_gs724tv3)
            * **Template_Netgear_GS724T_v3**<p></p>
        * [template_netgear_gs748t](Network Devices/Netgear/template_netgear_gs748t)
            * **Template_Netgear_GS748T**<p></p>
        * [template_netgear_wg103](Network Devices/Netgear/template_netgear_wg103)
            * **Template_Netgear_WG103**<p></p>
    * [Other](Network Devices/Other)
        * [template_3com_4500](Network Devices/Other/template_3com_4500)
            * **Template 3COM 4500 52 Ports**<p></p>
        * [template_锐捷交换机监控模板](Network Devices/Other/template_锐捷交换机监控模板)
            * **锐捷交换机监控模板**<p></p>
        * [template_adva_fsp3000](Network Devices/Other/template_adva_fsp3000)
            * **Template Adva SNMP Autodiscovery**<p>Autodiscovery ADVA Dwdm (especially FSP3000 r7)</p>
        * [template_alvarion_breezenet_(b10,_b14,_b28)](Network Devices/Other/template_alvarion_breezenet_(b10,_b14,_b28))
            * **Template Net BreezeNet SNMPv1**<p></p>
        * [template_arbor_sp](Network Devices/Other/template_arbor_sp)
            * **Template_Arbor_SP**<p></p>
        * [template_arbor_tms](Network Devices/Other/template_arbor_tms)
            * **Template_Arbor_TMS**<p></p>
        * [template_asga_olt2500](Network Devices/Other/template_asga_olt2500)
            * **Template SNMP  AsGa OLT2500**<p></p>
        * [template_bintec_elmeg_routers](Network Devices/Other/template_bintec_elmeg_routers)
            * **bintec Router**<p>Template for routers from bintec elmeg Tested with RS353jv, be.IP plus and R1202</p>
        * [template_dell_chassis_management_controller_(cmc)](Network Devices/Other/template_dell_chassis_management_controller_(cmc))
            * **DELL Chassis Management Controller (CMC)**<p>The template was presented as a zip archive</p>
        * [template_docsis_cable_modem](Network Devices/Other/template_docsis_cable_modem)
            * **Docsis Cable Modem - 16Mbps**<p></p>
        * [template_enhanced_snmp_interface_discovery](Network Devices/Other/template_enhanced_snmp_interface_discovery)
            * **Enhanced SNMP Interface Discovery**<p>Enhanced SNMP interface discovery 1.0.1 Template made by Twan Kamans. https://www.twan-it.nl This template searches for 4 different categories: - Interfaces that are administratively disabled - Interfaces that are working onder normal condition - Interfaces with priority, such as switch uplink - Virtual interfaces such as tunnel, port channel and vlan interfaces. Revision 0.7 - Added support for virtual interfaces Revision 0.7.1 - Added support for (filtering) stack switch ports - Fixed a bug in which VLAN interfaces with the number 0 in them would still be discovered by the normal LLD rule Revision 0.7.2 - Filtering VLAN's 1002 - 1005 interfaces - Added support for subinterfaces for Junos Revision 0.8 - Completely revisited the filtering of items using Regex due to introduction of Junos devices. You can adjust the regex for physical devices using a macro. Revision 0.9 - Added support for enduser ports. Triggers will not activate if port description contains macro value. Revision 1.0 - Tested template on posible errors. Revision 1.0.1 - Added bandwidth statistics for virtual interfaces. Revision 1.0.2 - Bandwidth triggers now make use of user macro context, making individual port bandwidth limits posible. - The interface changed state severity has been lowered by default. The new default severity for all interfaces is "warning". Exceptions to this are the priority interfaces which are "average".</p>
        * [template_f5_ltm负载均衡器监控模板](Network Devices/Other/template_f5_ltm负载均衡器监控模板)
            * **F5 LTM负载均衡器监控模板**<p></p>
        * [template_fortinet](Network Devices/Other/template_fortinet)
            * **Fortinet**<p>The template was presented as a zip archive</p>
        * [template_h3c_wireless_ac(chinese)](Network Devices/Other/template_h3c_wireless_ac(chinese))
            * **H3C AC**<p></p>
        * [template_ip_cam_axis_m1013](Network Devices/Other/template_ip_cam_axis_m1013)
            * **IP cam AXIS M1013**<p></p>
        * [template_lan_controller_v2](Network Devices/Other/template_lan_controller_v2)
            * **Huawei UPS**<p></p>
        * [template_net_digisol_dg-gs1526e_snmpv2](Network Devices/Other/template_net_digisol_dg-gs1526e_snmpv2)
            * **Template Net Digisol DG-GS1526E SNMPv2**<p>Template Net Digisol DG-GS1526E SNMPv2 Tested on Zabbix 4.4 with DG-GS1526E running 1.0.1.4 software Created by full clone of Template Net Digisol DG-GS4524 SNMPv2 then: . Templates .. Unlink and clear: Template Module Generic SNMPv2 .. Link: Template Module ICMP Ping . Macros: copied {$SNMP.TIMEOUT} from "Template Module Generic SNMPv2" . Applications: added "General" and "Status" . Items deleted .. Hardware version . Items added .. SNMP traps (fallback): copy from "Template Module Generic SNMPv2" .. System contact details: copy from "Template Module Generic SNMPv2" .. System description: copy from "Template Module Generic SNMPv2" .. System location: copy from "Template Module Generic SNMPv2" .. System name: copy from "Template Module Generic SNMPv2" .. System object ID: copy from "Template Module Generic SNMPv2" .. Uptime: copy from "Template Module Generic SNMPv2" .. System serial number: Delete</p>
        * [template_opengear_console](Network Devices/Other/template_opengear_console)
            * **Template_Opengear_Console**<p></p>
        * [template_power_net_1000](Network Devices/Other/template_power_net_1000)
            * **VOLT - POWER NET 1000**<p></p>
        * [template_rad_airmux_400](Network Devices/Other/template_rad_airmux_400)
            * **Template Net RAD AirMux 400 SNMPv1**<p></p>
        * [template_room_alert_12er](Network Devices/Other/template_room_alert_12er)
            * **Template Room Alert 12er**<p></p>
        * [template_ruckus_zonedirector](Network Devices/Other/template_ruckus_zonedirector)
            * **Template SNMP Ruckus Zonedirector**<p></p>
        * [template_snr_2990g-48](Network Devices/Other/template_snr_2990g-48)
            * **Template_SNR**<p></p>
        * [template_standard_dsl_snmp](Network Devices/Other/template_standard_dsl_snmp)
            * **Template SNMP ADSL Stats**<p></p>
        * [template_stm1_4](Network Devices/Other/template_stm1_4)
            * **STM1/4**<p>The template was presented as a zip archive</p>
        * [template_stormshield](Network Devices/Other/template_stormshield)
            * **Template_Stormshield**<p>Template Netasq</p>
        * [template_zabbix-newtecel470_satellite_modem](Network Devices/Other/template_zabbix-newtecel470_satellite_modem)
            * **Newtec**<p>Template for satellite modem</p>
    * [Palo Alto](Network Devices/Palo Alto)
        * [template_palo_alto_firewall](Network Devices/Palo Alto/template_palo_alto_firewall)
            * **Template_Palo_Alto_Firewall**<p></p>
        * [template_palo_alto_pa-200_pan-os_ver.6.0.x](Network Devices/Palo Alto/template_palo_alto_pa-200_pan-os_ver.6.0.x)
            * **Template_Palo_Alto_PA200**<p></p>
        * [template_palo_alto_snmpv3](Network Devices/Palo Alto/template_palo_alto_snmpv3)
            * **Template Palo Alto SNMPv3 Auth Priv**<p></p>
        * [template_palo_alto_with_64-bit_counters_(snmpv2)](Network Devices/Palo Alto/template_palo_alto_with_64-bit_counters_(snmpv2))
            * **Template Palo Alto SNMPv2 64-bit counters**<p></p>
        * [template_paloalto_snmpv3_zabbix4.0](Network Devices/Palo Alto/template_paloalto_snmpv3_zabbix4.0)
            * **Template SNMPv3 Palo alto OS 8.1**<p></p>
    * [Parks](Network Devices/Parks)
        * [template_parks_fiberlink_20048s](Network Devices/Parks/template_parks_fiberlink_20048s)
            * **Template Parks Fiberlink 20048S - V1.1**<p></p>
        * [template_parks_fiberlink_30028](Network Devices/Parks/template_parks_fiberlink_30028)
            * **Parks Fiberlink 30028**<p>The template was presented as a zip archive</p>
    * [PepLink](Network Devices/PepLink)
        * [template_peplink](Network Devices/PepLink/template_peplink)
            * **Template Peplink**<p></p>
    * [QTech](Network Devices/QTech)
        * [template_qtech_ddm_sensors](Network Devices/QTech/template_qtech_ddm_sensors)
            * **Template_Qtech_Sensors**<p></p>
    * [Ruckus](Network Devices/Ruckus)
        * [template_ruckus_smartzone_zone_director](Network Devices/Ruckus/template_ruckus_smartzone_zone_director)
            * **Template SNMP Ruckus Zonedirector**<p></p>
        * [template_snmp_ruckus_zonedirector_9.5](Network Devices/Ruckus/template_snmp_ruckus_zonedirector_9.5)
            * **Template SNMP Ruckus Zonedirector 9.5**<p></p>
    * [SNR](Network Devices/SNR)
        * [template_snr_access_switches_snmpv2](Network Devices/SNR/template_snr_access_switches_snmpv2)
            * **Template SNR Broadcast-Multicast-Unicast**<p></p>
            * **Template SNR CPU Usage**<p></p>
            * **Template SNR Error and Discared Packets**<p></p>
            * **Template SNR Interfaces Statistic**<p></p>
            * **Template SNR Memory Information**<p></p>
            * **Template SNR POE Power**<p></p>
        * [template_snr_distribution_switches_snmpv2](Network Devices/SNR/template_snr_distribution_switches_snmpv2)
            * **Template SNR Broadcast-Multicast-Unicast**<p></p>
            * **Template SNR CPU Usage**<p></p>
            * **Template SNR DDM Statistic**<p></p>
            * **Template SNR Error and Discared Packets**<p></p>
            * **Template SNR Interfaces Statistic**<p></p>
            * **Template SNR Memory Information**<p></p>
            * **Template SNR POE Power**<p></p>
            * **Template SNR Switch Temperature**<p></p>
    * [Sonicwall](Network Devices/Sonicwall)
        * [template_sonicwall_gen6plus](Network Devices/Sonicwall/template_sonicwall_gen6plus)
            * **Sonicwall-Gen6Plusv2**<p>V2 Plantilla para gráficas de interfaces manuales y auto descubrimiento de VPNs y Vlans, especial para VPNs TunelInterface. Creacción de gráficas manuales, no automáticas, para evitar gráficas automáticas por descubrimiento, con trafico 0. Traps Implementados y Tags para avisos de recuperación autoática. En continua adaptación........</p>
        * [template_sonicwall_nsa_series](Network Devices/Sonicwall/template_sonicwall_nsa_series)
            * **Template SNMP Sonicwall 4600**<p></p>
        * [template_sonicwall_tz500_600](Network Devices/Sonicwall/template_sonicwall_tz500_600)
            * **Sonicwall SNMP - TZ600**<p>Template customizado para o TZ600</p>
    * [TP-Link](Network Devices/TP-Link)
        * [template_sg5428-g](Network Devices/TP-Link/template_sg5428-g)
            * **TP-Link 5428**<p></p>
        * [template_td-w8950n](Network Devices/TP-Link/template_td-w8950n)
            * **TP-Link TD-W8950N**<p></p>
    * [Ubiquiti](Network Devices/Ubiquiti)
        * [template_airfiber_5u](Network Devices/Ubiquiti/template_airfiber_5u)
            * **Template AirFiber_5U**<p></p>
        * [template_edgemax_(snmpv2)](Network Devices/Ubiquiti/template_edgemax_(snmpv2))
            * **Template EdgeMAX SNMPv2**<p></p>
        * [template_ubiquit_unifi_ap_wifi](Network Devices/Ubiquiti/template_ubiquit_unifi_ap_wifi)
            * **Template Ubiquiti Unifi AP LR SNMPv1**<p></p>
        * [template_ubiquiti_airmax_estações_(clientes)](Network Devices/Ubiquiti/template_ubiquiti_airmax_estações_(clientes))
            * **Ubiquiti AirMax AP Clientes by Dzset**<p></p>
        * [template_ubiquiti_airos8](Network Devices/Ubiquiti/template_ubiquiti_airos8)
            * **Template AirOS8**<p></p>
        * [template_ubiquiti_ltu-rocket_wireless](Network Devices/Ubiquiti/template_ubiquiti_ltu-rocket_wireless)
            * **Ubiquiti LTU-rocket wireless**<p></p>
        * [template_unifi](Network Devices/Ubiquiti/template_unifi)
            * **Template Ubitiqui**<p></p>
        * [template_unifi_ap_snmpv3](Network Devices/Ubiquiti/template_unifi_ap_snmpv3)
            * **Template UBQT UNIFI SNMP V3 HN**<p>This template retrieve SNMP data from Unifi AP devices. MIBS requiriments: FROGFOOT-RESOURCES-MIB IANAifType-MIB IF-MIB SNMP-FRAMEWORK-MIB SNMPv2-CONF SNMPv2-MIB SNMPv2-SMI SNMPv2-TC UBNT-MIB UBNT-UniFi-MIB Author: Helmut Leonhardt based on Alex Moura</p>
        * [template_unifi_snmp_2019_v1.0](Network Devices/Ubiquiti/template_unifi_snmp_2019_v1.0)
            * **Template UNIFI SNMP 2019 V1.0**<p>This template retrieve SNMP data from Unifi AP devices. MIBS requiriments: FROGFOOT-RESOURCES-MIB IANAifType-MIB IF-MIB SNMP-FRAMEWORK-MIB SNMPv2-CONF SNMPv2-MIB SNMPv2-SMI SNMPv2-TC UBNT-MIB UBNT-UniFi-MIB Author: Alex Moura</p>
        * [template_unifi_snmp_2019_v1.1](Network Devices/Ubiquiti/template_unifi_snmp_2019_v1.1)
            * **Template UBQT UNIFI SNMP V1 HN**<p>This template retrieve SNMP data from Unifi AP devices. MIBS requiriments: FROGFOOT-RESOURCES-MIB IANAifType-MIB IF-MIB SNMP-FRAMEWORK-MIB SNMPv2-CONF SNMPv2-MIB SNMPv2-SMI SNMPv2-TC UBNT-MIB UBNT-UniFi-MIB Author: Alex Moura</p>
        * [template_unifi_switch_temperature](Network Devices/Ubiquiti/template_unifi_switch_temperature)
            * **Unifi Switch 16 POE-150W Temperature**<p></p>
    * [Watchguard](Network Devices/Watchguard)
        * [template_firebox_watchguard_m400](Network Devices/Watchguard/template_firebox_watchguard_m400)
            * **Halley Firewall Watchguard M400**<p></p>
        * [template_watchguard_snmp_(post_v12.0)](Network Devices/Watchguard/template_watchguard_snmp_(post_v12.0))
            * **Watchguard Firewall**<p></p>
    * [YAMAHA](Network Devices/YAMAHA)
        * [template_ヤマハ_インテリジェントl2スイッチハブ_swx2300](Network Devices/YAMAHA/template_ヤマハ_インテリジェントl2スイッチハブ_swx2300)
            * **Temp_SWX2300**<p></p>
    * [Zyxel](Network Devices/Zyxel)
        * [template_zyxel_ndms](Network Devices/Zyxel/template_zyxel_ndms)
            * **Template SNMP ZyXEL NDMS**<p></p>
        * [template_zyxel_nxc5500_wlan_controller](Network Devices/Zyxel/template_zyxel_nxc5500_wlan_controller)
            * **Zyxel NXC5500 WLAN controller**<p>The template was presented as a zip archive</p>
    * [eXtreme](Network Devices/eXtreme)
        * [template_extreme_exos](Network Devices/eXtreme/template_extreme_exos)
            * **Template SNMP Extreme EXOS**<p></p>
        * [template_extreme_x450a](Network Devices/eXtreme/template_extreme_x450a)
            * **Template_Extreme_X450a**<p></p>
    * [template_actidata](Network Devices/template_actidata)
        * **Template Actidata NV1 SNMPv1**<p>Шаблон для Контроллера температуры и влажности Actidata NV1</p>
    * [template_agst_conflex](Network Devices/template_agst_conflex)
        * **ConflexSNMP**<p></p>
    * [template_asus-rt-ac87u](Network Devices/template_asus-rt-ac87u)
        * **ASUS-ルーター（RT-AC87U）**<p>ASUSルーター</p>
    * [template_avm_fritz!box_and_repeater_over_tr-064](Network Devices/template_avm_fritz!box_and_repeater_over_tr-064)
        * **AVM FRITZ!Box and Repeater over TR-064**<p>The template was presented as a zip archive</p>
    * [template_avm_fritzbox_and_fritzrepeater](Network Devices/template_avm_fritzbox_and_fritzrepeater)
        * **AVM FritzBox and FritzRepeater**<p>The template was presented as a zip archive</p>
    * [template_ciena_6500_optical_transport](Network Devices/template_ciena_6500_optical_transport)
        * **Template Ciena 6500 2**<p></p>
    * [template_ctcu_frm220](Network Devices/template_ctcu_frm220)
        * **Template CTCU Frm220**<p></p>
    * [template_fortinet_fortigate](Network Devices/template_fortinet_fortigate)
        * **Template Net Fortinet FortiGate SNMP**<p>Zabbix Template for Fortinet FortiGate URL: https://github.com/mbdraks/fortinet-zabbix Author: Michel Barbosa Version: 2.1.0 Exposes information obtained from the following MIBs (import is not required): - SNMPv2-MIB - IF-MIB - EtherLike-MIB - FORTINET-CORE-MIB - FORTINET-FORTIGATE-MIB This template also incorporates the exact same data collected by the following default templates (no import or link required): - Generic SNMP - Interfaces SNMP - EtherLike-MIB SNMP</p>
    * [template_freebox_monitoring](Network Devices/template_freebox_monitoring)
        * **Freebox monitoring**<p>The template was presented as a zip archive</p>
    * [template_h3c_wireless_ac_wx3500](Network Devices/template_h3c_wireless_ac_wx3500)
        * **Network-H3C-WLC**<p></p>
    * [template_ips2222_snmp](Network Devices/template_ips2222_snmp)
        * **IPS2222**<p></p>
    * [template_l2_discovery_module_for_lldp](Network Devices/template_l2_discovery_module_for_lldp)
        * **L2 Discovery Module for LLDP**<p>The template was presented as a tar.gz archive</p>
    * [template_meinberg_lantime](Network Devices/template_meinberg_lantime)
        * **Template - Device - MEINBERG LANTIME**<p></p>
    * [template_meraki_dashboard_polling](Network Devices/template_meraki_dashboard_polling)
        * **Template Meraki Dashboard**<p></p>
    * [template_nateks](Network Devices/template_nateks)
        * **Template Nateks FG-ACE-CON-VF**<p></p>
    * [template_nec_univerge_ix](Network Devices/template_nec_univerge_ix)
        * **UNIVERGE IX**<p></p>
    * [template_net_volt_netprobe_plus_snmpv2](Network Devices/template_net_volt_netprobe_plus_snmpv2)
        * **Template Net VOLT NetProbe Plus SNMPv2**<p></p>
    * [template_olt_g8ps-sino_telecom](Network Devices/template_olt_g8ps-sino_telecom)
        * **Template OLT G8PS - SINO Telecom**<p></p>
    * [template_olt_zte_c320_optical_power_attenuation](Network Devices/template_olt_zte_c320_optical_power_attenuation)
        * **Clientes OLT**<p></p>
    * [template_quagga_bgp_monitor_session](Network Devices/template_quagga_bgp_monitor_session)
        * **Quagga BGP monitor session**<p>The template was presented as a zip archive</p>
    * [template_repotec_rp-pg1626w_stacked](Network Devices/template_repotec_rp-pg1626w_stacked)
        * **Template Repotec-RP-PG1626W-Stacked**<p></p>
    * [template_ruijie](Network Devices/template_ruijie)
        * **Ruijie BBU**<p></p>
    * [template_ruijie_1](Network Devices/template_ruijie_1)
        * **Canon Color MF printers Template**<p>Template for color Canon Multi Functional printer.</p>
    * [template_ruijie_ap3220](Network Devices/template_ruijie_ap3220)
        * **Canon Color MF printers Template**<p>Template for color Canon Multi Functional printer.</p>
    * [template_siae_custom_shell_script](Network Devices/template_siae_custom_shell_script)
        * **SIAE Custom Shell Script**<p>The template was presented as a tar.gz archive</p>
    * [template_siae_snmpv2](Network Devices/template_siae_snmpv2)
        * **SIAE SNMPv2**<p>The template was presented as a tar.gz archive</p>
    * [template_snmp_furukawa_olt-onu](Network Devices/template_snmp_furukawa_olt-onu)
        * **Template SNMP Furukawa OLT-ONU G4S - G8S - G2500 - G1040 - LD3032**<p>Created by Samuel Martins (https://www.linkedin.com/in/slmartins/) Last update: 2021-03-08 Based on Furukawa user's guide - NT-GPONREV00–Março2019 https://github.com/slunart Compatbile with: OLT G4S Firmware: 6.11 OLT G8S Firmware: 1.12 OLT G2500 Firmware: 6.12 OLT G1040 OLT LD3032 Firmware: 2.02</p>
    * [template_snmp_router_ospf_v2](Network Devices/template_snmp_router_ospf_v2)
        * **Template SNMP Router OSPF v2**<p>https://share.zabbix.com/network_devices/snmp-router-ospf-v2-1</p>
    * [template_sophos_xg_firewall_version_18.0.x](Network Devices/template_sophos_xg_firewall_version_18.0.x)
        * **Template_Sophos XG FW 18 SNMPv2**<p>Template for SOPHOS XG (Version 18) series Firewall. (Tested on XG260 with Zabbix 5.0) Used MIB: SFOS-FIREWALL-MIB</p>
    * [template_spectralink_dect_server](Network Devices/template_spectralink_dect_server)
        * **Spectralink DECT server**<p></p>
    * [template_teltonika_rut950_and_rut955_snmp](Network Devices/template_teltonika_rut950_and_rut955_snmp)
        * **Template Teltonika RUT950 and RUT955 SNMP**<p>Monitors all parameters of Teltonika RUT9xx LTE routers Version 1.1 2021-08-04 by Pierre Fagrell: Added missing macros and value mappings for network interface discovery - required for traffic usage stats pierre@buggfix.se</p>
    * [template_templete_ubiquiti](Network Devices/template_templete_ubiquiti)
        * **templete rsg**<p></p>
    * [template_thecus_snmpv2_nas](Network Devices/template_thecus_snmpv2_nas)
        * **Template SNMP THECUS NAS**<p></p>
    * [template_witek_(wireless-tek)](Network Devices/template_witek_(wireless-tek))
        * **Witek Switch**<p>Test template</p>
    * [template_zte-c320](Network Devices/template_zte-c320)
        * **ZTE-C320-GPON-nor**<p></p>
    * [template_zte_c300_v1.2.5p3](Network Devices/template_zte_c300_v1.2.5p3)
        * **Template SNMP Device GPON ZTE fw 1.2.5p3**<p></p>
        * **Template ICMP Ping GPON**<p></p>
        * **Template SNMP Device GPON PARKS**<p></p>
    * [template_zte_c300_v2.1](Network Devices/template_zte_c300_v2.1)
        * **Template ICMP Ping GPON**<p></p>
        * **Template SNMP Device GPON PARKS**<p></p>
        * **Template SNMP Device GPON ZTE fw 2.1**<p></p>
* [Official Templates](Official Templates)
    * [Applications](Official Templates/Applications)
        * [template_ftp_service](Official Templates/Applications/template_ftp_service)
            * **Template App FTP Service**<p></p>
        * [template_http_service](Official Templates/Applications/template_http_service)
            * **Template App HTTP Service**<p></p>
        * [template_https_service](Official Templates/Applications/template_https_service)
            * **Template App HTTPS Service**<p></p>
        * [template_imap_service](Official Templates/Applications/template_imap_service)
            * **Template App IMAP Service**<p></p>
        * [template_java_applications_generic](Official Templates/Applications/template_java_applications_generic)
            * **Template JMX Generic**<p></p>
        * [template_ldap_service](Official Templates/Applications/template_ldap_service)
            * **Template App LDAP Service**<p></p>
        * [template_mysql](Official Templates/Applications/template_mysql)
            * **Template App MySQL**<p></p>
        * [template_nntp_service](Official Templates/Applications/template_nntp_service)
            * **Template App NNTP Service**<p></p>
        * [template_ntp_service](Official Templates/Applications/template_ntp_service)
            * **Template App NTP Service**<p></p>
        * [template_pop_service](Official Templates/Applications/template_pop_service)
            * **Template App POP Service**<p></p>
        * [template_smtp_service](Official Templates/Applications/template_smtp_service)
            * **Template App SMTP Service**<p></p>
        * [template_ssh_service](Official Templates/Applications/template_ssh_service)
            * **Template App SSH Service**<p></p>
        * [template_telnet_service](Official Templates/Applications/template_telnet_service)
            * **Template App Telnet Service**<p></p>
        * [template_tomcat](Official Templates/Applications/template_tomcat)
            * **Template JMX Tomcat**<p></p>
        * [template_zabbix_agent](Official Templates/Applications/template_zabbix_agent)
            * **Template App Zabbix Agent**<p></p>
    * [Network Devices](Official Templates/Network Devices)
        * [template_alcoma_alxxmp](Official Templates/Network Devices/template_alcoma_alxxmp)
            * **Template Alcoma ALxxMP**<p></p>
        * [template_draytek_corporation_mib](Official Templates/Network Devices/template_draytek_corporation_mib)
            * **DRAYTEK-CORPORATION.mib**<p>Generated by mib2zabbix</p>
        * [template_fortigate_fg_200b](Official Templates/Network Devices/template_fortigate_fg_200b)
            * **FG_200B**<p></p>
    * [Operating Systems](Official Templates/Operating Systems)
        * [template_operating_system_linux](Official Templates/Operating Systems/template_operating_system_linux)
            * **Template OS Linux**<p></p>
        * [template_operating_system_linux_(snmp)](Official Templates/Operating Systems/template_operating_system_linux_(snmp))
            * **Template SNMP OS Linux**<p></p>
        * [template_operating_system_windows](Official Templates/Operating Systems/template_operating_system_windows)
            * **Template OS Windows**<p></p>
        * [template_operating_system_windows_(snmp)](Official Templates/Operating Systems/template_operating_system_windows_(snmp))
            * **Template SNMP OS Windows**<p></p>
    * [SNMP Devices](Official Templates/SNMP Devices)
        * [template_snmp_device](Official Templates/SNMP Devices/template_snmp_device)
            * **Template SNMP Device**<p></p>
            * **Template SNMP Generic**<p></p>
            * **Template SNMP Interfaces**<p></p>
        * [template_snmp_disks_discovery](Official Templates/SNMP Devices/template_snmp_disks_discovery)
            * **Template SNMP Disks**<p></p>
        * [template_snmp_generic](Official Templates/SNMP Devices/template_snmp_generic)
            * **Template SNMP Generic**<p></p>
        * [template_snmp_interfaces_discovery](Official Templates/SNMP Devices/template_snmp_interfaces_discovery)
            * **Template SNMP Interfaces**<p></p>
        * [template_snmp_multicast_unicast_broadcast_packets_count](Official Templates/SNMP Devices/template_snmp_multicast_unicast_broadcast_packets_count)
            * **Template SNMP Packets**<p></p>
        * [template_snmp_processors_discovery](Official Templates/SNMP Devices/template_snmp_processors_discovery)
            * **Template SNMP Processors**<p></p>
    * [Server Hardware](Official Templates/Server Hardware)
        * [template_supermicro_mbd-x11scl-if-o](Official Templates/Server Hardware/template_supermicro_mbd-x11scl-if-o)
            * **Template IPMI Supermicro X11-SCL-IF-O**<p></p>
    * [Virtualization](Official Templates/Virtualization)
        * [template_vmware_general](Official Templates/Virtualization/template_vmware_general)
            * **Template Virt VMware**<p></p>
        * [template_vmware_guest](Official Templates/Virtualization/template_vmware_guest)
            * **Template Virt VMware Guest**<p></p>
        * [template_vmware_hypervisor](Official Templates/Virtualization/template_vmware_hypervisor)
            * **Template Virt VMware Hypervisor**<p></p>
    * [Zabbix components](Official Templates/Zabbix components)
        * [template_zabbix_proxy](Official Templates/Zabbix components/template_zabbix_proxy)
            * **Template App Zabbix Proxy**<p></p>
        * [template_zabbix_server](Official Templates/Zabbix components/template_zabbix_server)
            * **Template App Zabbix Server**<p></p>
    * [template_advanced_icmp_ping](Official Templates/template_advanced_icmp_ping)
        * **Advanced ICMP Ping**<p>The template was presented as a zip archive</p>
    * [template_container_monitoring](Official Templates/template_container_monitoring)
        * **Template Container Monitoring**<p></p>
    * [template_draytek_vigor_130_adsl_vdsl_modem](Official Templates/template_draytek_vigor_130_adsl_vdsl_modem)
        * **Draytek Vigor 130 Template (v1.0)**<p>Template for the Draytek Vigor 130 VDSL Modem.</p>
    * [template_icmp_ping](Official Templates/template_icmp_ping)
        * **Template Module ICMP Ping**<p>Template Module ICMP Ping version: 0.12</p>
    * [template_microsoft_iis_site_lld_discovery_and_monitoring_lld](Official Templates/template_microsoft_iis_site_lld_discovery_and_monitoring_lld)
        * **Template App IIS LLD Sites Monitoring**<p></p>
    * [template_modules_pack](Official Templates/template_modules_pack)
        * **Template Modules Pack**<p>The template was presented as a zip archive</p>
    * [template_proteco](Official Templates/template_proteco)
        * **Template Proteco**<p></p>
    * [template_proteco_1](Official Templates/template_proteco_1)
        * **Template Proteco**<p></p>
    * [template_vertiv](Official Templates/template_vertiv)
        * **Template-Vertiv**<p></p>
    * [template_vertiv_1](Official Templates/template_vertiv_1)
        * **Template-Vertiv**<p></p>
    * [template_volt_pop_protect_snmp](Official Templates/template_volt_pop_protect_snmp)
        * **Volt Pop Protect SNMP**<p></p>
    * [template_zabbix_official_pack](Official Templates/template_zabbix_official_pack)
        * **Zabbix official template pack**<p>The template was presented as a zip archive</p>
* [Operating Systems](Operating Systems)
    * [FreeBSD](Operating Systems/FreeBSD)
        * [template_freebsd_cpu_temperature_featuring_lld_(intel_&_amd)](Operating Systems/FreeBSD/template_freebsd_cpu_temperature_featuring_lld_(intel_&_amd))
            * **FreeBSD Core Temp**<p>Monitor core temperature of Intel CPUs. The 'coretemp' kernel module must be loaded.</p>
        * [template_ip_utilisation](Operating Systems/FreeBSD/template_ip_utilisation)
            * **FreeBSD IP statistics**<p></p>
        * [template_zfs](Operating Systems/FreeBSD/template_zfs)
            * **ZFS**<p>The template was presented as a zip archive</p>
    * [IBM i (i5_OS, OS_400) for IBM System i (AS_400)](Operating Systems/IBM i (i5_OS, OS_400) for IBM System i (AS_400))
        * [template_example_for_as_400_agent_emulator](Operating Systems/IBM i (i5_OS, OS_400) for IBM System i (AS_400)/template_example_for_as_400_agent_emulator)
            * **Template AS400**<p>Template for using with our own "agents"</p>
        * [template_zabbix_agent_emulator_for_as_400_platform](Operating Systems/IBM i (i5_OS, OS_400) for IBM System i (AS_400)/template_zabbix_agent_emulator_for_as_400_platform)
            * **Zabbix agent emulator for AS/400 platform**<p>The template was presented as a zip archive</p>
    * [Linux](Operating Systems/Linux)
        * [template_banwidth_monitoring_with_vnstat-includes_triggers](Operating Systems/Linux/template_banwidth_monitoring_with_vnstat-includes_triggers)
            * **Banwidth Monitoring with vnstat  - Includes triggers**<p>The template was presented as a zip archive</p>
        * [template_bcache](Operating Systems/Linux/template_bcache)
            * **Bcache**<p>The template was presented as a zip archive</p>
        * [template_bonding_interfaces](Operating Systems/Linux/template_bonding_interfaces)
            * **Bonding Interfaces**<p>The template was presented as a zip archive</p>
        * [template_conntrack](Operating Systems/Linux/template_conntrack)
            * **Template Network Performance Conntrack**<p></p>
        * [template_diskstat](Operating Systems/Linux/template_diskstat)
            * **DiskStat Template**<p>The template was presented as a zip archive</p>
        * [template_iostat_monitoring](Operating Systems/Linux/template_iostat_monitoring)
            * **Iostat monitoring**<p></p>
        * [template_linux_autodiscovery_disks,_proces,_tcp_udp_service](Operating Systems/Linux/template_linux_autodiscovery_disks,_proces,_tcp_udp_service)
            * **Linux autodiscovery : disks, proces, TCP/UDP service**<p>The template was presented as a zip archive</p>
        * [template_linux_disk_monitoring_with_iostat](Operating Systems/Linux/template_linux_disk_monitoring_with_iostat)
            * **Halley Linux Disk_iostat**<p></p>
        * [template_linux_grafana](Operating Systems/Linux/template_linux_grafana)
            * **Template OS Linux**<p></p>
        * [template_listen_port_discovery_and_port_netstat_moniting](Operating Systems/Linux/template_listen_port_discovery_and_port_netstat_moniting)
            * **Listen port discovery and port netstat moniting**<p>The template was presented as a zip archive</p>
        * [template_listening_tcp_port_discovery_and_monitoring](Operating Systems/Linux/template_listening_tcp_port_discovery_and_monitoring)
            * **TCP port monitoring**<p></p>
        * [template_lm-sensors_snmp](Operating Systems/Linux/template_lm-sensors_snmp)
            * **Template SNMPv2 LM-SENSORS**<p>Template for LM-SENSORS mib, works for any net-snmp based machine.</p>
        * [template_lvm_cache](Operating Systems/Linux/template_lvm_cache)
            * **LVM Cache**<p>LVM cache monitoring Details in kernel documentation https://www.kernel.org/doc/Documentation/device-mapper/cache.txt</p>
        * [template_lvm_thin_pool_and_lvm_thin_volume_monitoring](Operating Systems/Linux/template_lvm_thin_pool_and_lvm_thin_volume_monitoring)
            * **LVM Thin Pool and LVM Thin Volume Monitoring Template**<p>The template was presented as a zip archive</p>
        * [template_module_linux_active_user_status_by_zabbix_agent_active](Operating Systems/Linux/template_module_linux_active_user_status_by_zabbix_agent_active)
            * **Template Module Linux Active User Status by Zabbix Agent active**<p>This template collects and monitors active users on target hosts.</p>
        * [template_module_linux_xfs_by_zabbix_agent](Operating Systems/Linux/template_module_linux_xfs_by_zabbix_agent)
            * **Template Module Linux XFS by Zabbix agent**<p></p>
        * [template_monitor_mounts_on_fstab](Operating Systems/Linux/template_monitor_mounts_on_fstab)
            * **Template Check Mount Point**<p>Monitora os pontos de montagem do Gluster</p>
        * [template_monitor_one_linux_service_using_systemctl](Operating Systems/Linux/template_monitor_one_linux_service_using_systemctl)
            * **Monitor one Linux Services**<p></p>
        * [template_nfss_for_v3_&_v4_using_vfs.file.regex](Operating Systems/Linux/template_nfss_for_v3_&_v4_using_vfs.file.regex)
            * **Linux NFS v3 Client**<p></p>
            * **Linux NFS v4 Client**<p></p>
        * [template_ntp_checks](Operating Systems/Linux/template_ntp_checks)
            * **NTP CHECKS**<p>The template was presented as a zip archive</p>
        * [template_ntp_peer_offsets](Operating Systems/Linux/template_ntp_peer_offsets)
            * **Template NTP Peer Offsets**<p>The template was presented as a zip archive</p>
        * [template_ntp_time_monitor](Operating Systems/Linux/template_ntp_time_monitor)
            * **Template Time Drift OS Linux**<p></p>
            * **Template Time Offset OS Linux**<p></p>
        * [template_operating_system_identification](Operating Systems/Linux/template_operating_system_identification)
            * **Template Operating System Identification v2**<p></p>
        * [template_os_linux-plus](Operating Systems/Linux/template_os_linux-plus)
            * **Template OS Linux - Plus**<p>The template was presented as a zip archive</p>
        * [template_os_linux_diskstats](Operating Systems/Linux/template_os_linux_diskstats)
            * **OS Linux diskstats**<p>Self-contained template for monitoring disk statistics on Linux systems. Source: https://github.com/frei-style/zabbix-linux-diskstats-template</p>
        * [template_systemd_service_monitoring_via_zabbix_agent_2_(native_discovery)](Operating Systems/Linux/template_systemd_service_monitoring_via_zabbix_agent_2_(native_discovery))
            * **Template Module Linux systemd by Zabbix agent 2**<p></p>
        * [template_ucd_disks_monitoring](Operating Systems/Linux/template_ucd_disks_monitoring)
            * **Template SNMP UCD Disk**<p></p>
        * [template_zfs_on_linux](Operating Systems/Linux/template_zfs_on_linux)
            * **ZFS on Linux**<p></p>
        * [template_zypper_update_info](Operating Systems/Linux/template_zypper_update_info)
            * **Zypper update info**<p>The template was presented as a tar.gz archive</p>
    * [Mac OS](Operating Systems/Mac OS)
        * [template_macos_content_caching](Operating Systems/Mac OS/template_macos_content_caching)
            * **Template macOS Content Cache**<p>Runtime stats and storage monitoring for macOS High Sierra Caching Service.</p>
    * [RedHat](Operating Systems/RedHat)
        * [template_nfs_monitoring](Operating Systems/RedHat/template_nfs_monitoring)
            * **Template App NFS Service**<p>Template to monitor NFS via UserParameters in zabbix-agentd.conf file</p>
        * [template_yum_update_info](Operating Systems/RedHat/template_yum_update_info)
            * **YUM update info**<p>The template was presented as a zip archive</p>
    * [Security](Operating Systems/Security)
        * [template_security_check_cve-2016-0728_plus](Operating Systems/Security/template_security_check_cve-2016-0728_plus)
            * **Template Security Check CVE-2016-0728 Plus**<p>The template was presented as a zip archive</p>
    * [VMWare](Operating Systems/VMWare)
        * [template_esx_snmp](Operating Systems/VMWare/template_esx_snmp)
            * **ESX SNMP**<p>The template was presented as a zip archive</p>
        * [template_esxi_hp_smart_array_monitoring](Operating Systems/VMWare/template_esxi_hp_smart_array_monitoring)
            * **Template ESXi HP Smart Array**<p></p>
        * [template_esxi_snmp](Operating Systems/VMWare/template_esxi_snmp)
            * **ESXi SNMP**<p>The template was presented as a zip archive</p>
        * [template_esxi_snmp_only_for_zabbix3.0](Operating Systems/VMWare/template_esxi_snmp_only_for_zabbix3.0)
            * **Template SNMP OS ESXi**<p></p>
        * [template_esxi_snmp_ver_3.4](Operating Systems/VMWare/template_esxi_snmp_ver_3.4)
            * **Template SNMP OS ESXi**<p></p>
    * [Windows](Operating Systems/Windows)
        * [template_()_windows_iperius_backup](Operating Systems/Windows/template_()_windows_iperius_backup)
            * **(Template) Windows Iperius Backup**<p>The template was presented as a zip archive</p>
        * [template_()_windows_rdp_terminal_server](Operating Systems/Windows/template_()_windows_rdp_terminal_server)
            * **(Template) Windows RDP Terminal Server**<p>The template was presented as a zip archive</p>
        * [template_скрипт_+_шаблон_для_windows_lld_open_hardware_monitor](Operating Systems/Windows/template_скрипт_+_шаблон_для_windows_lld_open_hardware_monitor)
            * **Скрипт + Шаблон для Windows LLD Open Hardware Monitor**<p>The template was presented as a zip archive</p>
        * [template_ad_ds_health_and_performance](Operating Systems/Windows/template_ad_ds_health_and_performance)
            * **Template AD DS Health and Performance**<p></p>
        * [template_ad_ds_monitoring_and_attack_detection](Operating Systems/Windows/template_ad_ds_monitoring_and_attack_detection)
            * **Template AD DS Monitoring and Attack Detection**<p></p>
        * [template_agentless_storage_and_processor_statistics](Operating Systems/Windows/template_agentless_storage_and_processor_statistics)
            * **Template OS Windows WMI**<p></p>
        * [template_dfs_replication_for_zabbix_2.2_and_above](Operating Systems/Windows/template_dfs_replication_for_zabbix_2.2_and_above)
            * **DFS Replication for Zabbix 2.2 and above**<p>The template was presented as a zip archive</p>
        * [template_failed_logins_monitoring](Operating Systems/Windows/template_failed_logins_monitoring)
            * **Template Module Windows Failed Logins**<p></p>
        * [template_for_david_tobit](Operating Systems/Windows/template_for_david_tobit)
            * **Template for David Tobit**<p>The template was presented as a zip archive</p>
        * [template_for_icmp_ping_from_the_zabbix_windows_agent](Operating Systems/Windows/template_for_icmp_ping_from_the_zabbix_windows_agent)
            * **Template Module ICMP ping from the Zabbix Windows agent**<p>Oleg Kostikov aka Semiadmin Module for ICMP ping test from the Zabbix Windows agent. Put the comma-separated target list in user macro {$PING_LIST} at the template or host level and run the "get ICMP ping list" item. List example: 8.8.8.8,www.ya.ru,10.10.10.10</p>
        * [template_microsoft_dhcp_server_2012-2019](Operating Systems/Windows/template_microsoft_dhcp_server_2012-2019)
            * **Microsoft DHCP Server 2012-2019**<p>The template was presented as a zip archive</p>
        * [template_module_windows_users](Operating Systems/Windows/template_module_windows_users)
            * **Template Module Windows users by Zabbix agent**<p>Get a total of logged-in users in the system.</p>
            * **Template Module Windows users by Zabbix agent active**<p>Get a total of logged-in users in the system.</p>
        * [template_monitoramento_file_server_(file_server_resource_manager)_v.1.2](Operating Systems/Windows/template_monitoramento_file_server_(file_server_resource_manager)_v.1.2)
            * **Monitoramento File Server (File Server Resource Manager) V.1.2**<p>The template was presented as a zip archive</p>
        * [template_os_windows_cluster_services_(lld)](Operating Systems/Windows/template_os_windows_cluster_services_(lld))
            * **Template OS Windows Cluster Services (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_cluster_shared_volumes_(lld)](Operating Systems/Windows/template_os_windows_cluster_shared_volumes_(lld))
            * **Template OS Windows Cluster Shared Volumes (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_discovery_(lld)](Operating Systems/Windows/template_os_windows_discovery_(lld))
            * **Template OS Windows Discovery (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_discovery_iscsi_target_(lld)](Operating Systems/Windows/template_os_windows_discovery_iscsi_target_(lld))
            * **Template OS Windows Discovery iSCSI Target (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_discovery_performance_monitoring_(lld)](Operating Systems/Windows/template_os_windows_discovery_performance_monitoring_(lld))
            * **Template OS Windows Discovery Performance Monitoring (LLD)**<p>The template was presented as a zip archive</p>
        * [template_os_windows_server](Operating Systems/Windows/template_os_windows_server)
            * **Template OS Windows Server**<p>Шаблон подходит для ОС Windows Server 2012, 2016. Посетите. Группа ВК:https://vk.com/simplezabbix Видео про шаблон:https://youtu.be/FWqFyRu8hmQ</p>
        * [template_os_windows_server_2012-2016_v.1.1](Operating Systems/Windows/template_os_windows_server_2012-2016_v.1.1)
            * **Template OS Windows Server 2012-2016**<p>Шаблон подходит для ОС Windows Server 2012, 2016. Посетите. Группа ВК:https://vk.com/simplezabbix Видео про шаблон:https://youtu.be/FWqFyRu8hmQ</p>
        * [template_pdh2zabbix_windows_perfcounter_support](Operating Systems/Windows/template_pdh2zabbix_windows_perfcounter_support)
            * **pdh2zabbix Windows PerfCounter Support**<p>The template was presented as a zip archive</p>
        * [template_rdp_users](Operating Systems/Windows/template_rdp_users)
            * **RDPUsers**<p></p>
        * [template_rdp_users_3_items](Operating Systems/Windows/template_rdp_users_3_items)
            * **Template RDP Users 3 items**<p>The template was presented as a zip archive</p>
        * [template_smb_module](Operating Systems/Windows/template_smb_module)
            * **SMB Template Module**<p>The template was presented as a zip archive</p>
        * [template_storage_disk_c_and_disk_d](Operating Systems/Windows/template_storage_disk_c_and_disk_d)
            * **Storage**<p></p>
        * [template_tcp_udp_windows_connections](Operating Systems/Windows/template_tcp_udp_windows_connections)
            * **TCP/UDP Stats Windows**<p></p>
        * [template_top_20_process-monitoramento_dos_processos_em_execução_no_windows](Operating Systems/Windows/template_top_20_process-monitoramento_dos_processos_em_execução_no_windows)
            * **TOP 20 Process - Monitoramento dos Processos em execução no Windows**<p>The template was presented as a zip archive</p>
        * [template_vmware_tools_windows_performance_counters](Operating Systems/Windows/template_vmware_tools_windows_performance_counters)
            * **Template VMware Tools Windows performance counters**<p></p>
        * [template_windows_ad_and_security_checks](Operating Systems/Windows/template_windows_ad_and_security_checks)
            * **Windows AD and Security Checks**<p>The template was presented as a zip archive</p>
        * [template_windows_ad_event_log_(2008_r2-2012_r2)](Operating Systems/Windows/template_windows_ad_event_log_(2008_r2-2012_r2))
            * **Event User Log**<p></p>
        * [template_windows_defender_and_antimalware_eventlog_monitoring](Operating Systems/Windows/template_windows_defender_and_antimalware_eventlog_monitoring)
            * **Metrics Windows Defender**<p>Uses macro {$AV_EVENTLOG} for the eventlog, Windows defender uses "Microsoft-Windows-Windows Defender/Operational". Windows Antimalware uses "System", but also needs {$AV_SOURCE} set to "Microsoft Antimalware", default value in the template is an empty string.</p>
        * [template_windows_defender_wmi_monitoring](Operating Systems/Windows/template_windows_defender_wmi_monitoring)
            * **Windows Defender WMI**<p></p>
        * [template_windows_dhcp_server_scopes_discovery_(snmp)](Operating Systems/Windows/template_windows_dhcp_server_scopes_discovery_(snmp))
            * **Template Discovery DHCP scopes**<p></p>
        * [template_windows_disk_space_monitoring](Operating Systems/Windows/template_windows_disk_space_monitoring)
            * **Template OS Windows Disk Space**<p>includes used disk space Trigger goes below a certain level. the Default is 2GB but is configurable through macro.</p>
        * [template_windows_grafana](Operating Systems/Windows/template_windows_grafana)
            * **Template OS Windows**<p></p>
        * [template_windows_license_status](Operating Systems/Windows/template_windows_license_status)
            * **Template Windows License Status**<p>The template was presented as a zip archive</p>
        * [template_windows_modifed](Operating Systems/Windows/template_windows_modifed)
            * **Template OS Windows**<p></p>
        * [template_windows_physical_drive_iops](Operating Systems/Windows/template_windows_physical_drive_iops)
            * **Windows Physical Disk IOPS**<p></p>
        * [template_windows_rdp_terminal_server](Operating Systems/Windows/template_windows_rdp_terminal_server)
            * **Template Windows RDP Terminal Server**<p>The template was presented as a zip archive</p>
        * [template_windows_service_monitor_for_zabbix](Operating Systems/Windows/template_windows_service_monitor_for_zabbix)
            * **Windows Service Monitor for Zabbix**<p>The template was presented as a zip archive</p>
        * [template_windows_shadow_copies_small_tega](Operating Systems/Windows/template_windows_shadow_copies_small_tega)
            * **Template Windows Shadow Copies small Tega**<p>The template was presented as a zip archive</p>
        * [template_windows_storage_spaces](Operating Systems/Windows/template_windows_storage_spaces)
            * **Template Windows Storage Spaces**<p>The template was presented as a zip archive</p>
        * [template_windows_updates_vbscript](Operating Systems/Windows/template_windows_updates_vbscript)
            * **Windows updates vbscript**<p>The template was presented as a zip archive</p>
        * [template_windows_wbadmin_log](Operating Systems/Windows/template_windows_wbadmin_log)
            * **Event Windows Backup**<p></p>
        * [template_zabbix-check_windows_update_(v1.0)](Operating Systems/Windows/template_zabbix-check_windows_update_(v1.0))
            * **Zabbix - Check Windows Update (v1.0)**<p>The template was presented as a zip archive</p>
        * [template_zabbix_for_ad_replication_and_security_audit](Operating Systems/Windows/template_zabbix_for_ad_replication_and_security_audit)
            * **Zabbix template for AD replication and security audit**<p>The template was presented as a zip archive</p>
        * [template_zabbix_for_microsoft_windows_server](Operating Systems/Windows/template_zabbix_for_microsoft_windows_server)
            * **Template OS Windows Server Baseline**<p>Zabbix template for Microsoft Windows Server. Tested on Microsoft Windows Server 2012, 2012 R2 and 2016. It may work with earlier versions, but some items (with missing performance counters) may be unsupported. Tested on Zabbix 3.4.0. It may work with earlier versions, but some items (for example service.info[service,<param>]) may be unsupported. Mantas Tumenas. mantas.tumenas@gmail.com</p>
        * [template_zabbix_for_ntfs_mountpoins_as_folders](Operating Systems/Windows/template_zabbix_for_ntfs_mountpoins_as_folders)
            * **getWindowsMountPointsToFolders**<p>Get Windows servers mount points to folders</p>
    * [macOS](Operating Systems/macOS)
        * [template_zabbix_macosx_sender](Operating Systems/macOS/template_zabbix_macosx_sender)
            * **Zabbix MacOSX Sender**<p>The template was presented as a zip archive</p>
    * [template_ativação_do_windows](Operating Systems/template_ativação_do_windows)
        * **Template Ativacao do Windows**<p></p>
    * [template_check_remote_ports_from_zabbix_agent_(from_host)](Operating Systems/template_check_remote_ports_from_zabbix_agent_(from_host))
        * **Check remote ports from Zabbix agent (from host)**<p>The template was presented as a zip archive</p>
    * [template_domination](Operating Systems/template_domination)
        * **Domination**<p></p>
    * [template_escopo_dhcp_e_estatisticas](Operating Systems/template_escopo_dhcp_e_estatisticas)
        * **Template HSC Discovery DHCP scopes - HSC**<p></p>
    * [template_linux_services](Operating Systems/template_linux_services)
        * **Template Linux Services**<p></p>
    * [template_microsoft_dhcp_server_2012-2019_for_5.4](Operating Systems/template_microsoft_dhcp_server_2012-2019_for_5.4)
        * **APP Discovery DHCP scopes**<p>Created by Dušan Priechodský edited by Edson Freitas</p>
    * [template_module_mdadm](Operating Systems/template_module_mdadm)
        * **Template Module MDADM**<p>The template was presented as a zip archive</p>
    * [template_monitor_network_services_automatically](Operating Systems/template_monitor_network_services_automatically)
        * **Monitor network services automatically**<p>The template was presented as a zip archive</p>
    * [template_nfs_and_mounts_check](Operating Systems/template_nfs_and_mounts_check)
        * **NFS and mounts check**<p>The template was presented as a zip archive</p>
    * [template_snmp_linux_processes_load](Operating Systems/template_snmp_linux_processes_load)
        * **SNMP Linux Processes Load**<p></p>
    * [template_snmp_time_difference](Operating Systems/template_snmp_time_difference)
        * **_Template SNMP Time Diff**<p></p>
    * [template_systemd_service_monitoring](Operating Systems/template_systemd_service_monitoring)
        * **systemd Service Monitoring**<p>The template was presented as a zip archive</p>
    * [template_teamd_monitoring](Operating Systems/template_teamd_monitoring)
        * **Teamd Monitoring**<p>The template was presented as a zip archive</p>
    * [template_zabbix-check_windows_firewall_(v1.0)](Operating Systems/template_zabbix-check_windows_firewall_(v1.0))
        * **Zabbix - Check Windows Firewall (v1.0)**<p>The template was presented as a zip archive</p>
    * [template_zfs](Operating Systems/template_zfs)
        * **ZFS**<p>The template was presented as a zip archive</p>
* [Power (UPS)](Power (UPS))
    * [APC](Power (UPS)/APC)
        * [template_apc_ats_rack-mount_transfer_switches](Power (UPS)/APC/template_apc_ats_rack-mount_transfer_switches)
            * **Template APC ATS**<p>APC Rack Automatic Transfer Switches (rack ATS) provide reliable, redundant rack mount power to single-corded equipment. The rack ATS has dual input power cords supplying power to the connected load. If the primary power source becomes unavailable, the rack ATS will seamlessly source power from the secondary source without interrupting critical loads.</p>
        * [template_apc_inrow](Power (UPS)/APC/template_apc_inrow)
            * **Template SNMP APC InRow**<p></p>
        * [template_apc_network_management_card_2](Power (UPS)/APC/template_apc_network_management_card_2)
            * **Template_APC_NMC2**<p></p>
        * [template_apc_pdu_ap7953](Power (UPS)/APC/template_apc_pdu_ap7953)
            * **Template SNMP APC PDU AP79XX**<p></p>
        * [template_apc_pdu_detailed](Power (UPS)/APC/template_apc_pdu_detailed)
            * **APC PDU**<p></p>
        * [template_apc_pdu_new_snmp](Power (UPS)/APC/template_apc_pdu_new_snmp)
            * **Template SNMP Tripplite**<p></p>
            * **Template SNMP APC PDU**<p></p>
        * [template_apc_pdu_temperature](Power (UPS)/APC/template_apc_pdu_temperature)
            * **Template APC PDU**<p></p>
        * [template_apc_smart-ups_750](Power (UPS)/APC/template_apc_smart-ups_750)
            * **Template APC Smart-UPS**<p></p>
        * [template_apc_smart-ups_through_apcupsd_and_ssh](Power (UPS)/APC/template_apc_smart-ups_through_apcupsd_and_ssh)
            * **APC Smart-UPS through apcupsd and ssh**<p></p>
        * [template_apc_ups](Power (UPS)/APC/template_apc_ups)
            * **APC UPS**<p>The template was presented as a zip archive</p>
        * [template_apc_ups_nmc_2_ap9619](Power (UPS)/APC/template_apc_ups_nmc_2_ap9619)
            * **Template APC NMC 2 AP9619**<p></p>
        * [template_apc_windows_agent_monitor](Power (UPS)/APC/template_apc_windows_agent_monitor)
            * **APC Windows agent monitor**<p>Universal template for APC Agent for windows</p>
        * [template_apcupsd](Power (UPS)/APC/template_apcupsd)
            * **Template APCUPSd**<p>Шаблон APCUPSd</p>
        * [template_ats_ap4423](Power (UPS)/APC/template_ats_ap4423)
            * **Template APC ATS**<p>APC Rack Automatic Transfer Switches (rack ATS) provide reliable, redundant rack mount power to single-corded equipment. The rack ATS has dual input power cords supplying power to the connected load. If the primary power source becomes unavailable, the rack ATS will seamlessly source power from the secondary source without interrupting critical loads.</p>
        * [template_nobreak-apc-smart-ups-3000bi-br](Power (UPS)/APC/template_nobreak-apc-smart-ups-3000bi-br)
            * **Nobreak-APC-SMART-UPS-3000BI-BR**<p>## In English: Template for Zabbix 3.4 and above. Collects and displays information about voltage, current, power, status, temperature, and battery usage. UPS MIB: http://www.oidview.com/mibs/0/UPS-MIB.html Software SGM Auto-Shutdown V4.1: http://www.apc.com/shop/br/pt/products/Software-SGM-Auto-Shutdown-V4-1-para-Linux-s%C3%B3-Brasil-/P-SFSGM41L?isCurrentSite=true --------- ## Em Português: Template para Zabbix 3.4 ou superior. Coleta e exibe informações da tensão, corrente, potência, status, temperatura e uso da bateria. UPS MIB: http://www.oidview.com/mibs/0/UPS-MIB.html Software SGM Auto-Shutdown V4.1: http://www.apc.com/shop/br/pt/products/Software-SGM-Auto-Shutdown-V4-1-para-Linux-s%C3%B3-Brasil-/P-SFSGM41L?isCurrentSite=true --------- ## Developed by: * Victor Igor (victor.igor.redes@gmail.com), sysadmin; * Aécio Pires (http://aeciopires.com), sysadmin. Shared by **Dynavideo** (http://www.dynavideo.com.br)</p>
        * [template_rack_pdu](Power (UPS)/APC/template_rack_pdu)
            * **Template_APC_Monitor_RackPDU**<p></p>
        * [template_smartups_2000_3000_5000](Power (UPS)/APC/template_smartups_2000_3000_5000)
            * **SmartUPS 2000/3000/5000**<p>The template was presented as a zip archive</p>
    * [Cyberpower](Power (UPS)/Cyberpower)
        * [template_cyberpower_rmcard305(205)](Power (UPS)/Cyberpower/template_cyberpower_rmcard305(205))
            * **Template Module Cyberpower RMCARD305**<p>SNMPv2 Template for Cyberpower's remote management card ver.305 (205) used in OR and PR-series UPSes. Tested on firmware version 1.3.0. Created by Taurus (https://github.com/RusTaurus) MIBs used: CPS-MIB (v2.9) https://www.cyberpowersystems.com/products/software/mib-files/</p>
    * [Eaton Powerware](Power (UPS)/Eaton Powerware)
        * [template_eaton_ats_230v_16a](Power (UPS)/Eaton Powerware/template_eaton_ats_230v_16a)
            * **Template SNMP Eaton ATS**<p></p>
        * [template_eaton_powerware_9130](Power (UPS)/Eaton Powerware/template_eaton_powerware_9130)
            * **Eaton 9130 Template**<p></p>
        * [template_eaton_powerware_9150](Power (UPS)/Eaton Powerware/template_eaton_powerware_9150)
            * **Eaton 9130 Template**<p></p>
        * [template_eaton_powerware_9355](Power (UPS)/Eaton Powerware/template_eaton_powerware_9355)
            * **Eaton Powerware 9355**<p>The template was presented as a zip archive</p>
        * [template_eaton_powerware_9355-full_english](Power (UPS)/Eaton Powerware/template_eaton_powerware_9355-full_english)
            * **Eaton PowerWare 9355 - Full English**<p>The template was presented as a zip archive</p>
        * [template_eaton_powerware_9355_1](Power (UPS)/Eaton Powerware/template_eaton_powerware_9355_1)
            * **Eaton Powerware 9355**<p>The template was presented as a zip archive</p>
        * [template_eaton_powerware_9390](Power (UPS)/Eaton Powerware/template_eaton_powerware_9390)
            * **Eaton Powerware 9390**<p>The template was presented as a zip archive</p>
    * [Eaton](Power (UPS)/Eaton)
        * [template_eaton_5px](Power (UPS)/Eaton/template_eaton_5px)
            * **Eaton 5PX**<p>The template was presented as a zip archive</p>
        * [template_eaton_9px_6000i_ups](Power (UPS)/Eaton/template_eaton_9px_6000i_ups)
            * **EATON Mistral**<p></p>
        * [template_eaton_ats_16a](Power (UPS)/Eaton/template_eaton_ats_16a)
            * **Eaton ATS 230V 16A**<p></p>
        * [template_eaton_ats_30a](Power (UPS)/Eaton/template_eaton_ats_30a)
            * **Eaton ATS 230V 30A**<p></p>
        * [template_eaton_powerware_9390_pt-br](Power (UPS)/Eaton/template_eaton_powerware_9390_pt-br)
            * **Template_Powerware9390-Pt-Br**<p></p>
        * [template_eaton_ups](Power (UPS)/Eaton/template_eaton_ups)
            * **Template Eaton UPS**<p></p>
    * [Emerson NP](Power (UPS)/Emerson NP)
        * [template_emerson_liebert_gxt](Power (UPS)/Emerson NP/template_emerson_liebert_gxt)
            * **Emerson_Liebert**<p></p>
        * [template_emerson_nxr_ups](Power (UPS)/Emerson NP/template_emerson_nxr_ups)
            * **Emerson NXR UPS**<p></p>
    * [Engetron](Power (UPS)/Engetron)
        * [template_engetron_ups](Power (UPS)/Engetron/template_engetron_ups)
            * **Template Engetron UPS**<p></p>
        * [template_ups_engetron_wbrc-ii_snmp_v1](Power (UPS)/Engetron/template_ups_engetron_wbrc-ii_snmp_v1)
            * **Template Nobreak Engetron SNMP v1**<p></p>
    * [Entel](Power (UPS)/Entel)
        * [template_энтел_плата_сетевого_управления](Power (UPS)/Entel/template_энтел_плата_сетевого_управления)
            * **ENTEL 1PH UPS**<p></p>
        * [template_entel_1_phase_ups](Power (UPS)/Entel/template_entel_1_phase_ups)
            * **ENTEL 1PH UPS**<p></p>
    * [Gamatronic](Power (UPS)/Gamatronic)
        * [template_gamatronic_power+](Power (UPS)/Gamatronic/template_gamatronic_power+)
            * **Gamatronic Power+**<p>The template was presented as a zip archive</p>
    * [General Electric](Power (UPS)/General Electric)
        * [template_ge_lp33_triphase](Power (UPS)/General Electric/template_ge_lp33_triphase)
            * **UPS GE LP33 - TriPhase**<p>UPS General Electric - Model LP 33 Trifásica - Cláudio Ferreira</p>
    * [HP](Power (UPS)/HP)
        * [template_hp_pdu_(traps)](Power (UPS)/HP/template_hp_pdu_(traps))
            * **Monitoring PDU**<p></p>
    * [Ippon](Power (UPS)/Ippon)
        * [template_ippon_smart_ups_3000_+_winpower](Power (UPS)/Ippon/template_ippon_smart_ups_3000_+_winpower)
            * **Ippon Smart UPS 3000 + Winpower**<p>The template was presented as a zip archive</p>
        * [template_zbx-ups](Power (UPS)/Ippon/template_zbx-ups)
            * **zbx-ups**<p>The template was presented as a zip archive</p>
    * [Legrand Inform](Power (UPS)/Legrand Inform)
        * [template_legrand_cs-121_multiphase_auto_discovery](Power (UPS)/Legrand Inform/template_legrand_cs-121_multiphase_auto_discovery)
            * **HW UPS Legrand CS121**<p></p>
        * [template_legrand_cs-141_multiphase_auto_discovery](Power (UPS)/Legrand Inform/template_legrand_cs-141_multiphase_auto_discovery)
            * **HW UPS Legrand CS141**<p></p>
        * [template_legrand_cs_121](Power (UPS)/Legrand Inform/template_legrand_cs_121)
            * **Halley UPS Legrand cs121**<p></p>
        * [template_raritan_pdu_px3](Power (UPS)/Legrand Inform/template_raritan_pdu_px3)
            * **Template Raritan PDU PX3**<p>Zabbix monitoring template for Raritan PDU PX3-5466R This template was tested only on Zabbix 4.4 and PX3-5466R devices but may work on other models too. The sensor discovery is simplistic and many assumptions were made, which might require little changes to make it work on other models. The discovery rules are set to 1 minute interval and the discovered items are also set to 1 minute interval in order to allow quick tests. For real deployments you should create your own template, link this template to your own template and override the discovery intervals with values that make sense for you. For example, we use 1 day interval for the discovery rules because our power topology is pretty static and once the first discovery is done there is no need to keep discovery rules running often. The triggers are defined based on the sensor states in order to respect the thresholds defined in each PDU, and for that reason the actual PDU thresholds don't show in the graphs.</p>
        * [template_raritan_px_pdu](Power (UPS)/Legrand Inform/template_raritan_px_pdu)
            * **Template Raritan PDU**<p></p>
    * [Liebert](Power (UPS)/Liebert)
        * [template_vertiv_exs_snmp](Power (UPS)/Liebert/template_vertiv_exs_snmp)
            * **Template_Vertiv EXS UPS**<p></p>
    * [OMRON](Power (UPS)/OMRON)
        * [template_snmp_ups_omron_sc21](Power (UPS)/OMRON/template_snmp_ups_omron_sc21)
            * **Template SNMP Omron UPS**<p></p>
    * [Others](Power (UPS)/Others)
        * [template_bel_fuse_nac1006](Power (UPS)/Others/template_bel_fuse_nac1006)
            * **Bel Fuse NAC1006**<p>The template was presented as a zip archive</p>
        * [template_emerson_ita](Power (UPS)/Others/template_emerson_ita)
            * **Template Emerson ITA**<p></p>
        * [template_hw_mystrom_ecs](Power (UPS)/Others/template_hw_mystrom_ecs)
            * **HW myStrom ECS**<p>Monitoring template for myStrom ECS (Energy Control Switch). Source: https://github.com/frei-style/zabbix-mystrom-ecs-template</p>
        * [template_murata_mwoces-211](Power (UPS)/Others/template_murata_mwoces-211)
            * **Murata MWOCES-211**<p>The template was presented as a zip archive</p>
        * [template_network_ups_tool_basic_monitoring](Power (UPS)/Others/template_network_ups_tool_basic_monitoring)
            * **Network UPS Tool Basic monitoring**<p>The template was presented as a zip archive</p>
        * [template_snmp_reilo_ups](Power (UPS)/Others/template_snmp_reilo_ups)
            * **Template SNMP Reillo UPS**<p></p>
        * [template_snr-ups-onrm_netagent_ix](Power (UPS)/Others/template_snr-ups-onrm_netagent_ix)
            * **Template NetAgent UPS**<p></p>
        * [template_socomec_netys_rt-snmp_v1](Power (UPS)/Others/template_socomec_netys_rt-snmp_v1)
            * **SOCOMEC UPS**<p></p>
        * [template_socomec_netys_rt_(snmp_mini)](Power (UPS)/Others/template_socomec_netys_rt_(snmp_mini))
            * **SOCOMEC UPS**<p></p>
        * [template_universal_ups_snmp_(rfc-1628)](Power (UPS)/Others/template_universal_ups_snmp_(rfc-1628))
            * **Template UPS RFC 1628 SNMP**<p></p>
        * [template_ups_microtek_max_plus_series_2kva](Power (UPS)/Others/template_ups_microtek_max_plus_series_2kva)
            * **Template UPS Microtek MAX plus SERIES 2kVA**<p>Created 21 Apr 2020 by Charles for Aurinoco by full clone of Template UPS - diogont (thanks Diogo Teixeira) then: . Added macros: .. {$UPS_BATTERY_VOLTAGE_LOW} .. {$UPS_BATTERY_VOLTAGE_VERY_LOW} . Deleted unpopulated and incredible items: .. UPS battery capacity (%) .. UPS battery temperature .. UPS input current .. UPS input power .. UPS run time remaining .. UPS time on battery . Fixed item: UPS battery voltage . Added triggers for: .. UPS battery voltage low .. UPS battery voltage very low</p>
    * [Powercom](Power (UPS)/Powercom)
        * [template_powercom_ups_monitoring_throught_upsmon_pro_web](Power (UPS)/Powercom/template_powercom_ups_monitoring_throught_upsmon_pro_web)
            * **UPSMON Pro**<p></p>
        * [template_snmp_netagent_cy504_powercom](Power (UPS)/Powercom/template_snmp_netagent_cy504_powercom)
            * **Template_PowerCom**<p></p>
    * [SMS](Power (UPS)/SMS)
        * [template_nobreak_sms_power_view](Power (UPS)/SMS/template_nobreak_sms_power_view)
            * **Template Nobreak SMS Powerview by HTTP**<p>Version 1.0. Para utilização com o software SMS Power View, testado com o aplicativo versão Versão: V3.00.02.00. Meu Nobreak é Entrada/Saída 220V, portanto para 110V seriam necessários ajustes. Se tiver alguém utilizando eu posso utilizar parâmetros como Macro. Este template funciona realizando o parse do código da página http://localhost:8080/sms/s2/atualizaBlock.action que possui comentários com os dados do Nobreak.</p>
    * [Socomec](Power (UPS)/Socomec)
        * [template_socomec_ups_modulys](Power (UPS)/Socomec/template_socomec_ups_modulys)
            * **Socomec UPS**<p></p>
    * [Tripplite](Power (UPS)/Tripplite)
        * [template_tripplite-pdu_(updated)](Power (UPS)/Tripplite/template_tripplite-pdu_(updated))
            * **Template SNMP Tripp Lite PDU 15**<p></p>
        * [template_tripplite_webcardlx](Power (UPS)/Tripplite/template_tripplite_webcardlx)
            * **Template SNMP Tripplite WEBCARDLX**<p></p>
    * [UPS Templates](Power (UPS)/UPS Templates)
        * [template_apc_smartups](Power (UPS)/UPS Templates/template_apc_smartups)
            * **Template Schneider UPS**<p></p>
        * [template_inform_flexipower](Power (UPS)/UPS Templates/template_inform_flexipower)
            * **Template_UPS_Inform-flexipower**<p></p>
        * [template_module_ups](Power (UPS)/UPS Templates/template_module_ups)
            * **Template Module UPS**<p>Template para módulos UPS (Nobreaks), em conformidade com a RFC 1628 de Maio de 1994. Link: https://tools.ietf.org/html/rfc1628</p>
        * [template_network_ups-three-phase_(generic)](Power (UPS)/UPS Templates/template_network_ups-three-phase_(generic))
            * **Template UPS TRIPH - diogont**<p></p>
    * [template_cover_ups](Power (UPS)/template_cover_ups)
        * **Cover UPS**<p>The template was presented as a zip archive</p>
    * [template_cyberpower_ups_(remote_management_card_205)](Power (UPS)/template_cyberpower_ups_(remote_management_card_205))
        * **UPS CyberPower PR1000RT2U**<p></p>
    * [template_delta_ups](Power (UPS)/template_delta_ups)
        * **UPS Delta**<p></p>
    * [template_delta_ups_snmpv1](Power (UPS)/template_delta_ups_snmpv1)
        * **Delta UPS Template SNMP v1**<p></p>
    * [template_east_ups](Power (UPS)/template_east_ups)
        * **Template East Nobreak**<p></p>
    * [template_eltek_flatpack_s](Power (UPS)/template_eltek_flatpack_s)
        * **Eltek Flatpack S**<p>Eltek Flatpack S DC-power system. Template for 2 rectifiers, 1 battery set. No solar power. No wind. No generator. Version 0.3 - Kari Karvonen <kari.karvonen@kasenet.fi> Eltek mibs available ftp://ftp.eltek.com. Ask your dealer or support for username and pass.</p>
    * [template_enlogic_rack_pdu_2.0](Power (UPS)/template_enlogic_rack_pdu_2.0)
        * **Enlogic Metered PDU**<p></p>
    * [template_hp_r5000_ups](Power (UPS)/template_hp_r5000_ups)
        * **Template HP R5000 SNMP**<p>HP R5000 UPS SNMP Made bu Ennio</p>
    * [template_huawei_ups](Power (UPS)/template_huawei_ups)
        * **Huawei UPS**<p></p>
    * [template_huawei_ups2000](Power (UPS)/template_huawei_ups2000)
        * **Template Huawei 10K UPS**<p></p>
    * [template_janitza_uv](Power (UPS)/template_janitza_uv)
        * **Janitza-UV**<p></p>
    * [template_liebert_gxt4_ups-unit_card_is-unity-dp_by_vertiv](Power (UPS)/template_liebert_gxt4_ups-unit_card_is-unity-dp_by_vertiv)
        * **Template_Liebert_GXT4_UPS**<p></p>
    * [template_minuteman_ups](Power (UPS)/template_minuteman_ups)
        * **Template SNMP Minuteman UPS**<p></p>
    * [template_net_volt_full_power_380_1u_gerenciável_snmpv2](Power (UPS)/template_net_volt_full_power_380_1u_gerenciável_snmpv2)
        * **Template Net VOLT Full Power SNMPv2**<p></p>
    * [template_network_ups_(generic)](Power (UPS)/template_network_ups_(generic))
        * **Template UPS - diogont**<p></p>
    * [template_network_ups_tools_(nut)](Power (UPS)/template_network_ups_tools_(nut))
        * **Network UPS Tools (NUT)**<p>The template was presented as a zip archive</p>
    * [template_network_ups_tools_(nut)_v.2](Power (UPS)/template_network_ups_tools_(nut)_v.2)
        * **Network UPS Tools (NUT) v.2**<p>The template was presented as a tar.gz archive</p>
    * [template_nobreak_engetron](Power (UPS)/template_nobreak_engetron)
        * **Template Nobreak Engetron**<p></p>
    * [template_nobreak_smart-ups_x_3000-br](Power (UPS)/template_nobreak_smart-ups_x_3000-br)
        * **Nobreak Smart-UPS X 3000-BR**<p>The template was presented as a zip archive</p>
    * [template_nobreak_sms_sinus_triphases](Power (UPS)/template_nobreak_sms_sinus_triphases)
        * **Template Nobreak SMS Sinus Triphases**<p>Para toda linha de nobreak sinus triphases</p>
    * [template_nut_with_lld_and_dependent_items](Power (UPS)/template_nut_with_lld_and_dependent_items)
        * **NUT with LLD and dependent items**<p>The template was presented as a zip archive</p>
    * [template_online_usv_xanto_s1500r](Power (UPS)/template_online_usv_xanto_s1500r)
        * **Xanto S1500R Template**<p></p>
    * [template_packetflux](Power (UPS)/template_packetflux)
        * **Packetflux**<p></p>
    * [template_piton_xm20](Power (UPS)/template_piton_xm20)
        * **Template PitON**<p></p>
    * [template_powertek_1-phase_pdu](Power (UPS)/template_powertek_1-phase_pdu)
        * **Template Powertek 1 Phase PDU**<p>Created by Joakim Kingström at Sports Interactive.</p>
    * [template_proteco](Power (UPS)/template_proteco)
        * **Template Proteco**<p></p>
    * [template_proteco_1](Power (UPS)/template_proteco_1)
        * **Template Proteco**<p></p>
    * [template_riello_netman204_ups](Power (UPS)/template_riello_netman204_ups)
        * **Template SNMP Riello NetMan204 UPS**<p></p>
    * [template_riello_ups](Power (UPS)/template_riello_ups)
        * **Template SNMP Riello UPS**<p></p>
    * [template_socomec_masterys_gp](Power (UPS)/template_socomec_masterys_gp)
        * **Socomec Masterys GP**<p>The template was presented as a zip archive</p>
    * [template_stark_country_3000_online](Power (UPS)/template_stark_country_3000_online)
        * **Stark-3000-snmp**<p></p>
    * [template_tripplite_ups](Power (UPS)/template_tripplite_ups)
        * **Template SNMP Tripplite**<p></p>
    * [template_ups(gamatronic)](Power (UPS)/template_ups(gamatronic))
        * **UPS(Gamatronic) Template**<p>The template was presented as a zip archive</p>
    * [template_ups_abb](Power (UPS)/template_ups_abb)
        * **Template UPS - diogont**<p></p>
    * [template_ups_socomec_(traps)](Power (UPS)/template_ups_socomec_(traps))
        * **Monitoring UPS**<p></p>
    * [template_vertiv](Power (UPS)/template_vertiv)
        * **Template-Vertiv**<p></p>
    * [template_vertiv_1](Power (UPS)/template_vertiv_1)
        * **Template-Vertiv**<p></p>
    * [template_vertiv_2](Power (UPS)/template_vertiv_2)
        * **Template-Vertiv**<p></p>
    * [template_vertiv_3](Power (UPS)/template_vertiv_3)
        * **Template-Vertiv**<p></p>
    * [template_vertiv_4](Power (UPS)/template_vertiv_4)
        * **Template-Vertiv**<p></p>
* [Printers](Printers)
    * [Brother](Printers/Brother)
        * [template_brother_mfc-l2700dw](Printers/Brother/template_brother_mfc-l2700dw)
            * **Template Brother Printers**<p></p>
        * [template_brother_monochrome_printers](Printers/Brother/template_brother_monochrome_printers)
            * **Template Brother Printers**<p></p>
        * [template_impressora_brother](Printers/Brother/template_impressora_brother)
            * **Template Brother Printers**<p></p>
    * [Canon](Printers/Canon)
        * [template_canon_c5540](Printers/Canon/template_canon_c5540)
            * **Template Canon C5540**<p></p>
        * [template_canon_color_mf_printer-working](Printers/Canon/template_canon_color_mf_printer-working)
            * **Canon Color MF printers Template**<p>Template for color Canon Multi Functional printer.</p>
        * [template_canon_oce_colorwave_500](Printers/Canon/template_canon_oce_colorwave_500)
            * **Template OCE ColorWave 500**<p></p>
    * [HP](Printers/HP)
        * [template_hp_color_laserjet_cp2025dn](Printers/HP/template_hp_color_laserjet_cp2025dn)
            * **Template Printer HP Color LaserJet CP2025dn**<p></p>
        * [template_hp_designjet_t7100](Printers/HP/template_hp_designjet_t7100)
            * **HP DesignJet T7100**<p>The template was presented as a zip archive</p>
        * [template_hp_designjet_t770_snmp](Printers/HP/template_hp_designjet_t770_snmp)
            * **Template_HP_Designjet_T770**<p></p>
        * [template_hp_designjet_z5200](Printers/HP/template_hp_designjet_z5200)
            * **Template Printer HP Designjet Z5200**<p></p>
        * [template_hp_laserjet_3390](Printers/HP/template_hp_laserjet_3390)
            * **Template Printer HP LaserJet 3390**<p></p>
        * [template_hp_officejet_pro_87xx](Printers/HP/template_hp_officejet_pro_87xx)
            * **Template Printer HP OfficeJet Pro 8xxx**<p></p>
    * [Konica](Printers/Konica)
        * [template_konica_364_368_snmp](Printers/Konica/template_konica_364_368_snmp)
            * **Template_Printer_Konica**<p></p>
        * [template_konica_minolta_3110](Printers/Konica/template_konica_minolta_3110)
            * **Konica C3110 SNMP**<p></p>
    * [Kyocera](Printers/Kyocera)
        * [template_ecosys_m2540x_m4132idn_m6230cidn](Printers/Kyocera/template_ecosys_m2540x_m4132idn_m6230cidn)
            * **Принтре HP**<p></p>
            * **Принтеры Kyocera**<p>ECOSYS M2540dn, ECOSYS M3540idn, ECOSYS M4132idn, ECOSYS M6230cidn</p>
        * [template_ecosys_p7240cdn](Printers/Kyocera/template_ecosys_p7240cdn)
            * **ECOSYS P7240cdn**<p>The template was presented as a zip archive</p>
        * [template_kyocera_6130_(color)](Printers/Kyocera/template_kyocera_6130_(color))
            * **Color printers Kyocera**<p></p>
        * [template_kyocera_color](Printers/Kyocera/template_kyocera_color)
            * **Kyocera color**<p></p>
        * [template_kyocera_cs6551ci-cs7052ci](Printers/Kyocera/template_kyocera_cs6551ci-cs7052ci)
            * **Kyocera Printers**<p></p>
        * [template_kyocera_devices_(use_snmp_v2)](Printers/Kyocera/template_kyocera_devices_(use_snmp_v2))
            * **Принтеры Киосера v2**<p></p>
        * [template_kyocera_fs-1020dn,_fs-1030dn,_fs-4000dn,_fs-1060dn,_ecosys_p3055dn](Printers/Kyocera/template_kyocera_fs-1020dn,_fs-1030dn,_fs-4000dn,_fs-1060dn,_ecosys_p3055dn)
            * **Принтеры Kyocera**<p>Для принтеров FS-1020DN, FS-1030DN, FS-4000DN, FS-1060DN</p>
        * [template_kyocera_fs-km-p_series](Printers/Kyocera/template_kyocera_fs-km-p_series)
            * **IMPRESSORA - KYOCERA**<p></p>
        * [template_kyocera_printers_by_snmp](Printers/Kyocera/template_kyocera_printers_by_snmp)
            * **Kyocera Printers**<p>ECOSYS M2540dn, ECOSYS M3540idn, ECOSYS M4132idn, ECOSYS M6230cidn</p>
            * **Kyocera Printers - Page Status**<p>ECOSYS M2540dn, ECOSYS M3540idn, ECOSYS M4132idn, ECOSYS M6230cidn</p>
            * **Kyocera Printers - Toner Status**<p>ECOSYS M2540dn, ECOSYS M3540idn, ECOSYS M4132idn, ECOSYS M6230cidn</p>
    * [Lexmark](Printers/Lexmark)
        * [template_-_snmp-lexmark_mx_711_dhe_e_para_todos_os_demais_modelos_deste_fabricante.](Printers/Lexmark/template_-_snmp-lexmark_mx_711_dhe_e_para_todos_os_demais_modelos_deste_fabricante.)
            * **Template - SNMP - Lexmark MONO**<p></p>
        * [template_lexmark_generic_laser_printer-color](Printers/Lexmark/template_lexmark_generic_laser_printer-color)
            * **Template - SNMP - Lexmark COLOR**<p></p>
        * [template_lexmark_generic_laser_printer-mono](Printers/Lexmark/template_lexmark_generic_laser_printer-mono)
            * **Template - SNMP - Lexmark MONO**<p></p>
        * [template_lexmark_printer-cs521dn_(color)](Printers/Lexmark/template_lexmark_printer-cs521dn_(color))
            * **Template - SNMP - Lexmark CS521dn COLOR**<p></p>
        * [template_lexmark_printer-cs622de_(color)](Printers/Lexmark/template_lexmark_printer-cs622de_(color))
            * **Template - SNMP - Lexmark CS622de COLOR**<p></p>
        * [template_lexmark_printer-cs820de_(color)](Printers/Lexmark/template_lexmark_printer-cs820de_(color))
            * **Template - SNMP - Lexmark CS820de COLOR**<p></p>
        * [template_lexmark_printer-cs860dte_(color)](Printers/Lexmark/template_lexmark_printer-cs860dte_(color))
            * **Template - SNMP - Lexmark CS860dte COLOR**<p></p>
        * [template_lexmark_printer-cx725de_(color)](Printers/Lexmark/template_lexmark_printer-cx725de_(color))
            * **Template - SNMP - Lexmark CX725de COLOR**<p></p>
        * [template_lexmark_printer-cx860dtfe_(color)](Printers/Lexmark/template_lexmark_printer-cx860dtfe_(color))
            * **Template - SNMP - Lexmark CX860dtfe COLOR**<p></p>
        * [template_lexmark_printer-cx923dxe_(color)](Printers/Lexmark/template_lexmark_printer-cx923dxe_(color))
            * **Template - SNMP - Lexmark CX923dxe COLOR**<p></p>
        * [template_lexmark_printer-ms622de_(mono)](Printers/Lexmark/template_lexmark_printer-ms622de_(mono))
            * **Template - SNMP - Lexmark MS622de MONO**<p></p>
        * [template_lexmark_printer-ms826de_(mono)](Printers/Lexmark/template_lexmark_printer-ms826de_(mono))
            * **Template - SNMP - Lexmark MS826de MONO**<p></p>
    * [OKI](Printers/OKI)
        * [template_es8461_mfp](Printers/OKI/template_es8461_mfp)
            * **OKI Printer**<p></p>
        * [template_oki_color_laser_(c...)](Printers/OKI/template_oki_color_laser_(c...))
            * **OKI**<p></p>
    * [Ricoh](Printers/Ricoh)
        * [template_automatic_ordering_of_consumables_ricoh_collar_printer_japanese](Printers/Ricoh/template_automatic_ordering_of_consumables_ricoh_collar_printer_japanese)
            * **Template Ricoh color printer**<p></p>
        * [template_monitoring_ink_cartridge_remaining_quantity_for_ricoh_printer](Printers/Ricoh/template_monitoring_ink_cartridge_remaining_quantity_for_ricoh_printer)
            * **Template Ricoh color printer**<p></p>
        * [template_ricoh_aficio_3500sf_and_3510sf](Printers/Ricoh/template_ricoh_aficio_3500sf_and_3510sf)
            * **Template Ricoh Aficio 3500SF e 3510SF**<p></p>
        * [template_ricoh_aficio_mp_c3300_or_3001_printer](Printers/Ricoh/template_ricoh_aficio_mp_c3300_or_3001_printer)
            * **RICOH Aficio MP C3300/3001**<p></p>
        * [template_ricoh_snmp_printers](Printers/Ricoh/template_ricoh_snmp_printers)
            * **Template SNMP Ricoh Printers**<p></p>
    * [SAMSUNG](Printers/SAMSUNG)
        * [template_printer_samsung_clp](Printers/SAMSUNG/template_printer_samsung_clp)
            * **Printer Samsung CLP**<p></p>
        * [template_samsung-impressora_snmp](Printers/SAMSUNG/template_samsung-impressora_snmp)
            * **Template - SAMSUNG**<p></p>
    * [Samsung](Printers/Samsung)
        * [template_monitorar_niveis_de_toner](Printers/Samsung/template_monitorar_niveis_de_toner)
            * **impressoras SIMPRESS**<p></p>
        * [template_samsung_m2020w](Printers/Samsung/template_samsung_m2020w)
            * **M2020W**<p></p>
        * [template_samsung_m_series](Printers/Samsung/template_samsung_m_series)
            * **Template Printer Samsung M Series**<p></p>
    * [Xerox](Printers/Xerox)
        * [template_xerox_3210_3220_3225_3300_3615_6505](Printers/Xerox/template_xerox_3210_3220_3225_3300_3615_6505)
            * **Xerox 3210 3220 3225 3300 3615 6505**<p>The template was presented as a zip archive</p>
        * [template_xerox_7220_multi_color](Printers/Xerox/template_xerox_7220_multi_color)
            * **Template Printer Xerox WorkCentre 3220**<p></p>
        * [template_xerox_phaser_3610](Printers/Xerox/template_xerox_phaser_3610)
            * **Template Printer Xerox Phaser 3610**<p></p>
        * [template_xerox_phaser_3635mfp](Printers/Xerox/template_xerox_phaser_3635mfp)
            * **Template Printer Xerox Phaser 3635MFP**<p></p>
        * [template_xerox_phaser_4622](Printers/Xerox/template_xerox_phaser_4622)
            * **Template Printer Xerox Phaser 4622**<p></p>
        * [template_xerox_phaser_6130n](Printers/Xerox/template_xerox_phaser_6130n)
            * **Template Printer Xerox Phaser 6130N**<p></p>
        * [template_xerox_workcentre_3220](Printers/Xerox/template_xerox_workcentre_3220)
            * **Template Printer Xerox WorkCentre 3220**<p></p>
        * [template_xerox_workcentre_3225](Printers/Xerox/template_xerox_workcentre_3225)
            * **Template Printer Xerox WorkCentre 3225**<p></p>
        * [template_xerox_workcentre_3315](Printers/Xerox/template_xerox_workcentre_3315)
            * **Template Printer Xerox WorkCentre 3315**<p></p>
        * [template_xerox_workcentre_3325](Printers/Xerox/template_xerox_workcentre_3325)
            * **Template Printer Xerox WorkCentre 3325**<p></p>
        * [template_xerox_workcentre_5222](Printers/Xerox/template_xerox_workcentre_5222)
            * **Template Printer Xerox WorkCentre 5222**<p></p>
        * [template_xerox_workcentre_5230](Printers/Xerox/template_xerox_workcentre_5230)
            * **Template Printer Xerox WorkCentre 5230**<p></p>
        * [template_xerox_workcentre_5335](Printers/Xerox/template_xerox_workcentre_5335)
            * **Template Printer Xerox WorkCentre 5335**<p></p>
        * [template_xerox_workcentre_7125](Printers/Xerox/template_xerox_workcentre_7125)
            * **Template Printer Xerox WorkCentre 7125**<p></p>
        * [template_xerox_workcentre_7220](Printers/Xerox/template_xerox_workcentre_7220)
            * **Template Printer Xerox WorkCentre 7220**<p></p>
        * [template_xerox_workcentre_7225](Printers/Xerox/template_xerox_workcentre_7225)
            * **Template Printer Xerox WorkCentre 7225**<p></p>
        * [template_xerox_workcentre_7346](Printers/Xerox/template_xerox_workcentre_7346)
            * **Template Printer Xerox WorkCentre 7346**<p></p>
        * [template_xerox_workcentre_7525](Printers/Xerox/template_xerox_workcentre_7525)
            * **Template Printer Xerox WorkCentre 7525**<p></p>
        * [template_xerox_workcentre_7855](Printers/Xerox/template_xerox_workcentre_7855)
            * **Template Printer Xerox WorkCentre 7855**<p></p>
    * [template_dell_laserprinter](Printers/template_dell_laserprinter)
        * **Template SNMP Printer**<p></p>
    * [template_hp_lj_5500,_4700,_3600](Printers/template_hp_lj_5500,_4700,_3600)
        * **Template Printer HP LaserJet 5500**<p></p>
    * [template_impressora_lld_universal](Printers/template_impressora_lld_universal)
        * **Template_Snmp_Impressora_LLD_VERSAO-0.1**<p></p>
    * [template_konica_c3100p](Printers/template_konica_c3100p)
        * **Konica C3100P SNMP**<p></p>
    * [template_konica_minolta](Printers/template_konica_minolta)
        * **Konica Minolta**<p>The template was presented as a zip archive</p>
    * [template_kyocera_fs-4200dn](Printers/template_kyocera_fs-4200dn)
        * **Kyocera FS-4200DN**<p></p>
    * [template_kyocera_fs-c8525mfp](Printers/template_kyocera_fs-c8525mfp)
        * **Template_Kyocera FS-C8525MFP**<p></p>
    * [template_kyocera_taskalfa_3051ci](Printers/template_kyocera_taskalfa_3051ci)
        * **Kyocera TASKalfa 3051ci**<p></p>
    * [template_monitoramento_print_server_do_windows](Printers/template_monitoramento_print_server_do_windows)
        * **Monitoramento Print Server do Windows**<p>The template was presented as a zip archive</p>
    * [template_panasonic_kx-mb2051ru](Printers/template_panasonic_kx-mb2051ru)
        * **Template Printer Panasonic KX-MB2051RU**<p></p>
    * [template_panasonic_kx-mb2540_snmp](Printers/template_panasonic_kx-mb2540_snmp)
        * **Template_Printer_Panasonic_KX-MB2540**<p></p>
    * [template_panasonic_kx-mc6020_snmp](Printers/template_panasonic_kx-mc6020_snmp)
        * **Template_Printer_Panasonic_KX-MC6020RU**<p></p>
    * [template_ricoh_color_mfp](Printers/template_ricoh_color_mfp)
        * **Template MFP Ricoh**<p></p>
    * [template_s_brother_printers](Printers/template_s_brother_printers)
        * **brother Printers templates**<p></p>
    * [template_sharp_printer-c301w_and_mx-2640](Printers/template_sharp_printer-c301w_and_mx-2640)
        * **Template Sharp Printers**<p></p>
    * [template_xerox_workcentre_6605dn](Printers/template_xerox_workcentre_6605dn)
        * **Template Printer Xerox WorkCentre 6605DN**<p></p>
* [SCADA, IoT, Energy, Home Automation, Industrial monitoring](SCADA, IoT, Energy, Home Automation, Industrial monitoring)
    * [Cooling](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Cooling)
        * [template_airco_pcoweb](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Cooling/template_airco_pcoweb)
            * **Template Airco pCOWeb**<p></p>
        * [template_apc_inrow_cooling_snmp](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Cooling/template_apc_inrow_cooling_snmp)
            * **APC InRow Cooling**<p></p>
        * [template_sbr01_controller](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Cooling/template_sbr01_controller)
            * **Template SBR01**<p></p>
        * [template_srk-m2(y);_срк-м2(у)_snmpv1](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Cooling/template_srk-m2(y);_срк-м2(у)_snmpv1)
            * **SRK-M2(Y); СРК-М2(У) SNMPv1**<p>The template was presented as a zip archive</p>
        * [template_stulz_wib_8000](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Cooling/template_stulz_wib_8000)
            * **Stulz Climate**<p></p>
        * [template_zbx-sbr](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Cooling/template_zbx-sbr)
            * **zbx-sbr**<p>The template was presented as a zip archive</p>
    * [Monitoring Equipment](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment)
        * [template_akcp_sensorprobe](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_akcp_sensorprobe)
            * **Template AKCP**<p></p>
        * [template_apc_netbotz_ap9340](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_apc_netbotz_ap9340)
            * **Template APC Netbotz AP9340**<p>Retrieves temps and humidity from all the sensors.</p>
        * [template_apc_netbotz_monitor_2xx](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_apc_netbotz_monitor_2xx)
            * **Template APC NetBotz Rack Monitor 200**<p></p>
            * **Template APC NetBotz Rack Monitor 250**<p></p>
        * [template_apc_netbotz_rack_monitor_200](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_apc_netbotz_rack_monitor_200)
            * **Template SNMP APC NetBotz Rack Monitor 200**<p></p>
        * [template_check-sensorgateway](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_check-sensorgateway)
            * **SNMP - ServerCheck.com - SensorGateway**<p></p>
        * [template_dcm_se-10_2.0_snmp](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_dcm_se-10_2.0_snmp)
            * **DCM SE-10**<p></p>
        * [template_dcm_se-10_http](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_dcm_se-10_http)
            * **DCM SE-10**<p></p>
        * [template_dcm_se-10_snmp](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_dcm_se-10_snmp)
            * **DCM SE-10**<p></p>
        * [template_dcm_sw-10_snmp](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_dcm_sw-10_snmp)
            * **DCM SW-10**<p></p>
        * [template_dcm_sw-11-dsp](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_dcm_sw-11-dsp)
            * **DCM SW-11-DSP**<p></p>
        * [template_dcm_sw-8_snmp](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_dcm_sw-8_snmp)
            * **DCM SW-8**<p></p>
        * [template_hwg-ste_probe](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_hwg-ste_probe)
            * **HWg-STE**<p></p>
        * [template_it_watchdog_15](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_it_watchdog_15)
            * **Template ITWatchDog 15**<p></p>
        * [template_natureremo](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_natureremo)
            * **Template NatureRemo**<p></p>
        * [template_schneider_pm8ecc_pm800](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_schneider_pm8ecc_pm800)
            * **PM8ECC**<p></p>
        * [template_se-10_sw-10-dcm_tech](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_se-10_sw-10-dcm_tech)
            * **DCM SE-10**<p></p>
        * [template_serverscheck_sensorgateway](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_serverscheck_sensorgateway)
            * **SNMP - ServerCheck.com - SensorGateway**<p></p>
        * [template_teracom_tcw122b-wd](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_teracom_tcw122b-wd)
            * **Template Teracom TCW122B-WD SNMPv1**<p>Teracom TCW122B-WD IP watchdog monitoring module TCW122B-WD is an IP watchdog monitoring module, based on TCW122 hardware. It has 2 digital and 2 analog inputs. It supports up to two temperature/humidity sensors on its 1-Wire interface. The IP watchdog controller has also two relays with normally open and normally closed contacts. TCW122B-WD is dedicated to IP watchdog monitoring as a stand-alone device.The controller supports also SNMP v1 as M2M protocol. It can also be used as a part of small to medium SCADA systems for environmental monitoring of server rooms. Template by Kari Karvonen <oh1kk @toimii.fi> Tested with firmware version: tcw122-wd_v3.03</p>
        * [template_vertiv_geist_watchdog_1200s](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_vertiv_geist_watchdog_1200s)
            * **Geist Watchdog 1200s**<p>Check the watchdogs for the temperature in each closet.</p>
        * [template_volt_pop_protect_snmp](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_volt_pop_protect_snmp)
            * **Volt Pop Protect SNMP**<p></p>
        * [template_volt_pop_protect_snmp-4.0](SCADA, IoT, Energy, Home Automation, Industrial monitoring/Monitoring Equipment/template_volt_pop_protect_snmp-4.0)
            * **Volt Pop Protect SNMP**<p></p>
    * [template_audemat_fm_monitor](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_audemat_fm_monitor)
        * **Template Discovery Audemat**<p></p>
    * [template_avtech_room_alert_3e](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_avtech_room_alert_3e)
        * **RoomAlert 3E**<p></p>
    * [template_daikin_air-conditioner](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_daikin_air-conditioner)
        * **Daikin air-conditioner**<p>The template was presented as a zip archive</p>
    * [template_fronius_device](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_fronius_device)
        * **Fronius Solar**<p>Uses Fronius API V1 to query inverter Make sure you update the following macros after linking the template DEVICE_ID: the device you want to monitor (defaults to 1 if you only have 1 inverter). Make sure your host has a hsotname of ip address configured. This must be the address of the Fronius device to monitor</p>
    * [template_lantronix_uds1100](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_lantronix_uds1100)
        * **LANTRONIX-UDS1100**<p>Simple LANTRONIX-UDS1100 template by Federico Coppola</p>
    * [template_luxtronik_2.0_wärmepumpe_heatpump](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_luxtronik_2.0_wärmepumpe_heatpump)
        * **Template Luxtronik 2.0 Wärmepumpe/Heatpump**<p>The template was presented as a zip archive</p>
    * [template_modbus_loadable_module](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_modbus_loadable_module)
        * **Modbus loadable module**<p>The template was presented as a tar.gz archive</p>
    * [template_mqtt-to-zabbix](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_mqtt-to-zabbix)
        * **mqtt-to-zabbix**<p>The template was presented as a zip archive</p>
    * [template_neptune_apex](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_neptune_apex)
        * **Neptune Apex**<p>The template was presented as a zip archive</p>
    * [template_tado_heating_control](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_tado_heating_control)
        * **Tado Template**<p></p>
    * [template_tx_hitachi_ec704mp](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_tx_hitachi_ec704mp)
        * **Template tx Hitachi EC704MP**<p>Template of transmissor Hitachi model EC704MP.</p>
    * [template_tx_screen_nxt-151](SCADA, IoT, Energy, Home Automation, Industrial monitoring/template_tx_screen_nxt-151)
        * **Template Nxt151 General**<p></p>
* [Server Hardware](Server Hardware)
    * [Cisco](Server Hardware/Cisco)
        * [template_思科ucs交换矩阵监控模板](Server Hardware/Cisco/template_思科ucs交换矩阵监控模板)
            * **思科UCS交换矩阵监控模板**<p></p>
        * [template_cisco_eirpg_protocol](Server Hardware/Cisco/template_cisco_eirpg_protocol)
            * **CISCO EIGRP**<p></p>
        * [template_cisco_ucs](Server Hardware/Cisco/template_cisco_ucs)
            * **Cisco-UCS**<p></p>
        * [template_cisco_ucs_standalone_hw_monitoring](Server Hardware/Cisco/template_cisco_ucs_standalone_hw_monitoring)
            * **Template Cisco UCS Standalone SNMP**<p></p>
        * [template_ipmi_cisco_ucs-c220_server_hardware](Server Hardware/Cisco/template_ipmi_cisco_ucs-c220_server_hardware)
            * **IPMI Cisco UCS-C220 Server hardware**<p>ipmi sensors, please disable absend HDD and unsupported items</p>
        * [template_standalone_cisco_ucs_server_snmp](Server Hardware/Cisco/template_standalone_cisco_ucs_server_snmp)
            * **Template Cisco UCS Standalone SNMP**<p></p>
    * [Dell](Server Hardware/Dell)
        * [template_戴尔poweredge系列机架服务器监控模板](Server Hardware/Dell/template_戴尔poweredge系列机架服务器监控模板)
            * **戴尔PowerEdge系列机架服务器监控模板**<p></p>
        * [template_dell_idrac](Server Hardware/Dell/template_dell_idrac)
            * **Dell idrac**<p></p>
        * [template_dell_idrac(chinese)](Server Hardware/Dell/template_dell_idrac(chinese))
            * **Dell idrac**<p></p>
        * [template_dell_idrac_9_snmp](Server Hardware/Dell/template_dell_idrac_9_snmp)
            * **Template-SNMP-iDRAC-9**<p>Lucas Afonso Kremer https://www.linkedin.com/in/lucasafonsokremer</p>
        * [template_dell_idrac_via_redfish](Server Hardware/Dell/template_dell_idrac_via_redfish)
            * **Dell iDRAC via Redfish**<p>The template was presented as a zip archive</p>
        * [template_dell_poweredge_1950_ipmi](Server Hardware/Dell/template_dell_poweredge_1950_ipmi)
            * **3-IPMI Dell Power Edge 1950**<p></p>
        * [template_dell_poweredge_2900_ipmi](Server Hardware/Dell/template_dell_poweredge_2900_ipmi)
            * **3-IPMI Dell Power Edge 2900**<p></p>
        * [template_dell_poweredge_c6220_ipmi](Server Hardware/Dell/template_dell_poweredge_c6220_ipmi)
            * **Template IPMI Dell PowerEdge C6220**<p></p>
        * [template_dell_poweredge_r415_ipmi](Server Hardware/Dell/template_dell_poweredge_r415_ipmi)
            * **Template IPMI Dell PowerEdge R415**<p></p>
        * [template_dell_poweredge_r715_ipmi](Server Hardware/Dell/template_dell_poweredge_r715_ipmi)
            * **Template IPMI Dell PowerEdge R715**<p></p>
        * [template_dell_poweredge_t300_ipmi](Server Hardware/Dell/template_dell_poweredge_t300_ipmi)
            * **3-IPMI Dell Power Edge T300**<p></p>
        * [template_dell_poweredge_t310_ipmi](Server Hardware/Dell/template_dell_poweredge_t310_ipmi)
            * **IPMI Dell Power Edge T310**<p></p>
        * [template_dell_poweredge_t320_ipmi](Server Hardware/Dell/template_dell_poweredge_t320_ipmi)
            * **3-IPMI Dell Power Edge T320**<p></p>
        * [template_dell_poweredge_t420_ipmi](Server Hardware/Dell/template_dell_poweredge_t420_ipmi)
            * **3-IPMI Dell Power Edge T420**<p></p>
        * [template_dell_poweredge_t620_ipmi](Server Hardware/Dell/template_dell_poweredge_t620_ipmi)
            * **3-IPMI Dell Power Edge T620**<p></p>
        * [template_ipmi_dell_poweredge_2950](Server Hardware/Dell/template_ipmi_dell_poweredge_2950)
            * **Template IPMI Dell PowerEdge 2950**<p></p>
        * [template_ipmi_dell_poweredge_r510](Server Hardware/Dell/template_ipmi_dell_poweredge_r510)
            * **Template IPMI Dell PowerEdge R510**<p></p>
    * [Fujitsu Siemens](Server Hardware/Fujitsu Siemens)
        * [template_ipmi_rx2530](Server Hardware/Fujitsu Siemens/template_ipmi_rx2530)
            * **IPMI Fujitsu RX2530 M2**<p></p>
    * [H3C](Server Hardware/H3C)
        * [template_for_h3c_hdm_1.30.x](Server Hardware/H3C/template_for_h3c_hdm_1.30.x)
            * **H3C_basic_monitoring**<p>H3C server basic monitoring items</p>
        * [template_for_h3c_r4900_g2](Server Hardware/H3C/template_for_h3c_r4900_g2)
            * **H3C_basic_momitoring_G2**<p></p>
        * [template_h3c_rackserver_monitor](Server Hardware/H3C/template_h3c_rackserver_monitor)
            * **H3C RackServer Monitor Template**<p>H3C_RackServer_monitor_template Known Issues: device : UIS-Cell-3030-G3,UniServer-R4900</p>
    * [HP](Server Hardware/HP)
        * [template_惠普proliant系列机架服务器监控模板](Server Hardware/HP/template_惠普proliant系列机架服务器监控模板)
            * **惠普ProLiant系列机架服务器监控模板**<p></p>
        * [template_c7000_chassis](Server Hardware/HP/template_c7000_chassis)
            * **C7000 Chassis**<p>The template was presented as a zip archive</p>
        * [template_dl360p_gen8](Server Hardware/HP/template_dl360p_gen8)
            * **IPMI HP DL360p Gen8**<p></p>
        * [template_dl380_gen5](Server Hardware/HP/template_dl380_gen5)
            * **DL380 Gen5**<p>The template was presented as a zip archive</p>
        * [template_dl380p_gen7](Server Hardware/HP/template_dl380p_gen7)
            * **DL380p Gen7**<p>The template was presented as a zip archive</p>
        * [template_dl380p_gen8](Server Hardware/HP/template_dl380p_gen8)
            * **DL380p Gen8**<p>The template was presented as a zip archive</p>
        * [template_hp_array](Server Hardware/HP/template_hp_array)
            * **HP array**<p>The template was presented as a zip archive</p>
        * [template_hp_c7000_chassis](Server Hardware/HP/template_hp_c7000_chassis)
            * **HP C7000 Chassis (EN)**<p>This template requires the MIBs: CPQRACK-MIB CPQHOST-MIB These are referenced in the template, not the full numeric OID.</p>
        * [template_hp_dl320e_gen8_ipmi_(ilo4)](Server Hardware/HP/template_hp_dl320e_gen8_ipmi_(ilo4))
            * **IPMI_HP320eG8**<p></p>
        * [template_hp_dl360_gen9_ipmi](Server Hardware/HP/template_hp_dl360_gen9_ipmi)
            * **HP DL360 Gen9 IPMI**<p>The template was presented as a zip archive</p>
        * [template_hp_ilo_5_snmp](Server Hardware/HP/template_hp_ilo_5_snmp)
            * **Template-SNMP-HP-iLO5**<p>Created by Lucas Afonso Kremer <lucasafonsokremer@gmail.com> https://www.linkedin.com/in/lucasafonsokremer</p>
        * [template_hp_ilo_proliant_dl380p_gen8](Server Hardware/HP/template_hp_ilo_proliant_dl380p_gen8)
            * **ILO ProLiant DL380p Gen8**<p>Zabbix monitoring template about ILO ProLiant DL380p Gen8. This template controls CPU, RAM banks, temperature and disks status. By Federico Coppola </p>
        * [template_hp_server_snmp_autodiscovery](Server Hardware/HP/template_hp_server_snmp_autodiscovery)
            * **Template_HP_SNMP_Autodiscovery**<p></p>
        * [template_hp_xl420_gen9](Server Hardware/HP/template_hp_xl420_gen9)
            * **Template IPMI HP ProLiant XL420 Gen9**<p></p>
        * [template_ipmi_hp_bl460c_g8](Server Hardware/HP/template_ipmi_hp_bl460c_g8)
            * **IPMI HP BL460c Gen8**<p></p>
        * [template_ipmi_hp_dl360_g5_no_drives_only](Server Hardware/HP/template_ipmi_hp_dl360_g5_no_drives_only)
            * **ipmi hp DL360 G5 no drives only**<p>The template was presented as a zip archive</p>
        * [template_ipmi_hp_dl360_g6_with_nohdd_option](Server Hardware/HP/template_ipmi_hp_dl360_g6_with_nohdd_option)
            * **ipmi HP DL360 G6 with noHDD option**<p>The template was presented as a zip archive</p>
        * [template_ipmi_hp_dl360p_g8_with_nohdd_option](Server Hardware/HP/template_ipmi_hp_dl360p_g8_with_nohdd_option)
            * **ipmi HP DL360p G8 with noHDD option**<p>The template was presented as a zip archive</p>
        * [template_ipmi_hp_dl360p_g9_with_nohdd_option](Server Hardware/HP/template_ipmi_hp_dl360p_g9_with_nohdd_option)
            * **ipmi HP DL360p G9 with noHDD option**<p>The template was presented as a zip archive</p>
        * [template_ipmi_hp_dl380p_g9_without_drives_only](Server Hardware/HP/template_ipmi_hp_dl380p_g9_without_drives_only)
            * **IPMI HP DL380p Gen9 without Drives**<p></p>
        * [template_ipmi_hp_servers_hdd_discovery](Server Hardware/HP/template_ipmi_hp_servers_hdd_discovery)
            * **IPMI HP servers HDD discovery**<p>The template was presented as a zip archive</p>
        * [template_server_hp_ilo100i_ipmi](Server Hardware/HP/template_server_hp_ilo100i_ipmi)
            * **Template HP iLO100i IPMI**<p>Template polling sensor data of a HP iLO100i</p>
    * [Huawei](Server Hardware/Huawei)
        * [template_fusion_module_800](Server Hardware/Huawei/template_fusion_module_800)
            * **Fusion Module 800**<p>The template was presented as a zip archive</p>
        * [template_huawei_ccu](Server Hardware/Huawei/template_huawei_ccu)
            * **Huawei CCU Template**<p>The template was presented as a zip archive</p>
        * [template_huawei_chassis_emm](Server Hardware/Huawei/template_huawei_chassis_emm)
            * **Huawei Chassis EMM Template**<p>The template was presented as a zip archive</p>
        * [template_huawei_chassis_swi](Server Hardware/Huawei/template_huawei_chassis_swi)
            * **Huawei Chassis SWI Template**<p>The template was presented as a zip archive</p>
        * [template_huawei_pc_server](Server Hardware/Huawei/template_huawei_pc_server)
            * **Huawei PC Server**<p>The template was presented as a zip archive</p>
        * [template_huawei_rh5885h_v3](Server Hardware/Huawei/template_huawei_rh5885h_v3)
            * **Huawei Server iBMC Template**<p></p>
        * [template_huawei_server_hmm](Server Hardware/Huawei/template_huawei_server_hmm)
            * **Huawei Server HMM Template**<p>The template was presented as a zip archive</p>
        * [template_huawei_server_ibmc](Server Hardware/Huawei/template_huawei_server_ibmc)
            * **Huawei Server IBMC Template**<p>The template was presented as a zip archive</p>
        * [template_vlan_l2_huawei](Server Hardware/Huawei/template_vlan_l2_huawei)
            * **VLAN L2 Huawei**<p></p>
    * [IBM and Lenovo](Server Hardware/IBM and Lenovo)
        * [template_lenovo_flex_snmpv3](Server Hardware/IBM and Lenovo/template_lenovo_flex_snmpv3)
            * **Template Lenovo Flex chassis**<p></p>
        * [template_server_ibm_imm_snmpvx](Server Hardware/IBM and Lenovo/template_server_ibm_imm_snmpvx)
            * **Template Server IBM IMM SNMPvX**<p>The template was presented as a zip archive</p>
        * [template_server_lenovo_xcc_snmpv3](Server Hardware/IBM and Lenovo/template_server_lenovo_xcc_snmpv3)
            * **Template Server Lenovo XCC SNMPv3**<p></p>
        * [template_server_with_imm_imm2](Server Hardware/IBM and Lenovo/template_server_with_imm_imm2)
            * **Server with IMM/IMM2**<p>The template was presented as a zip archive</p>
        * [template_system_x3650_x3550_x3550m2_x3550m3](Server Hardware/IBM and Lenovo/template_system_x3650_x3550_x3550m2_x3550m3)
            * **System x3650/x3550/x3550m2/x3550m3**<p>The template was presented as a zip archive</p>
    * [Inspur](Server Hardware/Inspur)
        * [template_inspur_server_for_zabbix_5.0](Server Hardware/Inspur/template_inspur_server_for_zabbix_5.0)
            * **Template Server Inspur BMC All Items 4 Zabbix5.0**<p>加密方式改为SHA和AES</p>
        * [template_inspur_server_snmpv3](Server Hardware/Inspur/template_inspur_server_snmpv3)
            * **Template Server Inspur BMC SNMPv3**<p></p>
        * [template_inspur_server_snmpv3_1](Server Hardware/Inspur/template_inspur_server_snmpv3_1)
            * **Template Server Inspur BMC SNMPv3**<p></p>
    * [Intel](Server Hardware/Intel)
        * [template_intel_quicksync_gpu_metrics](Server Hardware/Intel/template_intel_quicksync_gpu_metrics)
            * **Template Intel QuickSync GPU metrics**<p></p>
        * [template_intel_s5500bc_ipmi](Server Hardware/Intel/template_intel_s5500bc_ipmi)
            * **Template Server Intel S5500BC IPMI**<p></p>
        * [template_ipmi_intel_rmm3](Server Hardware/Intel/template_ipmi_intel_rmm3)
            * **Template IPMI Intel RMM3**<p></p>
        * [template_ipmi_intel_s2400sc_bmc_integrated](Server Hardware/Intel/template_ipmi_intel_s2400sc_bmc_integrated)
            * **Template IPMI Intel S2400SC**<p></p>
    * [Other](Server Hardware/Other)
        * [template_amd_monitoring_for_multiple_gpus](Server Hardware/Other/template_amd_monitoring_for_multiple_gpus)
            * **Blank AMD**<p>This is a Blank AMD template</p>
        * [template_ipmi_asus_asmb4-ikvm_asmb4-sol](Server Hardware/Other/template_ipmi_asus_asmb4-ikvm_asmb4-sol)
            * **Template IPMI ASUS ASMB4**<p>ASUS ASMB4-iKVM/ASMB4-SOL PLUS Hardware Monitor / System Sensor related Autor template: m.beloglazov@gmail.com Version Zabbix: 3.0</p>
        * [template_md_raid](Server Hardware/Other/template_md_raid)
            * **Template MD Soft RAID**<p>Monitoring of MD Soft RAID</p>
        * [template_nvidia-smi_integration](Server Hardware/Other/template_nvidia-smi_integration)
            * **Template NVidia Sensors**<p></p>
        * [template_raid_cciss](Server Hardware/Other/template_raid_cciss)
            * **Template RAID CCISS**<p>The template was presented as a zip archive</p>
        * [template_raspberry_pi_cpu_temperature](Server Hardware/Other/template_raspberry_pi_cpu_temperature)
            * **Raspberry PI CPU Temperature**<p>The template was presented as a zip archive</p>
        * [template_redfish_for_gagar_in_openbmc](Server Hardware/Other/template_redfish_for_gagar_in_openbmc)
            * **Redfish for GAGAR>IN OpenBMC**<p>The template was presented as a zip archive</p>
        * [template_snmp_sun_m5000_xscf](Server Hardware/Other/template_snmp_sun_m5000_xscf)
            * **Template SNMP XSCF Sun M5000**<p>please set {$SNMP_COMMUNITY} macros</p>
        * [template_storage_works_x1600](Server Hardware/Other/template_storage_works_x1600)
            * **Storage Works X1600**<p>The template was presented as a zip archive</p>
        * [template_sun_blade_2000](Server Hardware/Other/template_sun_blade_2000)
            * **Sun Blade 2000**<p>The template was presented as a zip archive</p>
        * [template_sun_enterprise_t2000_server](Server Hardware/Other/template_sun_enterprise_t2000_server)
            * **Sun Enterprise T2000 server**<p>The template was presented as a zip archive</p>
        * [template_sun_m4000_prtdiag](Server Hardware/Other/template_sun_m4000_prtdiag)
            * **Sun M4000 prtdiag**<p>The template was presented as a zip archive</p>
        * [template_sun_ultra_80](Server Hardware/Other/template_sun_ultra_80)
            * **Sun Ultra 80**<p>The template was presented as a zip archive</p>
        * [template_sun_v440](Server Hardware/Other/template_sun_v440)
            * **Sun v440**<p>The template was presented as a zip archive</p>
        * [template_sun_v890](Server Hardware/Other/template_sun_v890)
            * **Sun v890**<p>The template was presented as a zip archive</p>
        * [template_veritas_disks_discovery_on_solaris_sparc](Server Hardware/Other/template_veritas_disks_discovery_on_solaris_sparc)
            * **Veritas disks discovery on Solaris Sparc**<p>The template was presented as a zip archive</p>
        * [template_zabbix-agent_d2500cc](Server Hardware/Other/template_zabbix-agent_d2500cc)
            * **Template Sensors D2500CC**<p>fan2 is ignored as MB only has 1 fan pin</p>
        * [template_zabbix-agent_dn2800mt](Server Hardware/Other/template_zabbix-agent_dn2800mt)
            * **Template Sensors DN2800MT**<p>temp2 is ignored as it is fixed to 110.5°C</p>
    * [RAID Cards](Server Hardware/RAID Cards)
        * [template_adaptec-universal-storage-mib](Server Hardware/RAID Cards/template_adaptec-universal-storage-mib)
            * **ADAPTEC-UNIVERSAL-STORAGE-MIB**<p>The template was presented as a zip archive</p>
        * [template_adaptec_microsemi_using_arcconf](Server Hardware/RAID Cards/template_adaptec_microsemi_using_arcconf)
            * **Template Adaptec PS**<p></p>
        * [template_adaptec_raid_controller_with_lld](Server Hardware/RAID Cards/template_adaptec_raid_controller_with_lld)
            * **Adaptec RAID Controller Template with LLD**<p>The template was presented as a zip archive</p>
        * [template_intel_rst_(intel_vroc)](Server Hardware/RAID Cards/template_intel_rst_(intel_vroc))
            * **Template Intel RST with js**<p></p>
        * [template_lsi_avago_broadcom_megaraid_sas_snmp](Server Hardware/RAID Cards/template_lsi_avago_broadcom_megaraid_sas_snmp)
            * **Template SNMP MegaRAID SAS**<p>Zabbix Template for Avago Megaraid SAS (formerly LSI) RAID cards</p>
        * [template_lsi_avago_broadcom_using_json_outputs_of_storcli](Server Hardware/RAID Cards/template_lsi_avago_broadcom_using_json_outputs_of_storcli)
            * **Template LSI JSON discovery**<p></p>
        * [template_lsi_raid_controller_with_lld](Server Hardware/RAID Cards/template_lsi_raid_controller_with_lld)
            * **LSI RAID Controller Template with LLD**<p>The template was presented as a zip archive</p>
        * [template_marvell_raid_controller](Server Hardware/RAID Cards/template_marvell_raid_controller)
            * **Marvell RAID Controller**<p>The template was presented as a zip archive</p>
        * [template_zbx-raid-controller](Server Hardware/RAID Cards/template_zbx-raid-controller)
            * **zbx-raid-controller**<p>The template was presented as a zip archive</p>
    * [SGI](Server Hardware/SGI)
        * [template_sgi_altix_c2108-g9_ipmi](Server Hardware/SGI/template_sgi_altix_c2108-g9_ipmi)
            * **3-IPMI SGI Altix C2108-G9**<p></p>
        * [template_sgi_altix_c2112-4g10](Server Hardware/SGI/template_sgi_altix_c2112-4g10)
            * **3-IPMI SGI Altix C2112-4G10**<p></p>
        * [template_sgi_altix_c2112-gp2_ipmi](Server Hardware/SGI/template_sgi_altix_c2112-gp2_ipmi)
            * **3-IPMI SGI Altix C2112-GP2**<p></p>
        * [template_sgi_altix_h2106-g7_ipmi](Server Hardware/SGI/template_sgi_altix_h2106-g7_ipmi)
            * **3-IPMI SGI Altix H2106-G7**<p></p>
        * [template_sgi_altix_iss3114_ipmi](Server Hardware/SGI/template_sgi_altix_iss3114_ipmi)
            * **3-IPMI SGI Altix ISS3114**<p></p>
    * [Supermicro](Server Hardware/Supermicro)
        * [template_ipmi-supermicro-x10drw-e](Server Hardware/Supermicro/template_ipmi-supermicro-x10drw-e)
            * **IPMI - Supermicro - X10DRW-E**<p></p>
        * [template_ipmi_supermicro_h8dgt](Server Hardware/Supermicro/template_ipmi_supermicro_h8dgt)
            * **Template IPMI Supermicro H8DGT**<p></p>
        * [template_ipmi_supermicro_sys-5018d-mtf](Server Hardware/Supermicro/template_ipmi_supermicro_sys-5018d-mtf)
            * **Template IPMI Supermicro SYS-5018D**<p></p>
        * [template_ipmi_supermicro_sys-5019s-l](Server Hardware/Supermicro/template_ipmi_supermicro_sys-5019s-l)
            * **Template IPMI Supermicro SYS-5019S-L**<p></p>
        * [template_ipmi_supermicro_sys-6028r-tr](Server Hardware/Supermicro/template_ipmi_supermicro_sys-6028r-tr)
            * **Template IPMI Supermicro SYS-6028R-TR**<p></p>
        * [template_ipmi_supermicro_x10drt-h](Server Hardware/Supermicro/template_ipmi_supermicro_x10drt-h)
            * **IPMI SuperMicro X10DRT-H**<p></p>
        * [template_ipmi_supermicro_x10sll-f](Server Hardware/Supermicro/template_ipmi_supermicro_x10sll-f)
            * **IPMI Supermicro X10SLL-F**<p></p>
        * [template_ipmi_supermicro_x10srl-f](Server Hardware/Supermicro/template_ipmi_supermicro_x10srl-f)
            * **Template IPMI Supermicro X10SRL-F**<p></p>
        * [template_ipmi_supermicro_x10srm-tf](Server Hardware/Supermicro/template_ipmi_supermicro_x10srm-tf)
            * **Template IPMI Supermicro X10SRM-TF**<p></p>
        * [template_ipmi_supermicro_x8dtl-3f](Server Hardware/Supermicro/template_ipmi_supermicro_x8dtl-3f)
            * **Template IPMI Supermicro X8DTL-3F**<p></p>
        * [template_ipmi_supermicro_x9dbl-if](Server Hardware/Supermicro/template_ipmi_supermicro_x9dbl-if)
            * **Template IPMI Supermicro X9DBL**<p></p>
        * [template_ipmi_supermicro_x9drl-7f-bo](Server Hardware/Supermicro/template_ipmi_supermicro_x9drl-7f-bo)
            * **Template IPMI Supermicro X9DRL-7F-BO**<p></p>
        * [template_ipmi_supermicro_x9drt](Server Hardware/Supermicro/template_ipmi_supermicro_x9drt)
            * **Template IPMI Supermicro X9DRT**<p></p>
        * [template_ipmi_supermicro_x9scl-f-b](Server Hardware/Supermicro/template_ipmi_supermicro_x9scl-f-b)
            * **Template IPMI Supermicro X9DRL-7F-BO**<p></p>
        * [template_ipmi_supermicro_x9scl_x9scm](Server Hardware/Supermicro/template_ipmi_supermicro_x9scl_x9scm)
            * **Template IPMI Supermicro X9SCLX9SCM**<p></p>
        * [template_ipmi_supermicro_x9sri](Server Hardware/Supermicro/template_ipmi_supermicro_x9sri)
            * **Template IPMI Supermicro X9SRI-F**<p></p>
        * [template_supermicro_a1sam-2750f_(ipmi)](Server Hardware/Supermicro/template_supermicro_a1sam-2750f_(ipmi))
            * **Template IPMI Supermicro A1SAM-2750F**<p></p>
        * [template_supermicro_snmp_superdoctor_5_lld](Server Hardware/Supermicro/template_supermicro_snmp_superdoctor_5_lld)
            * **Template Supermicro SNMP Superdoctor 5 LLD**<p></p>
        * [template_supermicro_x9drd-7ln4f](Server Hardware/Supermicro/template_supermicro_x9drd-7ln4f)
            * **IPMI SuperMicro X9DRD-7LN4F**<p></p>
        * [template_zabbix_2.2_ipmi_supermicro_5017a-ef_(and_other_atom_cpu)](Server Hardware/Supermicro/template_zabbix_2.2_ipmi_supermicro_5017a-ef_(and_other_atom_cpu))
            * **Template IPMI SuperMicro**<p></p>
    * [Tyan](Server Hardware/Tyan)
        * [template_ipmi_tyan_s5532](Server Hardware/Tyan/template_ipmi_tyan_s5532)
            * **Template IPMI Tyan S5532**<p></p>
    * [template_dell_poweredge_m610](Server Hardware/template_dell_poweredge_m610)
        * **Template IPMI Dell PowerEdge M610**<p></p>
    * [template_ecc](Server Hardware/template_ecc)
        * **ECC**<p>The template was presented as a zip archive</p>
    * [template_fujitsu_eternus_dx60_s3](Server Hardware/template_fujitsu_eternus_dx60_s3)
        * **Template Module Generic SNMPv2 to Fuji Eternus**<p>Template Module Generic version: 0.15 MIBs used: SNMPv2-MIB</p>
    * [template_fujitsu_primergy_rx2530_m2](Server Hardware/template_fujitsu_primergy_rx2530_m2)
        * **Template Module Generic SNMPv2 to Fuji IRMC**<p>Template Module Generic version: 0.15 MIBs used: SNMPv2-MIB</p>
    * [template_gemalto_luna_hsm_snmpv3](Server Hardware/template_gemalto_luna_hsm_snmpv3)
        * **Template Gemalto SafeNet Luna SNMPv3**<p></p>
    * [template_h3c_zabbix_snmp_monitoring](Server Hardware/template_h3c_zabbix_snmp_monitoring)
        * **H3C_basic_monitoring**<p>H3C server basic monitoring items</p>
    * [template_hardware_information_cpu,_ram,_net,_bios_(lld,_trapper)](Server Hardware/template_hardware_information_cpu,_ram,_net,_bios_(lld,_trapper))
        * **Hardware information: CPU, RAM, NET, BIOS (LLD, Trapper)**<p>The template was presented as a zip archive</p>
    * [template_ipmi_gigabyte_6pxsv4](Server Hardware/template_ipmi_gigabyte_6pxsv4)
        * **Template IPMI Gigabyte 6PXSV4**<p></p>
    * [template_module_lm-sensors](Server Hardware/template_module_lm-sensors)
        * **Template Module lm-sensors**<p>The template was presented as a zip archive</p>
    * [template_mssql_2008-2016_multi_instance_with_wsfc_(autodiscovery)](Server Hardware/template_mssql_2008-2016_multi_instance_with_wsfc_(autodiscovery))
        * **Template App MSSQL 2008-2016 WSFC**<p></p>
    * [template_sensors](Server Hardware/template_sensors)
        * **Sensors**<p>The template was presented as a zip archive</p>
    * [template_sugon_rackserver_monitor](Server Hardware/template_sugon_rackserver_monitor)
        * **Sugon RackServer Monitor Template**<p>Hitachi_DiskArray_monitor_template Known Issues: In some version, the item "nicHealthAllStatus" may be disable device : H620-G30, I620-G30, I840-G30</p>
* [Storage Devices](Storage Devices)
    * [Buffalo](Storage Devices/Buffalo)
        * [template_buffalo_terastation](Storage Devices/Buffalo/template_buffalo_terastation)
            * **Buffalo TeraStation**<p>The template was presented as a zip archive</p>
        * [template_buffalo_terastation_hs-dhtgl_r5_monitoring_snmp_v2](Storage Devices/Buffalo/template_buffalo_terastation_hs-dhtgl_r5_monitoring_snmp_v2)
            * **Template TeraStation SNMPV2**<p></p>
        * [template_buffalo_terastation_ts4500r](Storage Devices/Buffalo/template_buffalo_terastation_ts4500r)
            * **Template Buffalo TeraStation TS4500R**<p></p>
    * [Dell](Storage Devices/Dell)
        * [template_compellent_sc](Storage Devices/Dell/template_compellent_sc)
            * **Compellent SC**<p>The template was presented as a zip archive</p>
        * [template_dell_data_domain](Storage Devices/Dell/template_dell_data_domain)
            * **Data Domain SNMP**<p></p>
        * [template_dell_powervault](Storage Devices/Dell/template_dell_powervault)
            * **Template DELL POWERVAULT TL2000**<p></p>
    * [EMC](Storage Devices/EMC)
        * [template_emc_isilon_onefs_snmp](Storage Devices/EMC/template_emc_isilon_onefs_snmp)
            * **Template SNMP EMC Isilon Cluster**<p></p>
            * **Template SNMP EMC Isilon Node**<p></p>
        * [template_emc_unity](Storage Devices/EMC/template_emc_unity)
            * **Template EMC Unity REST-API v3**<p></p>
        * [template_emc_vnx_monitoring&reporting_2.x](Storage Devices/EMC/template_emc_vnx_monitoring&reporting_2.x)
            * **Template_VNX_monitoring_and_reporting**<p></p>
        * [template_emc_vnx_storage_hardware](Storage Devices/EMC/template_emc_vnx_storage_hardware)
            * **Template EMC VNX Storage Hardware**<p>The template was presented as a zip archive</p>
    * [FreeNAS](Storage Devices/FreeNAS)
        * [template_freenas_11_snmp](Storage Devices/FreeNAS/template_freenas_11_snmp)
            * **Template SNMP FreeNAS 11**<p></p>
        * [template_truenas_freenas_snmp_w_zfs_stats](Storage Devices/FreeNAS/template_truenas_freenas_snmp_w_zfs_stats)
            * **Template SNMP FreeNAS**<p></p>
    * [Fujitsu](Storage Devices/Fujitsu)
        * [template_fujitsu_eternus_dx_200](Storage Devices/Fujitsu/template_fujitsu_eternus_dx_200)
            * **Fujitsu Eternus DX 200**<p>The template was presented as a zip archive</p>
        * [template_fujitsu_rx2540_snmp_v2](Storage Devices/Fujitsu/template_fujitsu_rx2540_snmp_v2)
            * **Fujitsu RX2540 SNMP V2**<p>The template was presented as a zip archive</p>
        * [template_primequest_3800e](Storage Devices/Fujitsu/template_primequest_3800e)
            * **Fujitsu Primequest 3800E**<p></p>
    * [HP](Storage Devices/HP)
        * [template_3par-7200_use_toolkit_for_hpe_3par_](Storage Devices/HP/template_3par-7200_use_toolkit_for_hpe_3par_)
            * **3par**<p></p>
        * [template_hp_3par](Storage Devices/HP/template_hp_3par)
            * **Template HPE 3PAR SMI-S for shareZabbix**<p></p>
        * [template_hp_eva](Storage Devices/HP/template_hp_eva)
            * **HP EVA**<p>The template was presented as a zip archive</p>
        * [template_hp_msa_(telnet_xml)_(nolld)](Storage Devices/HP/template_hp_msa_(telnet_xml)_(nolld))
            * **[Шаблон] TELNET - HP StorageWorks**<p></p>
        * [template_hp_msa_2040](Storage Devices/HP/template_hp_msa_2040)
            * **HP MSA 2040**<p>The template was presented as a zip archive</p>
        * [template_hp_smart_array_controller](Storage Devices/HP/template_hp_smart_array_controller)
            * **HP Smart Array Controller**<p>The template was presented as a zip archive</p>
        * [template_hpe_msa_(xml_api)](Storage Devices/HP/template_hpe_msa_(xml_api))
            * **HPE MSA (XML API)**<p>The template was presented as a zip archive</p>
        * [template_hpe_msa_2040](Storage Devices/HP/template_hpe_msa_2040)
            * **HPE MSA 2040**<p>The template was presented as a zip archive</p>
    * [Hitachi](Storage Devices/Hitachi)
        * [template_hitachi_df_diskarray_monitor](Storage Devices/Hitachi/template_hitachi_df_diskarray_monitor)
            * **Hitachi DF DiskArray Monitor Template**<p>Hitachi_DF_DiskArray_monitor_template Known Issues: device : AMS 2100，AMS 2300，HUS130，HUS150</p>
        * [template_hitachi_diskarray_monitor](Storage Devices/Hitachi/template_hitachi_diskarray_monitor)
            * **Hitachi DiskArray Monitor Template**<p>Hitachi_DiskArray_monitor_template Known Issues: device : G200，G400，G800</p>
    * [Huawei](Storage Devices/Huawei)
        * [template_huawei_diskarray_monitor](Storage Devices/Huawei/template_huawei_diskarray_monitor)
            * **Huawei DiskArray Monitor Template**<p>Huawei_DiskArray_monitor_template Known Issues: device : OceanStor-2600, OceanStor-5300, OceanStor-5600, OceanStor-6800, OceanStor-Dorado6000</p>
        * [template_huawei_oceanstor_sx900_hardware](Storage Devices/Huawei/template_huawei_oceanstor_sx900_hardware)
            * **Template HUAWEI OceanStor Sx900 Hardware**<p>The template was presented as a zip archive</p>
        * [template_huawei_oceanstore](Storage Devices/Huawei/template_huawei_oceanstore)
            * **Template Huawei OceanStor Rest-API v2**<p></p>
    * [IBM](Storage Devices/IBM)
        * [template_ibm_storwize_and_other_storages_monitoring_via_cim_wbem](Storage Devices/IBM/template_ibm_storwize_and_other_storages_monitoring_via_cim_wbem)
            * **Storage Pystormon**<p></p>
        * [template_ibm_storwize_v3700](Storage Devices/IBM/template_ibm_storwize_v3700)
            * **Template IBM-Storwize-3700 CLI v2**<p></p>
        * [template_ibm_storwize_v7000](Storage Devices/IBM/template_ibm_storwize_v7000)
            * **IBM SW 7k**<p></p>
        * [template_ibm_xiv_storage_system](Storage Devices/IBM/template_ibm_xiv_storage_system)
            * **Template IBM XIV Storage System**<p>Template for monitoring IBM XIV servers with pyxcli</p>
    * [Lenovo EMC](Storage Devices/Lenovo EMC)
        * [template_iomega_x4-200d](Storage Devices/Lenovo EMC/template_iomega_x4-200d)
            * **IOMEGA ix4-200d**<p></p>
        * [template_lenovo_emc_px4-200d](Storage Devices/Lenovo EMC/template_lenovo_emc_px4-200d)
            * **Lenovo EMC PX4-200d**<p></p>
        * [template_lenovo_emc_px4-300d](Storage Devices/Lenovo EMC/template_lenovo_emc_px4-300d)
            * **Lenovo EMC PX4-300d**<p></p>
        * [template_lenovo_ix4-200d](Storage Devices/Lenovo EMC/template_lenovo_ix4-200d)
            * **Lenovo ix4-200d**<p></p>
        * [template_lenovoemc_px6-300d](Storage Devices/Lenovo EMC/template_lenovoemc_px6-300d)
            * **Template LenovoEMC px6-300d**<p>The template was presented as a zip archive</p>
        * [template_nas_lenovo_iomega_ix4-300d](Storage Devices/Lenovo EMC/template_nas_lenovo_iomega_ix4-300d)
            * **Lenovo ix4-300d**<p></p>
        * [template_nas_lenovo_ix4-300d](Storage Devices/Lenovo EMC/template_nas_lenovo_ix4-300d)
            * **Template Storage Lenovo ix4-300d**<p></p>
    * [NetAPP](Storage Devices/NetAPP)
        * [template_netapp_cdot_8.3.x](Storage Devices/NetAPP/template_netapp_cdot_8.3.x)
            * **NetApp cDot >8.3.x**<p>The template was presented as a zip archive</p>
        * [template_netapp_ontap_9.1](Storage Devices/NetAPP/template_netapp_ontap_9.1)
            * **NETAPP_FAS_ONTAP_9.1**<p>Template Ontap 9.1</p>
        * [template_netapp_ontap_9.5](Storage Devices/NetAPP/template_netapp_ontap_9.5)
            * **Template SNMP NetApp cDot**<p></p>
        * [template_netapp_ontap_=_9.5](Storage Devices/NetAPP/template_netapp_ontap_=_9.5)
            * **Template Module Netapp OS**<p></p>
    * [Oracle](Storage Devices/Oracle)
        * [template_oracle_storagetek_sl3000_modular_library_system_snmp](Storage Devices/Oracle/template_oracle_storagetek_sl3000_modular_library_system_snmp)
            * **Template SNMP Oracle SL3000**<p></p>
        * [template_tape_library_oracle_storagetek_sl150](Storage Devices/Oracle/template_tape_library_oracle_storagetek_sl150)
            * **Template SNMP Tape Library Oracle StorageTek SL150**<p>Based on MIB File: STREAMLINE-TAPE-LIBRARY-MIB Created by Samuel Martins https://github.com/slunart/ https://www.linkedin.com/in/slmartins/ 2020-04-19 Version 1.0</p>
    * [QNAP](Storage Devices/QNAP)
        * [template_qnap_(snmpv2)](Storage Devices/QNAP/template_qnap_(snmpv2))
            * **Template SNMP QNAP**<p></p>
        * [template_zabbix_2.2_qnap_nas_snmp](Storage Devices/QNAP/template_zabbix_2.2_qnap_nas_snmp)
            * **Template SNMP QNAP NAS**<p></p>
        * [template_zabbix_3.0_qnap_nas_snmp](Storage Devices/QNAP/template_zabbix_3.0_qnap_nas_snmp)
            * **Template SNMP QNAP NAS**<p></p>
        * [template_zabbix_3.4_qnap_nas_snmp](Storage Devices/QNAP/template_zabbix_3.4_qnap_nas_snmp)
            * **Template SNMP QNAP NAS**<p></p>
        * [template_zabbix_4.2_qnap_nas_snmp](Storage Devices/QNAP/template_zabbix_4.2_qnap_nas_snmp)
            * **Template SNMP QNAP NAS**<p></p>
        * [template_zabbix_5_qnap_nas_snmp](Storage Devices/QNAP/template_zabbix_5_qnap_nas_snmp)
            * **QNAP NAS Template SNMP**<p></p>
    * [QSAN](Storage Devices/QSAN)
        * [template_qsan_xs3224](Storage Devices/QSAN/template_qsan_xs3224)
            * **Template SNMP trap fallback**<p></p>
            * **Template SNMP QSAN XS3224 Storage**<p>Template SNMP QSAN Storage</p>
            * **Template SNMP traps**<p></p>
    * [ReadyNAS](Storage Devices/ReadyNAS)
        * [template_readynas_3200_snmp](Storage Devices/ReadyNAS/template_readynas_3200_snmp)
            * **Template SNMP ReadyNas 3200**<p></p>
        * [template_readynas_monitor_via_snmp](Storage Devices/ReadyNAS/template_readynas_monitor_via_snmp)
            * **Template SNMP ReadyNAS**<p></p>
        * [template_snmp_readynas](Storage Devices/ReadyNAS/template_snmp_readynas)
            * **Template SNMP ReadyNas**<p>NetGear ReadyNAS 102</p>
        * [template_snmp_readynas_tega](Storage Devices/ReadyNAS/template_snmp_readynas_tega)
            * **Template SNMP ReadyNAS Tega**<p>For Netgear Ready NAS http://www.downloads.netgear.com/files/ReadyNAS/READYNAS-MIB.txt Template is used for monitoring of the disks state, disks temperature, a status of volumes and general state device. Calculated value can be unavailable the some time</p>
        * [template_zabbix_2.2_readynas_snmp](Storage Devices/ReadyNAS/template_zabbix_2.2_readynas_snmp)
            * **Template SNMP ReadyNas**<p></p>
    * [Synology](Storage Devices/Synology)
        * [template_synology_backup_using_lld](Storage Devices/Synology/template_synology_backup_using_lld)
            * **Halley Synology NAS Backup**<p>Is the template for the service NAS Backup. Will contain only items for discover and monitor de NAS backup instances</p>
        * [template_synology_diskstation](Storage Devices/Synology/template_synology_diskstation)
            * **Template Synology DiskStation**<p></p>
        * [template_synology_diskstation_snmpv3](Storage Devices/Synology/template_synology_diskstation_snmpv3)
            * **Template Synology DiskStation SNMPv3**<p>Based on https://share.zabbix.com/storage-devices/synology/synology-diskstation SHA authpass and AES privpass are hardcoded DiskStationManager > Terminal SNMP > SNMP > Enable SNMPv3 set all values and set macros in Zabbix </p>
        * [template_synology_ds212](Storage Devices/Synology/template_synology_ds212)
            * **Synology DS212**<p>The template was presented as a zip archive</p>
        * [template_synology_dsm_5+](Storage Devices/Synology/template_synology_dsm_5+)
            * **Synology DSM 5+**<p>The template was presented as a zip archive</p>
        * [template_synology_dsm_6.2_cluster_monitoring](Storage Devices/Synology/template_synology_dsm_6.2_cluster_monitoring)
            * **Zshare Synology Cluster**<p>Template to monitor Synology HA Solution</p>
    * [smartmontools](Storage Devices/smartmontools)
        * [template_cross-platform_smart_monitoring_(lld,_trapper)](Storage Devices/smartmontools/template_cross-platform_smart_monitoring_(lld,_trapper))
            * **Cross-platform SMART monitoring (LLD, Trapper)**<p>The template was presented as a zip archive</p>
        * [template_s.m.a.r.t._monitoring_with_smartmontools_(lld,trapper)](Storage Devices/smartmontools/template_s.m.a.r.t._monitoring_with_smartmontools_(lld,trapper))
            * **S.M.A.R.T. monitoring with smartmontools (LLD,Trapper)**<p>The template was presented as a tar.gz archive</p>
        * [template_storage_device_monitoring_via_smartmontools](Storage Devices/smartmontools/template_storage_device_monitoring_via_smartmontools)
            * **Storage Device Monitoring via Smartmontools**<p>The template was presented as a zip archive</p>
        * [template_zbx-smartmonitor](Storage Devices/smartmontools/template_zbx-smartmonitor)
            * **zbx-smartmonitor**<p>The template was presented as a zip archive</p>
    * [template_asustor_storage_devices](Storage Devices/template_asustor_storage_devices)
        * **Template MIB Asustor**<p></p>
    * [template_avid_nexis](Storage Devices/template_avid_nexis)
        * **Template SNMP AvidNEXIS-MIB**<p></p>
    * [template_hitachi](Storage Devices/template_hitachi)
        * **Hitachi**<p>The template was presented as a zip archive</p>
    * [template_infortrend_esds_10xx-30xx](Storage Devices/template_infortrend_esds_10xx-30xx)
        * **Infortrend ESDS 10xx - 30xx**<p>The template was presented as a zip archive</p>
    * [template_macrosan](Storage Devices/template_macrosan)
        * **macrosanStorage**<p>宏杉存储监控模板</p>
    * [template_nec_hydrastor](Storage Devices/template_nec_hydrastor)
        * **NEC HYDRAstor template**<p>The template was presented as a zip archive</p>
    * [template_oceanstore_huawei_2600](Storage Devices/template_oceanstore_huawei_2600)
        * **Template Huawei Storage OceanStor**<p></p>
    * [template_overland-tandberg_neoxl_tape_libary](Storage Devices/template_overland-tandberg_neoxl_tape_libary)
        * **Template - Other - NeoXL**<p></p>
    * [template_pivot3_vstac_monitoring](Storage Devices/template_pivot3_vstac_monitoring)
        * **Template SNMP Pivot3**<p></p>
    * [template_quantum_stornext_quotas_webapi](Storage Devices/template_quantum_stornext_quotas_webapi)
        * **Template Stornext Quota**<p></p>
    * [template_seagate_nas_pro_6-bay](Storage Devices/template_seagate_nas_pro_6-bay)
        * **Seagate Pro NAS DP6**<p></p>
    * [template_storage_nbu_5240_snmp_trap](Storage Devices/template_storage_nbu_5240_snmp_trap)
        * **Template Storage NBU 5240 SNMP Trap**<p></p>
    * [template_storage_oceanstor_5500](Storage Devices/template_storage_oceanstor_5500)
        * **Huawei Storage OceanStor 5500 LLD V**<p></p>
    * [template_synology_active_backup_for_business](Storage Devices/template_synology_active_backup_for_business)
        * **Synology Active Backup for Business**<p>The template was presented as a zip archive</p>
    * [template_tintri_storage_snmp](Storage Devices/template_tintri_storage_snmp)
        * **Template Net Tintri SNMP**<p>Template for Trintri devices.</p>
    * [template_to_get_information_of_disks_in_lsi_controller](Storage Devices/template_to_get_information_of_disks_in_lsi_controller)
        * **Template to get information of disks in LSI controller**<p>The template was presented as a zip archive</p>
    * [template_wd_my_cloud_ex4](Storage Devices/template_wd_my_cloud_ex4)
        * **WD My Cloud EX4 Template**<p></p>
    * [template_xsky_sds](Storage Devices/template_xsky_sds)
        * **Template Storage XSKY XMS by HTTP**<p>Template for XMS API</p>
    * [template_zbx-disk-performance](Storage Devices/template_zbx-disk-performance)
        * **zbx-disk-performance**<p>The template was presented as a zip archive</p>
* [Telephony](Telephony)
    * [PBX](Telephony/PBX)
        * [template_3cx_services_linux](Telephony/PBX/template_3cx_services_linux)
            * **Template 3CX Services Linux**<p></p>
        * [template_alcatel_oxe](Telephony/PBX/template_alcatel_oxe)
            * **PABX**<p>Model for PBX OXE R9.1 or greater, discovery: "trunk" only works on OXE R12.2 Modelo para PBX OXE R9.1 ou superior, descoberta: tronco só funciona em OXE R12.2</p>
            * **PABX-TRAPS**<p></p>
        * [template_asterisk](Telephony/PBX/template_asterisk)
            * **Asterisk Template**<p>The template was presented as a zip archive</p>
        * [template_asterisk_1](Telephony/PBX/template_asterisk_1)
            * **Asterisk**<p>Asterisk IP PBX template</p>
        * [template_cucm_axl_e1_callactive](Telephony/PBX/template_cucm_axl_e1_callactive)
            * **Cisco AXL MGCP monitoring**<p></p>
        * [template_cucm_database_replication_state](Telephony/PBX/template_cucm_database_replication_state)
            * **Cisco AXL DataBase Replication status**<p></p>
        * [template_cucm_licenserequest](Telephony/PBX/template_cucm_licenserequest)
            * **Cisco AXL License data**<p></p>
        * [template_cucm_servicestatus](Telephony/PBX/template_cucm_servicestatus)
            * **Cisco AXL Feature Service Status**<p></p>
        * [template_leucotron_ision](Telephony/PBX/template_leucotron_ision)
            * **Template ISION**<p>Template do PABX da Leucotron, modelo ISION IP</p>
        * [template_mitel_mivoice_business](Telephony/PBX/template_mitel_mivoice_business)
            * **Template Mitel MiVoice Business**<p></p>
        * [template_mitel_mivoice_office_250](Telephony/PBX/template_mitel_mivoice_office_250)
            * **Mitel MiVoice Office 250**<p>For Mitel MiVoice Office 250 phone system, fka Mitel 5000, fka Inter-Tel. Requires access from Zabbix server to the web interface of the phone system.</p>
        * [template_s_3cx_odbc](Telephony/PBX/template_s_3cx_odbc)
            * **Templates 3CX ODBC**<p></p>
        * [template_siemens_hipath](Telephony/PBX/template_siemens_hipath)
            * **Siemens HiPATH**<p></p>
        * [template_siemens_hipath_3k_lld_discovery](Telephony/PBX/template_siemens_hipath_3k_lld_discovery)
            * **aa Template Siemens Hipath**<p></p>
        * [template_yeastar_s100_s300_trunk_monitoring](Telephony/PBX/template_yeastar_s100_s300_trunk_monitoring)
            * **Template Yeastar S300**<p></p>
    * [Phones](Telephony/Phones)
        * [template_gammu](Telephony/Phones/template_gammu)
            * **16TemplateGammuSMS**<p></p>
    * [Voice Gateways](Telephony/Voice Gateways)
        * [template_cisco_sla_udp-jitter](Telephony/Voice Gateways/template_cisco_sla_udp-jitter)
            * **VoIP IPSLA Discovery**<p></p>
        * [template_eltex_smg](Telephony/Voice Gateways/template_eltex_smg)
            * **Template Eltex SMG SNMPv2**<p></p>
        * [template_eltex_tau](Telephony/Voice Gateways/template_eltex_tau)
            * **Template Eltex TAU SNMPv2**<p></p>
        * [template_grandstream_ht813_snmpv2](Telephony/Voice Gateways/template_grandstream_ht813_snmpv2)
            * **Grandstream HT813 SNMPv2**<p>Simple ports and uptime checking for Grandstream HT813 gateway Be sure that you turned on SNMPv2 on device Made by http://itprofit32.ru</p>
    * [template_freeswitch](Telephony/template_freeswitch)
        * **Template_Freeswitch**<p></p>
    * [template_kamailio_stats](Telephony/template_kamailio_stats)
        * **Kamailio**<p>Kamailio (kamcli) template Version: 1.0.0 Author: Neimar L. Avila - neimar.avila@gmail.com</p>
    * [template_mimosa_c5c](Telephony/template_mimosa_c5c)
        * **Template Mimosa C5c by Dzset**<p>Template para Rádio Mimosa C5c. By Dzset Tecnologia. www.dzset.com.br</p>
    * [template_net_brocade_foundry_nonstackable_snmpv3](Telephony/template_net_brocade_foundry_nonstackable_snmpv3)
        * **Template Net Brocade_Foundry Nonstackable SNMPv3**<p>The template was presented as a zip archive</p>
    * [template_si2000](Telephony/template_si2000)
        * **SI2000**<p>The template was presented as a zip archive</p>
    * [template_snmp_geral](Telephony/template_snmp_geral)
        * **Template SNMP Geral**<p></p>
    * [template_snmp_huawei_roteador](Telephony/template_snmp_huawei_roteador)
        * **Template Huawei NE20S2**<p></p>
    * [template_snmp_interfaces_com_descrição](Telephony/template_snmp_interfaces_com_descrição)
        * **Template SNMP Interfaces**<p></p>
* [Unsorted](Unsorted)
    * [template_arp_monitoring_and_rogue_network_devices_detection](Unsorted/template_arp_monitoring_and_rogue_network_devices_detection)
        * **Template ARP Monitoring**<p>Rafael Gustavo Gassner 02/2021 This script activelly scans arp and sends to zabbix server using zabbix_sender. arp-scan should be installed and interfaces variable should be configured for your environment. You will want to run every 10 minutes or so, using crontab. First run(s) might not populate data, since LLD items are still beeing created in zabbix server. With the script and template, you will be able to: - Detect newly connected devices on the network. - Have a history of which macs were used by which ips and vice versa. - Detect if there are multiple ips associated to the same mac. - Detect if there are multiple macs associated to the same ip address. - Identify the active period on the network for each device. Since this is designed for a small environment, the trigger for new device has no recovery expression, and should be manually disabled. You can configure the "new device" trigger disabled for initial run. After that you could disable each trigger mannualy when you have recognized the new device as not beeing a rogue one. In the zabbix template, "Allowed hosts" variable should be configured for your environment in item prototypes and in discovery rule.</p>
    * [template_automatic_fuzzytime_trigger_for_zabbix_proxy](Unsorted/template_automatic_fuzzytime_trigger_for_zabbix_proxy)
        * **Auto fuzzytime trigger for Zabbix proxy**<p></p>
    * [template_brrr.cz_sensors](Unsorted/template_brrr.cz_sensors)
        * **Template Humidity and temperature sensor brrr.cz**<p></p>
        * **Template Temperature sensor brrr.cz**<p></p>
    * [template_btc_trading](Unsorted/template_btc_trading)
        * **Template - MBTC Trading**<p>Trading using MercadoBitcoin API. Build using MBTC api documentation (https://www.mercadobitcoin.com.br/api-doc/)</p>
    * [template_calix_interface_graphs](Unsorted/template_calix_interface_graphs)
        * **calix**<p></p>
    * [template_deva_smartgen_6](Unsorted/template_deva_smartgen_6)
        * **Template DEVA SmartGen 6**<p>Template for SNMP-enabled RDS coder DEVA SmartGen 6 http://www.devabroadcast.com v1.0: 2017-10-30 Roman Ermakov, r.ermakov@emg.fm</p>
    * [template_digital_devices_octopus_net](Unsorted/template_digital_devices_octopus_net)
        * **Octopus NET DD Bridge satelite mon**<p></p>
    * [template_ds18b20_&_raspberrypi_(1wire)](Unsorted/template_ds18b20_&_raspberrypi_(1wire))
        * **1wire Temperature Probe**<p>Automatically finds all 1wire devices and assumes them to be temperature probes. Specifically made for DS18B20 sensor probes in combination with Raspberry Pis. Useful macros: You can assign a friendly name for the probes using the following syntax: {$PROBE:"1wire-ID"} 1wire-ID being the devices name, found under /sys/bus/w1/devices/. The set value will represent the friendly name. You also have the option to assign sensors to three different groups: 0, 1 and 2. This will modify the trigger behaviour for specific sensors. 0 is using a normal temperature range calculated for server rooms, 1 is using an extended range and 2 is disabling triggers completly. You can see the specific values in the trigger section. The macro syntax for this is similar to the friendly name: {$GROUP:"1wire-ID"}</p>
    * [template_hikvision_nvr](Unsorted/template_hikvision_nvr)
        * **Template Hikvision**<p></p>
    * [template_improved_hikvision_camera](Unsorted/template_improved_hikvision_camera)
        * **Security Cameras - HikVision**<p>Based of SNMP v2 Generic</p>
    * [template_inode_psense_in_russian](Unsorted/template_inode_psense_in_russian)
        * **iNode-Sense**<p>byS</p>
    * [template_lld_script_for_sensor_type_items_(based_on_lm-sensors)](Unsorted/template_lld_script_for_sensor_type_items_(based_on_lm-sensors))
        * **LLD script for sensor type items (based on lm-sensors)**<p>The template was presented as a zip archive</p>
    * [template_mcs_hp](Unsorted/template_mcs_hp)
        * **Monitoring MCS**<p></p>
    * [template_module_dahua_video_camera](Unsorted/template_module_dahua_video_camera)
        * **Dahua Video Camera**<p>A simple template based on official Dahua MIB (DAHUA-SNMP-MIB 2014-01-07)</p>
    * [template_module_generic_snmpv3](Unsorted/template_module_generic_snmpv3)
        * **Template Module Generic SNMPv3**<p>Template Module Generic version: 0.14 MIBs used: SNMPv2-MIB</p>
    * [template_module_interfaces_simple_snmpv3](Unsorted/template_module_interfaces_simple_snmpv3)
        * **Template Module Interfaces Simple SNMPv3**<p>MIBs used: IF-MIB</p>
    * [template_noisypeak_live_encoders](Unsorted/template_noisypeak_live_encoders)
        * **Noisypeak Live encoders**<p></p>
    * [template_olt_fiber_homer-pon1_a_pon8](Unsorted/template_olt_fiber_homer-pon1_a_pon8)
        * **Fiberhome**<p></p>
    * [template_openldap-cluster-zabbix](Unsorted/template_openldap-cluster-zabbix)
        * **Template LDAP**<p></p>
    * [template_orban_8700i](Unsorted/template_orban_8700i)
        * **Template SNMP ORBAN8700-MIB - orban**<p>Generated by mib2zabbix</p>
    * [template_qct_server_snmpv2_fan_control](Unsorted/template_qct_server_snmpv2_fan_control)
        * **QCT Hardware Health**<p></p>
    * [template_scopus_ird-2900](Unsorted/template_scopus_ird-2900)
        * **Template Scopus IRD-2900 SNMP Sensors**<p>Scopus IRD-2900 series SNMP status sensors. Reading QPSK received signal quality. v1.0 initial release by r.ermakov@emg.fm. v1.1 added multiplier for BER, changed some colours.</p>
    * [template_sensor_prodigital_term-1net](Unsorted/template_sensor_prodigital_term-1net)
        * **Template Sensor ProDigital Term-1Net**<p>Template para o sensor de umidade e temperatura ProDigital Term-1Net</p>
    * [template_sensor_temp_e_umidade](Unsorted/template_sensor_temp_e_umidade)
        * **Sonicwall SNMP - TZ600**<p>Template customizado para o TZ600</p>
    * [template_shelly_1pm_via_http](Unsorted/template_shelly_1pm_via_http)
        * **Template Shelly 1PM**<p></p>
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
        * **Template Windows ICMP Macro Discovery Active**<p></p>
* [Virtualization](Virtualization)
    * [Citrix](Virtualization/Citrix)
        * [template_citrix_xenserver_disk,_physical_network_and_memory](Virtualization/Citrix/template_citrix_xenserver_disk,_physical_network_and_memory)
            * **Citrix Xenserver Disk, Physical Network and Memory**<p>The template was presented as a zip archive</p>
    * [Docker](Virtualization/Docker)
        * [template_docker_for_linux](Virtualization/Docker/template_docker_for_linux)
            * **Docker for Linux**<p>The template was presented as a zip archive</p>
        * [template_docker_swarm_monitoring](Virtualization/Docker/template_docker_swarm_monitoring)
            * **Template App Docker swarm**<p></p>
        * [template_harbor_services_status](Virtualization/Docker/template_harbor_services_status)
            * **Harbor**<p></p>
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
            * **Template Kube Pod by Prom API**<p></p>
            * **Template Kube Node by Prom API**<p>Official Linux template using node exporter. Known Issues: Description: node_exporter v0.16.0 renamed many metrics. CPU utilization for 'guest' and 'guest_nice' metrics are not supported in this template with node_exporter < 0.16. Disk IO metrics are not supported. Other metrics provided as 'best effort'. See https://github.com/prometheus/node_exporter/releases/tag/v0.16.0 for details. Version: below 0.16.0 Description: metric node_network_info with label 'device' cannot be found, so network discovery is not possible. Version: below 0.18 You can discuss this template or leave feedback on our forum https://www.zabbix.com/forum/zabbix-suggestions-and-feedback/387225-discussion-thread-for-official-zabbix-template-for-linux Template tooling version used: 0.34</p>
    * [Proxmox](Virtualization/Proxmox)
        * [template_proxmox_5.x_services_monitoring](Virtualization/Proxmox/template_proxmox_5.x_services_monitoring)
            * **Template Proxmox Services**<p></p>
        * [template_proxmox_countainers_resources_monitoring](Virtualization/Proxmox/template_proxmox_countainers_resources_monitoring)
            * **Proxmox Countainers resources monitoring**<p>The template was presented as a zip archive</p>
        * [template_proxmox_vms_backup_status](Virtualization/Proxmox/template_proxmox_vms_backup_status)
            * **Proxmox VMs Backup Status Template**<p>The template was presented as a zip archive</p>
    * [VMware](Virtualization/VMware)
        * [template_hypervisor_esxi_vmware_datastore_monitoring](Virtualization/VMware/template_hypervisor_esxi_vmware_datastore_monitoring)
            * **Template Virt VMware Hypervisor ESXi - Andre Bello**<p></p>
        * [template_improved_virt_vmware_hypervisor](Virtualization/VMware/template_improved_virt_vmware_hypervisor)
            * **Template Virt VMware Hypervisor**<p></p>
        * [template_snmp_check_for_vcenter_6.7_(vcsa_6.7)](Virtualization/VMware/template_snmp_check_for_vcenter_6.7_(vcsa_6.7))
            * **vCenter_SNMP-VMWARE_VCSA_6.7**<p>vCenter 6.7 U1 Build 10244745</p>
        * [template_snmp_check_vcenter](Virtualization/VMware/template_snmp_check_vcenter)
            * **SNMP-VMWARE-Supervision_SNMPv2_vCenter**<p>Check host vCenter with SNMP. /! Must be vCenter 6.0.2a or later /! </p>
        * [template_snmp_check_vcenter_(vcsa_6.5)](Virtualization/VMware/template_snmp_check_vcenter_(vcsa_6.5))
            * **vCenter_SNMP-VMWARE_VCSA_6.5**<p>vCenter 6.5 Usage 5318154</p>
        * [template_vmware_esx](Virtualization/VMware/template_vmware_esx)
            * **Template VM VMware Guest**<p></p>
            * **Template VM VMware**<p></p>
            * **Template VM VMware Hypervisor**<p></p>
        * [template_vmware_esxi_6.0_via_common_information_model_(cim)](Virtualization/VMware/template_vmware_esxi_6.0_via_common_information_model_(cim))
            * **VMWare ESXi 6.0 via Common Information Model (CIM)**<p>The template was presented as a zip archive</p>
        * [template_vmware_uuid_esxi_standalone](Virtualization/VMware/template_vmware_uuid_esxi_standalone)
            * **Template VM VMware UUID ESXi Standalone**<p></p>
        * [template_vmware_uuid_vm_standalone](Virtualization/VMware/template_vmware_uuid_vm_standalone)
            * **Template VM VMware UUID VM Standalone**<p></p>
    * [template_docker](Virtualization/template_docker)
        * **Template.Docker.ContainerDetails**<p>Monitor Docker Container Details</p>
        * **Template..Docker.OSLinux.ShortTermContainers**<p></p>
    * [template_hyclops_for_zabbix](Virtualization/template_hyclops_for_zabbix)
        * **HyClops for Zabbix**<p>The template was presented as a zip archive</p>
    * [template_oraclevm](Virtualization/template_oraclevm)
        * **OracleVM**<p>The template was presented as a zip archive</p>
    * [template_zerto_replication_vpg_monitoring_for_vsphere](Virtualization/template_zerto_replication_vpg_monitoring_for_vsphere)
        * **Zerto Replication VPG monitoring for vSphere**<p>The template was presented as a zip archive</p>
* [Zabbix](Zabbix)
    * [API Libraries](Zabbix/API Libraries)
        * [Bash](Zabbix/API Libraries/Bash)
            * [template_return_a_value_on_no_such_instance_](Zabbix/API Libraries/Bash/template_return_a_value_on_no_such_instance_)
                * **Return a value on "No such instance"**<p>The template was presented as a zip archive</p>
        * [template_zabbix_graph_image_api](Zabbix/API Libraries/template_zabbix_graph_image_api)
            * **Zabbix Graph Image API**<p>The template was presented as a zip archive</p>
    * [Icon sets](Zabbix/Icon sets)
        * [template_(zabbix)_icons_for_maps](Zabbix/Icon sets/template_(zabbix)_icons_for_maps)
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
            * **Spectralink DECT server**<p></p>
        * [template_sounds_alarms](Zabbix/Notifications/template_sounds_alarms)
            * **Sounds Alarms**<p>The template was presented as a zip archive</p>
        * [template_zabbix-line-notification](Zabbix/Notifications/template_zabbix-line-notification)
            * **Template Server Intel S5500BC IPMI**<p></p>
        * [template_zabbix-line-notify](Zabbix/Notifications/template_zabbix-line-notify)
            * **Template to get information about .NET status**<p>The template was presented as a zip archive</p>
        * [template_zabbix-rocket](Zabbix/Notifications/template_zabbix-rocket)
            * **Template ArubaOS**<p></p>
        * [template_zabbix-webhook-glpi](Zabbix/Notifications/template_zabbix-webhook-glpi)
            * **Zabbix-WebHook-GLPI**<p>The template was presented as a zip archive</p>
        * [template_zabbix_sms_alerts_via_d7sms](Zabbix/Notifications/template_zabbix_sms_alerts_via_d7sms)
            * **Zabbix SMS alerts via D7SMS**<p>The template was presented as a zip archive</p>
        * [template_zabbix_to_rocket.chat](Zabbix/Notifications/template_zabbix_to_rocket.chat)
            * **Zabbix to Rocket.Chat**<p>The template was presented as a zip archive</p>
        * [template_zabbix_viber_webhook_alerts](Zabbix/Notifications/template_zabbix_viber_webhook_alerts)
            * **Banwidth Monitoring with vnstat  - Includes triggers**<p>The template was presented as a zip archive</p>
    * [Provisioning and deploy](Zabbix/Provisioning and deploy)
        * [template_zabbix_manager](Zabbix/Provisioning and deploy/template_zabbix_manager)
            * **zabbix_manager**<p>The template was presented as a tar.gz archive</p>
    * [Tools and utilities](Zabbix/Tools and utilities)
        * [template_geoip2db_zabbix_inventory](Zabbix/Tools and utilities/template_geoip2db_zabbix_inventory)
            * **GeoIP2 Location Template**<p>Template for executing https://github.com/mjtrangoni/geoip2_zabbix This populates the location to the Host Inventory</p>
        * [template_name_to_snmp_sysname](Zabbix/Tools and utilities/template_name_to_snmp_sysname)
            * **Name to snmp sysName**<p>The template was presented as a zip archive</p>
        * [template_oid2valuemapping](Zabbix/Tools and utilities/template_oid2valuemapping)
            * **oid2valuemapping**<p>The template was presented as a zip archive</p>
        * [template_validate_session_key](Zabbix/Tools and utilities/template_validate_session_key)
            * **check if session key is valid api**<p>You may need to obtain a new session key. Replace user 'Admin' and password 'zabbix' curl -s -X POST http://127.0.0.1/api_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{ "jsonrpc ": "2.0 ", "method ": "user.login ", "params ":{ "user ": "Admin ", "password ": "zabbix "}, "id ":1}" | grep -E -o "([0-9a-f]{32,32})" curl -s -X POST http://127.0.0.1/zabbix/api_jsonrpc.php -H 'Content-Type: application/json' -H 'cache-control: no-cache' -d "{ "jsonrpc ": "2.0 ", "method ": "user.login ", "params ":{ "user ": "Admin ", "password ": "zabbix "}, "id ":1}" | grep -E -o "([0-9a-f]{32,32})"</p>
        * [template_zabbix_backup_script](Zabbix/Tools and utilities/template_zabbix_backup_script)
            * **Zabbix Backup Script**<p>The template was presented as a zip archive</p>
        * [template_zabbix_hostgroup_extract_tool](Zabbix/Tools and utilities/template_zabbix_hostgroup_extract_tool)
            * **Zabbix HostGroup Extract tool**<p>The template was presented as a zip archive</p>
        * [template_zabbix_mailserver](Zabbix/Tools and utilities/template_zabbix_mailserver)
            * **Zabbix Mailserver Template**<p>The template was presented as a tar.gz archive</p>
        * [template_zc(1)._zabbix_command_line_tools](Zabbix/Tools and utilities/template_zc(1)._zabbix_command_line_tools)
            * **zc(1). Zabbix command line tools**<p>The template was presented as a tar.gz archive</p>
    * [Web Addons](Zabbix/Web Addons)
        * [template_zabbix_integrate_with_keycloak[_zbxnext-4640]](Zabbix/Web Addons/template_zabbix_integrate_with_keycloak[_zbxnext-4640])
            * **zabbix integrate with keycloak[:ZBXNEXT-4640]**<p>The template was presented as a zip archive</p>
        * [template_zabbix_use_multiple_application](Zabbix/Web Addons/template_zabbix_use_multiple_application)
            * **Zabbix_use_multiple_application**<p>The template was presented as a zip archive</p>
        * [template_zabbix_wallboard](Zabbix/Web Addons/template_zabbix_wallboard)
            * **Zabbix Wallboard**<p>The template was presented as a tar.gz archive</p>
        * [template_zabbix_wallboard-ui_module](Zabbix/Web Addons/template_zabbix_wallboard-ui_module)
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
        * **Template Meraki Access Points**<p></p>
    * [template_mikrotik_queue_tree_discovery](Zabbix/template_mikrotik_queue_tree_discovery)
        * **Mikrotik-QUEUETREE**<p></p>
    * [template_mitrastar_gpt-2741gnac-n2_(vivo_fibra)](Zabbix/template_mitrastar_gpt-2741gnac-n2_(vivo_fibra))
        * **MitraStar - GPT-2741GNAC-N2**<p>Template roteador de fibra MitraStar - GPT-2741GNAC-N2 utilizado pela Vivo no Brasil Desenvolvido por Maurício Venzi mvenzi at gmail.com</p>
    * [template_module_http_lld_w_covid19](Zabbix/template_module_http_lld_w_covid19)
        * **Template_Module_HTTP_LLD_W_Corona_44**<p></p>
    * [template_monitorar_uso_de_cpu_processo_jboss](Zabbix/template_monitorar_uso_de_cpu_processo_jboss)
        * **Monitoramento de USO DE CPU JBOSS**<p></p>
    * [template_rpcm-1502](Zabbix/template_rpcm-1502)
        * **rpcm_1502_template**<p></p>
    * [template_signl4_–_critical_mobile_alerting](Zabbix/template_signl4_–_critical_mobile_alerting)
        * **SIAE Custom Shell Script**<p>The template was presented as a tar.gz archive</p>
    * [template_tp-link_managed_switch_with_snmp_v3](Zabbix/template_tp-link_managed_switch_with_snmp_v3)
        * **TP-Link Managed switch with SNMP v3**<p>It is for TP-Link managed switches</p>
    * [template_windows_certificates_discover](Zabbix/template_windows_certificates_discover)
        * **Windows Certificates Discover**<p>The template was presented as a zip archive</p>
    * [template_zabbix_agent_time_is_off](Zabbix/template_zabbix_agent_time_is_off)
        * **Time is off by Zabbix agent active**<p></p>
    * [template_zabbix_graph_downloader](Zabbix/template_zabbix_graph_downloader)
        * **Zabbix_Graph_Downloader**<p>The template was presented as a zip archive</p>
    * [template_zabbix_slack_alertscript](Zabbix/template_zabbix_slack_alertscript)
        * **Zabbix Slack AlertScript**<p>The template was presented as a zip archive</p>
    * [template_zabbix_trigger_excell_export](Zabbix/template_zabbix_trigger_excell_export)
        * **Zabbix trigger excell export**<p>The template was presented as a zip archive</p>
    * [template_zbx-reports](Zabbix/template_zbx-reports)
        * **zbx-report-templates**<p>The template was presented as a zip archive</p>
