# Sonicwall-Gen6Plusv2

## Description

V2 Plantilla para gráficas de interfaces manuales y auto descubrimiento de VPNs y Vlans, especial para VPNs TunelInterface. Creacción de gráficas manuales, no automáticas, para evitar gráficas automáticas por descubrimiento, con trafico 0. Traps Implementados y Tags para avisos de recuperación autoática. En continua adaptación........

## Overview

*NOTA:versión mejorada 19-01-2021, Mejoras y arreglos. varios.*


**Plantilla para Firewalls Sonicwall Gen6 en adelante, 6.2.x, 6.5.x.***Probado en TZ400. TZ500, TZ600, NA2600. (v6.5 todos)* **Zabbix V5.2**


El resto de plantillas publicadas aquí, me ayudaron a aprender y crear esta, mis agradecimientos a los autores.


**Características:**Para Protocolo SNMP, en solicitudes y en Traps.


Toda en Español. (lo que sale en Ingles es porque se inyecta de Zabbix, o lo heredo de los MIBs de Sonicwall)


Detección de interfaz físico caído y recuperación, (se ha de des habilitar los que no están en uso) Nota:Sonicwall informa entre 3 estados, 1 arriba, 2 caído, 3 desconocido.(Interfaces definidos en la plantilla 10)


Hereda Graficas y Alertas de otras plantillas que me parecieron interesantes, como Latencia, Perdida de paquetes, etc.  
Graficas de trafico en la interfaces Fisicas, Ram Usada, y Conexiones concurrentes Estas dos ultimas con Disparo de alertas y recuperación.


* **Destacados:****En los nuevos Firmwares Gen6.**


Se ayuda de los nuevos OIDs, para la detección precisa del uso de los Cores. Sonicwall ya tiene implementado 2 nuevos, uno para el ControlPlane (Core 0) (sonicCurrentManagementCPUUtil.0) y otro para el DataPlane (resto de cores) (sonicCurrentFwdAndInspectCPUUtil.0) Este ultimo es el encargado del análisis de los paquetes en los distintos servicios de seguridad, y funcionalidades.  
Alertas y recuperación incluidas.


* **Aplicación de Información para cumplimentar el inventario.** He añadido 10 entradas que aportan sus datos para rellenar el inventario con información relevante.


* **Taps** Se han añadido 10 tipos distintos de avisos la mayoria con recuperación ante eventos como FailOver, Reinicio por Software, Servicios de Seguriad, NetworkMonitor,AppControl, etc.
* Sonicpoints Estado y nombres. (DLL)


**Con especial incapie a las caídas y** **recuperaciones** **de los túneles, tanto en el modo Tunel interface como S2S**


* **Auto descubrimiento** Tanto las VLans como los tuneles la captación del computo del trafico se hace de forma automática, lo ideal es crear las gráficas a mano de los "Items" creados automáticamente.


*Esto se produce al crear Ids distintos cada vez que un tunel se cae o renegocia, esto es una pesadilla, de hacer a mano, lo ideal es el modo de autodescubrimiento y tirar de variables.*


**snmpwalk. (Debian)** Lo use para lanzar consultas comprobar resultados, indagar en otros OIDS, esencial.  
**ManageEngine MibBrowser (Windows)** Carga de los MIBs de Traps y saber que es para que y etiquetar.


*NOTA:versión mejorada 19-01-2021, Mejoras y arreglos. varios.*



## Author

LocalRed

## Macros used

There are no macros links in this template.

## Template links

There are no template links in this template.

## Discovery rules

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|Interfaces+Vlan|<p>Descubrir Interfaces y Vlans</p>|`SNMP agent`|sonicwallifDescr<p>Update: 1m</p>|
|SonicPoints-Asociaciones|<p>Descubrir MAC Asociadas</p>|`SNMP agent`|sonicStaPhysAddress<p>Update: 1m</p>|
|SonicPoints-Nombres|<p>Descubrir Estado SonicPonts</p>|`SNMP agent`|sonicApName<p>Update: 1m</p>|
|VPNs|<p>-</p>|`SNMP agent`|sonicwallsonicSAStatUserName<p>Update: 1m</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|X9 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.10<p>Update: 60</p>|
|swFwTrapEnhFwEvent|<p>-</p>|`SNMP trap`|snmptrap[SONICWALL-FIREWALL-TRAP-MIB::swFwTrapEnhFwEvent]<p>Update: 0</p>|
|CPU Load DP|<p>CPU DataPlane</p>|`SNMP agent`|sonicCurrentFwdAndInspectCPUUtil.0<p>Update: 60</p>|
|Status X7|<p>-</p>|`SNMP agent`|ifOperStatus.8<p>Update: 60</p>|
|X1 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.2<p>Update: 60</p>|
|Status X8|<p>-</p>|`SNMP agent`|ifOperStatus.9<p>Update: 60</p>|
|Descripcion|<p>-</p>|`SNMP agent`|sonicsysDescr<p>Update: 86400</p>|
|X4 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.5<p>Update: 60</p>|
|MAC-X1-WAN|<p>-</p>|`SNMP agent`|ifPhysAddress2<p>Update: 86400</p>|
|X7 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.8<p>Update: 60</p>|
|CPU Load|<p>CPU utilizada VMedio</p>|`SNMP agent`|sonicCurrentCPUUtil.0<p>Update: 60</p>|
|Reinicio Inminente|<p>Trap de reinicio por Software</p>|`SNMP trap`|snmptrap[SNMPv2-MIB::coldStart]<p>Update: 0</p>|
|X6 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.7<p>Update: 60</p>|
|X10 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.11<p>Update: 60</p>|
|swFwTrapEnhSecurityServices|<p>Security Services</p>|`SNMP trap`|snmptrap[SONICWALL-FIREWALL-TRAP-MIB::swFwTrapEnhSecurityServices]<p>Update: 0</p>|
|X0 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.1<p>Update: 60</p>|
|X4 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.5<p>Update: 60</p>|
|Sonicwall Up Time|<p>-</p>|`SNMP agent`|sysUpTime.0<p>Update: 60</p>|
|X7 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.8<p>Update: 60</p>|
|Status X0|<p>-</p>|`SNMP agent`|ifOperStatus.1<p>Update: 60</p>|
|SystemName|<p>-</p>|`SNMP agent`|sonicsysName<p>Update: 86400</p>|
|X8 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.9<p>Update: 60</p>|
|X1 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.2<p>Update: 60</p>|
|swFwTrapEnhNetworkMonitor|<p>-</p>|`SNMP trap`|snmptrap[SONICWALL-FIREWALL-TRAP-MIB::swFwTrapEnhNetworkMonitor]<p>Update: 0</p>|
|X5 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.6<p>Update: 60</p>|
|Nuevo-Dinamico-IP-SP-Clientes|<p>-</p>|`SNMP agent`|sonicStaIpAddress<p>Update: 1m</p>|
|swFwTrapEnhIntrusionDetection|<p>Eventos Intrusion Detection</p>|`SNMP trap`|snmptrap[SONICWALL-FIREWALL-TRAP-MIB::swFwTrapEnhIntrusionDetection]<p>Update: 0</p>|
|Status X10|<p>-</p>|`SNMP agent`|ifOperStatus.11<p>Update: 60</p>|
|X2 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.3<p>Update: 60</p>|
|swFwTrapEnhAuthAccess|<p>Fallos en Autenticación</p>|`SNMP trap`|snmptrap[SONICWALL-FIREWALL-TRAP-MIB::swFwTrapEnhAuthAccess]<p>Update: 0</p>|
|MAC-X0-LAN|<p>-</p>|`SNMP agent`|ifPhysAddress1<p>Update: 86400</p>|
|swFwTrapEnhVpn|<p>Eventos Tunel</p>|`SNMP trap`|snmptrap[SONICWALL-FIREWALL-TRAP-MIB::swFwTrapEnhVpn]<p>Update: 0</p>|
|X0 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.1<p>Update: 60</p>|
|Status X2|<p>-</p>|`SNMP agent`|ifOperStatus.3<p>Update: 60</p>|
|X3 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.4<p>Update: 60</p>|
|Status X4|<p>-</p>|`SNMP agent`|ifOperStatus.5<p>Update: 60</p>|
|Status X1|<p>-</p>|`SNMP agent`|ifOperStatus.2<p>Update: 60</p>|
|swFwTrapEnhWanFailover|<p>Alerta Trap WanFailover Evento</p>|`SNMP trap`|snmptrap[SONICWALL-FIREWALL-TRAP-MIB::swFwTrapEnhWanFailover]<p>Update: 0</p>|
|Status X6|<p>-</p>|`SNMP agent`|ifOperStatus.7<p>Update: 60</p>|
|Firmware Version|<p>-</p>|`SNMP agent`|sonicFirmwareVersion<p>Update: 3600</p>|
|SystemLocation|<p>-</p>|`SNMP agent`|sonicsysLocation<p>Update: 86400</p>|
|Trapper-Resto|<p>Todos menos los ya filtrados</p>|`SNMP trap`|snmptrap.fallback<p>Update: 0</p>|
|X3 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.4<p>Update: 60</p>|
|RAM|<p>Memória utilizada</p>|`SNMP agent`|sonicCurrentRAMUtil.0<p>Update: 60</p>|
|Status X3|<p>-</p>|`SNMP agent`|ifOperStatus.4<p>Update: 60</p>|
|X2 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.3<p>Update: 60</p>|
|X8 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.9<p>Update: 60</p>|
|Status X9|<p>-</p>|`SNMP agent`|ifOperStatus.10<p>Update: 60</p>|
|Perdida de Paquetes|<p>-</p>|`Simple check`|icmppingloss<p>Update: 60</p>|
|CPU Load CP|<p>CPU ControlPlane</p>|`SNMP agent`|sonicCurrentManagementCPUUtil.0<p>Update: 60</p>|
|X5 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.6<p>Update: 60</p>|
|X9 Bytes In/sec|<p>-</p>|`SNMP agent`|ifInOctets.10<p>Update: 60</p>|
|Serial Number|<p>-</p>|`SNMP agent`|sonicSerialNumber<p>Update: 3600</p>|
|Rom|<p>-</p>|`SNMP agent`|sonicROMVersion<p>Update: 86400</p>|
|swFwTrapEnhApplicationControl|<p>-</p>|`SNMP trap`|snmptrap[SONICWALL-FIREWALL-TRAP-MIB::swFwTrapEnhApplicationControl]<p>Update: 0</p>|
|Conexiones Concurrentes|<p>-</p>|`SNMP agent`|sonicCurrentConnCacheEntries.0<p>Update: 60</p>|
|Status X5|<p>-</p>|`SNMP agent`|ifOperStatus.6<p>Update: 60</p>|
|SystemContact|<p>-</p>|`SNMP agent`|sonicsysContact<p>Update: 86400</p>|
|Alcanzable|<p>-</p>|`Simple check`|icmpping<p>Update: 60</p>|
|SystemObjetID|<p>-</p>|`SNMP agent`|sonicsysObjectID<p>Update: 86400</p>|
|Laténcia|<p>-</p>|`Simple check`|icmppingsec<p>Update: 60</p>|
|X10 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.11<p>Update: 60</p>|
|X6 Bytes Out/sec|<p>-</p>|`SNMP agent`|ifOutOctets.7<p>Update: 60</p>|
|Modelo|<p>-</p>|`SNMP agent`|sonicModel<p>Update: 86400</p>|
|Nuevo-Dinamico-IP-SP-Clientes2|<p>-</p>|`SNMP agent`|sonicStaIpAddress2<p>Update: 1m</p>|
|Trafico entrante en Interfaz $1|<p>-</p>|`SNMP agent`|ifInOctets.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|Trafico saliente en interfaz $1|<p>-</p>|`SNMP agent`|ifOutOctets.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|AP-IP $1|<p>-</p>|`SNMP agent`|.1.3.6.1.4.1.8741.1.3.6.4.1.5.[{#SNMPVALUEMAC}]<p>Update: 1m</p><p>LLD</p>|
|AP-IPsAsign $1|<p>-</p>|`SNMP agent`|sonicStaPhysAddress.[{#SNMPVALUEMAC}]<p>Update: 1m</p><p>LLD</p>|
|CanalRadio-5G $1|<p>-</p>|`SNMP agent`|sonicApRadio0Channel.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|CanalRadio-2.4G $1|<p>-</p>|`SNMP agent`|sonicApRadio1Channel.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|Status-APs $1|<p>-</p>|`SNMP agent`|sonicApStatus.[{#SNMPVALUE}]<p>Update: 1m</p><p>LLD</p>|
|Trafico Entrante en VPN $1|<p>-</p>|`SNMP agent`|sonicSAStatDecryptByteCount.[{#SNMPVALUEVPN}]<p>Update: 1m</p><p>LLD</p>|
|Trafico Saliente en VPN $1|<p>-</p>|`SNMP agent`|sonicSAStatEncryptByteCount.[{#SNMPVALUEVPN}]<p>Update: 1m</p><p>LLD</p>|
|PktsFrag Entrantes en VPN $1|<p>-</p>|`SNMP agent`|sonicSAStatInFragPktCount.[{#SNMPVALUEVPN}]<p>Update: 1m</p><p>LLD</p>|
|PktsFrag Salientes en VPN $1|<p>-</p>|`SNMP agent`|sonicSAStatOutFragPktCount.[{#SNMPVALUEVPN}]<p>Update: 1m</p><p>LLD</p>|
## Triggers

|Name|Description|Expression|Priority|
|----|-----------|----------|--------|
|Alerta-SP-NoResponde {#SNMPVALUE}|<p>-</p>|<p>**Expression**: find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","4")=1 or find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","NO-Responde")=1</p><p>**Recovery expression**: find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","3")=1 or find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","Operativo")=1</p>|average|
|Alerta-SP-Reiniciando {#SNMPVALUE}|<p>-</p>|<p>**Expression**: find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","8")=1 or find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","Reiniciando")=1</p><p>**Recovery expression**: find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","3")=1 or find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","Operativo")=1</p>|information|
|Alerta-SP-NoResponde {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","4")=1 or find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","NO-Responde")=1</p><p>**Recovery expression**: find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","3")=1 or find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","Operativo")=1</p>|average|
|Alerta-SP-Reiniciando {#SNMPVALUE} (LLD)|<p>-</p>|<p>**Expression**: find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","8")=1 or find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","Reiniciando")=1</p><p>**Recovery expression**: find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","3")=1 or find(/Sonicwall-Gen6Plusv2/sonicApStatus.[{#SNMPVALUE}],,"like","Operativo")=1</p>|information|
