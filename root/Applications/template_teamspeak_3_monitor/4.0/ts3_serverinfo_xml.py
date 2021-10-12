#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
# Get number of online users
# Created by    M. Lehmann      2018/12/12
# Last change   M. Lehmann      2019/01/28

import sys
import telnetlib
import string
from lxml import etree

host = sys.argv[1]
port = sys.argv[2]
sid = sys.argv[3]
usr = sys.argv[4]
pwd = sys.argv[5]

tnCommand = ""
tnResult = ""
tnTimeout = 5
tnSuccess = "error id=0 msg=ok"
itemArr = []

# Function to replace teamspeak escape patterns
def remSpecChars(tsStr):
    tsStr = string.replace(tsStr, "\\\\", "\\")
    tsStr = string.replace(tsStr, "\\/", "/")
    tsStr = string.replace(tsStr, "\\s", " ")
    tsStr = string.replace(tsStr, "\\p", "|")
    return tsStr;

# Telnet query, get serverinfo
tn = telnetlib.Telnet()
tn.open(host, port, tnTimeout)
tnResult = tn.read_until("command.")

tnCommand = "use sid=" + sid + " client_nickname=" + usr + "\n"
tn.write(tnCommand)
tnResult = tn.read_until(tnSuccess, tnTimeout)

tnCommand = "login " + usr + " " + pwd + "\n"
tn.write(tnCommand)
tnResult = tn.read_until(tnSuccess, tnTimeout)

tnCommand = "serverinfo\n"
tn.write(tnCommand)
tnResult = tn.read_until(tnSuccess, tnTimeout)

tnCommand = "quit\n"
tn.write(tnCommand)

tnResult = tnResult[2:len(tnResult)-19]

# Split serverinfo to array of single records
itemArr = tnResult.split(' ')

# Create xml
data = etree.Element('ts3-serverinfo')
for i in itemArr:
    child = i[0:i.find('_')]
    vName = ''
    vText = ''
    if '=' in i:
        vName = i[i.find('_')+1:i.find('=')]
        vText = i[i.find('=')+1: len(i)]
    else:
        vName = i[i.find('_')+1:len(i)]

    appendTo = data.find(child)
    if appendTo == None:
        appendTo = etree.SubElement(data, child)

    value = etree.SubElement(appendTo, vName)
    if vText != '':
        value.text = remSpecChars(vText)

print (etree.tostring(data, pretty_print=True, xml_declaration=True))