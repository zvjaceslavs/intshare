#!/usr/bin/env python
# coding=utf-8

# Python2 & 3script for sending sms through D7SMS gateway
# http://d7networks.com

USERNAME = 'API_Username'# d7 sms gateway API Username
PASSWORD =  'API_Password'# d7 sms gateway API Password
SOURCE_ADDRESS = 'd7-zab' # source address to be used while sending sms


import sys

if __name__ == '__main__':
    version = sys.version
    if version[:1] == '2':
        from urllib2 import urlopen
        from urllib import urlencode
    elif version[:1] == '3':
        from urllib.request import urlopen
        from urllib.parse import urlencode
    # args = parser.parse_args()
    to = sys.argv[1]
    content = sys.argv[2]
    if not (to and content) :
        print("to and content arguments are required to send sms")
    else:
        content =  content.strip('\'')
        to = to.strip('\'').split(',') # will be a list of destinations
        for destination in to:
            baseParams = {
                'username': USERNAME,
                'password': PASSWORD,
                'from': SOURCE_ADDRESS,
                'to': destination,
                'content': content
            }
            # Send an SMS-MT to d7 sms gateway
            urlopen("http://smsc.d7networks.com:1401/send?%s" % urlencode(baseParams)).read()
