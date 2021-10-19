# Template App SSL ImmuniWeb Scan

## Description

https://www.immuniweb.com/ssl/

## Overview

**ImmuniWeb SSL Security Test**


This template uses a Script (JavaScript) item to communicate with the ImmuniWeb SSL Security Test API to initiate a test and get the results. The scores take into account SSL certificates, enabled protocols, vulnerabilities, etc.


It will run the checks 3 times subsequently every 5 hours, and only store the result if it changes. This is done to hopefully trigger the scan and retrieve the result on the next check. ImmuniWeb allows 10 free tests per day, but the results are cached so it will not run a new test every time. The script will request a re-check if the cached result is over 3 days old.


Link the template to your host, set the {$SSL\_HOST} macro, and override the {$SSL\_PORT} and {$IMMUNIWEB\_MIN\_SCORE} macros if needed. The default minimum score is 50, which is a B- score.


https://www.immuniweb.com/ssl/#scoring


 

## Author

Nate

## Macros used

|Name|Description|Default|Type|
|----|-----------|-------|----|
|{$IMMUNIWEB_MIN_SCORE}|<p>https://www.immuniweb.com/ssl/#scoring</p>|`50`|Text macro|
|{$SSL_HOST}|<p>-</p>|`{HOST.NAME}`|Text macro|
|{$SSL_PORT}|<p>-</p>|`443`|Text macro|
## Template links

There are no template links in this template.

## Discovery rules

There are no discovery rules in this template.

## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{$SSL_HOST} ImmuniWeb Scan Date|<p>-</p>|`Dependent item`|immuniweb.scan.date<p>Update: 0</p>|
|{$SSL_HOST} ImmuniWeb SSL Grade|<p>https://www.immuniweb.com/ssl/#scoring</p>|`Dependent item`|immuniweb.ssl.grade<p>Update: 0</p>|
|{$SSL_HOST} ImmuniWeb Server Signature|<p>-</p>|`Dependent item`|immuniweb.server.signature<p>Update: 0</p>|
|{$SSL_HOST} ImmuniWeb SSL Score|<p>https://www.immuniweb.com/ssl/#scoring</p>|`Dependent item`|immuniweb.ssl.score<p>Update: 0</p>|
|{$SSL_HOST} ImmuniWeb SSL PCI Compliant|<p>-</p>|`Dependent item`|immuniweb.ssl.pci.compliant<p>Update: 0</p>|
|{$SSL_HOST} ImmuniWeb SSL HIPAA Compliant|<p>-</p>|`Dependent item`|immuniweb.ssl.hipaa.compliant<p>Update: 0</p>|
|{$SSL_HOST} ImmuniWeb SSL Scan|<p>-</p>|`Script`|immuniweb.scan.result<p>Update: 0;h/5m0,5,15</p>|
## Triggers

There are no triggers in this template.

