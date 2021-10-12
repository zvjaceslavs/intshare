==========================
Zabbix Template App Zenoss
==========================

About
=====

Zabbix template for Zenoss. Unfortunately Zenoss doesn't have powerfull  
selfmonitoring. Zabbix solution has been choosed, because realtime log 
monitoring. You can find better systems (OpenTSDB, Logstash, ...) for some 
particular monitoring problems, but Zabbix is IMHO the best and the most flexible 
monitoring system for monitoring of Zenoss in this case. This template is 
prepared for Zenoss Core 4.2.5 (all on one node), but it can be modified also 
for commercial or older versions.

Zenoss Metrics
==============

Zenoss Performance (90 metrics)
-------------------------------

These metrics are fetched from Zenoss Daemon Performance metrics 
(/opt/zenoss/perf/Daemons/*.rrd). I didn't find any way how to obtain them 
realtime, so RRD files are used. Zabbix doesn't handle NaN value, so NaN is 
converted to 0.RRDs are not updated realtime, but they can be delayed 
5-9 minutes. So rrdtool uses --start and --end time condition:

    rrdtool fetch --start=now-15min --end=now-9min <rrd_file.rrd> AVERAGE
  
![Zabbix Template App Zenoss - Zenoss Performance](https://raw.github.com/jangaraj/Zabbix-Template-App-Zenoss/master/images/Zabbix_Zenoss_App_Template_metrics_Zenoss_Performance.png)  


Zenoss Logs (44 metrics)
------------------------

Usually only errors or warns are logged in Zabbix. POSIX regular expressions are 
used for matching log lines. Exceptions has some "audit" logs e.g. install.log. 
All log lines are fetched in this case. Events are raised if you have some new  
log lines at the last 10 minutes. Calculated items new log lines at the last 
minute, are created, because graph for logs.

![Zabbix Template App Zenoss - Zenoss Logs](https://raw.github.com/jangaraj/Zabbix-Template-App-Zenoss/master/images/Zabbix_Zenoss_App_Template_metrics_Zenoss_Logs.png)


Zenoss RabbitMQ (21 metrics)
----------------------------

Keep in mind, that RabbitMQ metrics need /usr/sbin/rabbitmqadmin, which is not 
standard part of RabbitMQ. Check http://www.rabbitmq.com/management-cli.html for 
more informations. You can monitor more RabbitMQ metrics, but only basics 
(current size of queue and current message queue rate) are enabled. 

![Zabbix Template App Zenoss - Zenoss RabbitMQ](https://raw.github.com/jangaraj/Zabbix-Template-App-Zenoss/master/images/Zabbix_Zenoss_App_Template_metrics_Zenoss_RabbitMQ.png)


Zenoss Processes (54 metrics)
-----------------------------

Every Zenoss is monitored for number of processes, CPU and memory utilization 
(parsed from ps -u C).

![Zabbix Template App Zenoss - Zenoss Processes](https://raw.github.com/jangaraj/Zabbix-Template-App-Zenoss/master/images/Zabbix_Zenoss_App_Template_metrics_Zenoss_Processes.png)


Zenoss Ports (9 metrics)
------------------------

Some known TCP/UDP Zenoss ports are also monitored. If port is TCP, it's also 
monitored its performance.

![Zabbix Template App Zenoss - Zenoss Ports](https://raw.github.com/jangaraj/Zabbix-Template-App-Zenoss/master/images/Zabbix_Zenoss_App_Template_metrics_Zenoss_Ports.png)


Graphs
======
Template contains 16 graphs. Selected examples:

![Zabbix Template App Zenoss - Graph Zenoss CPU utilization](https://raw.github.com/jangaraj/Zabbix-Template-App-Zenoss/master/images/Zabbix_Zenoss_App_Template_graph_Zenoss_CPU_utilization.png)

![Zabbix Template App Zenoss - Graph Zenoss new log lines](https://raw.github.com/jangaraj/Zabbix-Template-App-Zenoss/master/images/Zabbix_Zenoss_App_Template_graph_Zenoss_new_log_lines.png)

![Zabbix Template App Zenoss - Graph Zenoss running processes](https://raw.github.com/jangaraj/Zabbix-Template-App-Zenoss/master/images/Zabbix_Zenoss_App_Template_graph_Zenoss_running_processes.png)


Installation
============

Import provided template Zabbix-Template-App-Zenoss.xml and configure Zabbix 
agent on Zenoss nodes as active agent, because log monitoring. Also include 
userparameters_zenoss.conf into your zabbix agent configuration 
(Include directive). Associate Template App Zenoss with your Zenoss hosts. 
Another recommended standard Zabbix templates for Zenoss: Template OS Linux, 
Template App MySQL. 


Links
=====

Author: Jan Garaj - www.jangaraj.com

Zabbix: www.zabbix.com

Zenoss: www.zenoss.com
