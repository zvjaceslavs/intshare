# Template JMX Tomcat

## Overview

For Zabbix version: 5.0 and higher

## Setup

Refer to the vendor documentation.

## Zabbix configuration

No specific Zabbix configuration is required.

### Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|http-8443 requests per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8443",requestCount]<p>Update: 60</p>|
|http-8080 bytes received per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8080",bytesReceived]<p>Update: 60</p>|
|http-8080 gzip compression|<p>-</p>|`JMX agent`|jmx["Catalina:type=ProtocolHandler,port=8080",compression]<p>Update: 3600</p>|
|http-8080 threads busy|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=http-8080",currentThreadsBusy]<p>Update: 60</p>|
|http-8443 request processing time|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8443",processingTime]<p>Update: 60</p>|
|jk-8009 threads busy|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=jk-8009",currentThreadsBusy]<p>Update: 60</p>|
|jk-8009 bytes sent per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=jk-8009",bytesSent]<p>Update: 60</p>|
|http-8080 threads max|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=http-8080",maxThreads]<p>Update: 3600</p>|
|jk-8009 bytes received per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=jk-8009", bytesReceived]<p>Update: 60</p>|
|jk-8009 errors per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=jk-8009",errorCount]<p>Update: 60</p>|
|Number of sessions we rejected due to maxActive being reached|<p>-</p>|`JMX agent`|jmx["Catalina:type=Manager,path=/,host=localhost",rejectedSessions]<p>Update: 60</p>|
|Tomcat version|<p>-</p>|`JMX agent`|jmx["Catalina:type=Server",serverInfo]<p>Update: 3600</p>|
|jk-8009 threads max|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=jk-8009",maxThreads]<p>Update: 3600</p>|
|http-8443 threads busy|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=http-8443",currentThreadsBusy]<p>Update: 60</p>|
|jk-8009 requests per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=jk-8009",requestCount]<p>Update: 60</p>|
|http-8080 requests per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8080",requestCount]<p>Update: 60</p>|
|Maximum number of active sessions so far|<p>-</p>|`JMX agent`|jmx["Catalina:type=Manager,path=/,host=localhost",maxActive]<p>Update: 60</p>|
|http-8443 threads max|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=http-8443",maxThreads]<p>Update: 3600</p>|
|jk-8009 threads allocated|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=jk-8009",currentThreadCount]<p>Update: 60</p>|
|http-8443 threads allocated|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=http-8443",currentThreadCount]<p>Update: 60</p>|
|http-8443 bytes received per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8443",bytesReceived]<p>Update: 60</p>|
|jk-8009 request processing time|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=jk-8009",processingTime]<p>Update: 60</p>|
|http-8443 bytes sent per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8443", bytesSent]<p>Update: 60</p>|
|http-8080 errors per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8080",errorCount]<p>Update: 60</p>|
|The maximum number of active Sessions allowed, or -1 for no limit|<p>-</p>|`JMX agent`|jmx["Catalina:type=Manager,path=/,host=localhost",maxActiveSessions]<p>Update: 3600</p>|
|http-8080 bytes sent per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8080",bytesSent]<p>Update: 60</p>|
|http-8080 request processing time|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8080",processingTime]<p>Update: 60</p>|
|Number of active sessions at this moment|<p>-</p>|`JMX agent`|jmx["Catalina:type=Manager,path=/,host=localhost",activeSessions]<p>Update: 60</p>|
|Number of sessions created by this manager per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=Manager,path=/,host=localhost",sessionCounter]<p>Update: 60</p>|
|http-8080 threads allocated|<p>-</p>|`JMX agent`|jmx["Catalina:type=ThreadPool,name=http-8080",currentThreadCount]<p>Update: 60</p>|
|http-8443 errors per second|<p>-</p>|`JMX agent`|jmx["Catalina:type=GlobalRequestProcessor,name=http-8443",errorCount]<p>Update: 60</p>|
|http-8443 gzip compression|<p>-</p>|`JMX agent`|jmx["Catalina:type=ProtocolHandler,port=8443",compression]<p>Update: 3600</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|70% http-8080 worker threads busy on {HOST.NAME}|<p>-</p>|warning|
|70% http-8443 worker threads busy on {HOST.NAME}|<p>-</p>|warning|
|70% jk-8009 worker threads busy on {HOST.NAME}|<p>-</p>|warning|
|gzip compression is off for connector http-8080 on {HOST.NAME}|<p>-</p>|information|
|gzip compression is off for connector http-8443 on {HOST.NAME}|<p>-</p>|information|
