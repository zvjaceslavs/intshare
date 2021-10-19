# Zabbix Template: External Website SSL Utilities

## References

This has been adopted from the great work by [Roman](https://share.zabbix.com/owner/github_631895) on the [Zabbix Share](https://share.zabbix.com/cat-app/web-servers/ssl-certificates-check) site. I wasn't able to get his precise methodology working on my environment, so I split the `.sh` file out into two separate ones and this is working well for me. [Roman's](https://share.zabbix.com/owner/github_631895) work was based off of [racooper@tamu.edu's](https://share.zabbix.com/owner/github_631895) work that was originally posted [here](http://aperto.fr/cms/en/blog/15-blog-en/15-ssl-certificate-expiration-monitoring-with-zabbix.html).

## Installation

**Note:** I've only tested this on Zabbix 3.4.0. I'm not sure if this will work well/at all for any other versions.

### Zabbix Template

Import `template_SSL_Cert_Check_External.xml` into your Zabbix installation. Assign this profile to required Hosts.

#### Host Requirements

Host Name must be the name of the website to be monitored. *Ex: www.zabbix.com*

##### Macros

| Macro                       | Default Value | Description                              |
| --------------------------- | ------------- | ---------------------------------------- |
| {$SNI}                      | {HOSTNAME}    | Allows you to pass a different SNI to `openssl` on the Zabbix server for site certificate monitoring |
| {$SSL_EXPIRY_NOTCLASSIFIED} | 90            | Threshold of remaining days until expiration to throw a trigger of 'Not Classified' severity |
| {$SSL_EXPIRY_INFO}          | 60            | Threshold of remaining days until expiration to throw a trigger of 'Information' severity |
| {$SSL_EXPIRY_AVG}           | 30            | Threshold of remaining days until expiration to throw a trigger of 'Average' severity |
| {$SSL_EXPIRY_WARN}          | 15            | Threshold of remaining days until expiration to throw a trigger of 'Warning' severity |
| {$SSL_EXPIRY_HIGH}          | 7             | Threshold of remaining days until expiration to throw a trigger of 'High' severity |
| {$SSL_HOST}                 | {HOSTNAME}    | Hostname ("Website") to monitor.         |
| {$SSL_PORT}                 | 443           | Port on which to test certificate.       |

### Recommended Modifications

I strongly recommend modifiying the {$SSL_EXPIRY_\*} macros for the sites that you're using *LetsEncrypt* certificates for as they are much shorter lived and don't renew until they are set to expire in a few weeks *(Depending on how you've configured it)*.

### Recommended Actions

-  Name: Change in SSL Certificate Issuer
   -  Conditions:
      -  Maintenance status not in maintenance
      -  Trigger name like *Change in SSL Certificate Issuer*
-  Name: SSL Certificate Expiring
   -  Conditions:
      -  Maintenance status not in maintenance
      -  Trigger Severity >= Average
      -  Trigger name like *SSL certificate on \* expires in less than*

### External Scripts

Place `zext_ssl_expiry.sh` and `zext_ssl_issuer.sh` into your Zabbix Server's *External Scripts* folder. *(In my instance, this is `/usr/lib/zabbix/externalscripts`.)*

	sudo chmod u+x ./zext_ssl_expiry.sh
	sudo chmod u+x ./zext_ssl_issuer.sh