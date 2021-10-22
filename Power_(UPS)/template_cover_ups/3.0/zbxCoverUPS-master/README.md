Zabbix template for COVER UPS
=============================

No MIBs required

tested with model PMR 6kV, should work with other models too (and probably with more chinease made UPS that partialy use RFC-1628)
only basic items, some triggers and graphs added as well.

Required value mappings:
------------------------

 1. Battery Status
 
 * 1 ⇒ unknown
 * 2 ⇒ Normal
 * 3 ⇒ Low
 * 4 ⇒ Depleted
 
 2. upsOutputSource	
 
 * 3 ⇒ on-line
 * 4 ⇒ bypass
 * 5 ⇒ battery
 
 Alternatively, You can use provided xml and import value mappings.
 
 Enjoy.
