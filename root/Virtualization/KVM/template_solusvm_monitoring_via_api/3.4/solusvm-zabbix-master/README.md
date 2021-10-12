# SolusVM zabbix template

Discovering and Collecting stat via SolusVM API

More info about API: [https://documentation.solusvm.com/display/DOCS/API](https://documentation.solusvm.com/display/DOCS/API)

##### # Zabbix items:
- VM count
- Free disk for VMs
- Limit disk for VMs
- Allocated RAM for VMs
- Limit RAM for VMs
- Free IPv4
- Free IPv6

##### # Zabbix triggers:
if RAM uses > 90%: (allocated / limit * 100) > 90

if DISK uses > 80%: (free / limit * 100) < 20


##### # Requirement:
CURL: [https://curl.haxx.se/](https://curl.haxx.se/)

JQ plugin: [https://stedolan.github.io/jq/](https://stedolan.github.io/jq/)


##### # How to use:
Use on the master node

Generate API id and key for 127.0.0.1

Change mode HTTP or HTTPS in ```solusvm.sh```. Default: 0 - HTTP

Add macros in zabbix {$SOLUSID) and {$SOLUSKEY}


##### # Zabbix-Agent requirement:
Req: Need set timeout for zabbix-agent - 5-6 sec

To the config file zabbix_agentd.conf add ```Timeout = 5```


ZABBIX share: [https://share.zabbix.com/virtualization/kvm/solusvm-monitoring-via-api](https://share.zabbix.com/virtualization/kvm/solusvm-monitoring-via-api)
