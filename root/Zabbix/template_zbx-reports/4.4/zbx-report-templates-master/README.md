## Zabbix report templates(modified)
- https://github.com/nikimaxim/zbx-report-templates.git
- Provides additional information compared to the default templates.

### Installation in Zabbix
### Change the notification template
- Zabbix Web -> Configuration -> Actions -> Report problems to Zabbix administrators

#### Operations: Default subject 
```Problem: {EVENT.SEVERITY}: {EVENT.NAME}```

#### Operations: Default message
```Problem date: {EVENT.TIME} on {EVENT.DATE}
Host: {HOST.NAME}
Item name: {ITEM.NAME}
Problem name: {EVENT.NAME}
Severity: {EVENT.SEVERITY}

Item values:
1. {ITEM.VALUE}
2. {{HOST.HOST}:{ITEM.KEY}.last(#2)}

Original problem ID: {EVENT.ID}
{TRIGGER.URL}
```

#### Recovery operations: Default subject
```Resolved: {EVENT.SEVERITY}: {EVENT.NAME}```

#### Recovery operations: Default message
```Problem date: {EVENT.TIME} on {EVENT.DATE}
Host: {HOST.NAME}
Item name: {ITEM.NAME}
Problem name: {EVENT.NAME}
Severity: {EVENT.SEVERITY}

Item values:
1. {ITEM.VALUE}
2. {{HOST.HOST}:{ITEM.KEY}.last(#2)}

Original problem ID: {EVENT.ID}
{TRIGGER.URL}
```
<br/>

#### Examples images:
- Subject:

<br/>

![Image alt](https://github.com/nikimaxim/zbx-report-templates/blob/master/img/3.png)

<br/>

- Body problem:


![Image alt](https://github.com/nikimaxim/zbx-report-templates/blob/master/img/4.png)

<br/>

- Subject:

<br/>

![Image alt](https://github.com/nikimaxim/zbx-report-templates/blob/master/img/5.png)

<br/>

- Body problem:

<br/>

![Image alt](https://github.com/nikimaxim/zbx-report-templates/blob/master/img/6.png)


#### License
- GPL v3
