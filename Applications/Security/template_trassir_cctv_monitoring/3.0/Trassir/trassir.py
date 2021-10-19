#!/usr/bin/env python
#-*-coding: UTF-8 -*-

# OPTIONS VERIFICATION
import requests
import json
import sys
import re
import select
from pyzabbix import ZabbixMetric, ZabbixSender

hostname = 'SRVR-10-VIDEO'
key='trassir'
packet=list()
f=[]

requests.packages.urllib3.disable_warnings()
r=requests.get('https://172.20.0.10:8080/objects/?password=12345', verify=False)
t = r.text
t = re.split('/\*', t)
g = json.loads(t[0])
for i in range(len(g)):
	if (g[i]['class'] == 'IP Device'):
		r=requests.get('https://172.20.0.10:8080/objects/{}?password=12345'.format (g[i]['guid']), verify=False)
		t = r.text
		t = re.split('/\*', t)
		f.append(g[i])
		k = json.loads(t[0])
		if (k['state_vector'][0] == 'Connected'):
			s='1'
		else: 
			s='0'
		p = ZabbixMetric(hostname, key+'['+g[i]['name']+']', s)

		packet.append(p)

r=requests.get('https://172.20.0.10:8080/health/?password=12345', verify=False)
g = r.text
g = re.split('/\*', g)
g = json.loads(g[0])

g['channels_online']=float(g['channels_online'])/float(g['channels_total'])*100
for i in g:
	p = ZabbixMetric(hostname, key+'['+i+']', g[i])
	packet.append(p)
	#f.append({'name':i})

t = json.dumps(f)
t = '{"data":'+t+'}'
t = t.replace('"name"','"{#KEYNAME}"')

result = ZabbixSender(use_config=True).send(packet)
print (t)
#print (result)
