#!/usr/bin/python
import select
import sys
import os
import requests
import tty
import fcntl
from pyzabbix import ZabbixMetric, ZabbixSender
import socket

#hostname = 'SRVR-12-1C'
hostname = 'SRVR-21-ZABBIX'
key='diskstat'
n=('{#DISK} rrqm/s wrqm/s r/s w/s rkB/s wkB/s avgrq-sz avgqu-sz await r_await w_await svctm %util')
n=n.split()
packet=list()
poller = select.poll()
poller.register(sys.stdin, select.POLLIN)
fcntl.fcntl(sys.stdin.fileno(), fcntl.F_SETFL, os.O_NONBLOCK)
s=''
while True:
        events = poller.poll(100)
        if events:
    	    s=''
    	    packet=list()
            for line in sys.stdin.readline():
                s = s + line
            if s.startswith('sd')or s.startswith('sd'):     
                d = s.split()
                for i in range(1,len(d)):
            	    d[i] = d[i].replace(',','.')
                    p = ZabbixMetric(hostname, key+"["+d[0]+","+n[i]+"]", d[i])
		    #print(p)
		    packet.append(p)
                result = ZabbixSender(use_config=True).send(packet)
		#print(result)