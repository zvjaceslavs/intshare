# Zabbix-web-check

As you may know Zabbix web monitoring checks work only from Zabbix-server or Zabbix-proxy no matter on which host you attached the web scenario.  

This simple script allows you to check web site from any host by counting keywords.  

If you want to make it work, you need to put files like this:
```bash
debian@user:/etc/zabbix# tree
.
├ files
│   └ web_check.json
├ scripts
│   └ web_check.sh
├ zabbix_agentd.conf
├ zabbix_agentd.d
│   ├ test-param.conf
│   └ web_check.conf
```

Restart zabbix-agent and import zbx_export_templates.xml  (Zabbix version 4.4)

Autodiscovery will pick up web sites, keywords and header for monitoring from web_check.json:

```json
[
...
    {"{#SITENAME}":"you will see it in the item name","{#SITEURL}":"https://web site or IP to monitor/","{#SITEKEYWORD}":"keyword to count","{#SITEHEADER}":"Host:www.sitename.com (with no spaces, it matters)"},
...
]
```

Few words about the bash script. It kinda imitates 3 differnet users by using `curl` with 3 different user-agents. I had my reasons for that, but if you don't want that behavior you are free to change it :)

Files and scripts are provided "as is" without any warranty and bla-bla-bla