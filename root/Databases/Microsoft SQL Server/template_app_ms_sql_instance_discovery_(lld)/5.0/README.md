# Template App MS SQL Instance Discovery

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

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|MSSQL Multi Instance Discovery|<p>Discovers multiple SQL Server Instances</p>|`Zabbix agent`|windowssqlinstances.discovery<p>Update: 300</p>|
## Items collected

|Name|Description|Type|Key and additional info|
|----|-----------|----|----|
|{#INSTANCES} Access Methods Forwarded Records/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Access Methods\Forwarded Records/sec",300]<p>Update: 30</p>|
|{#INSTANCES} General Statistics Logins/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:General Statistics\Logins/sec",300]<p>Update: 30</p>|
|{#INSTANCES} SQL Statistics SQL Compilations/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:SQL Statistics\SQL Compilations/sec",300]<p>Update: 30</p>|
|{#INSTANCES} SQL Statistics Batch Requests/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:SQL Statistics\Batch Requests/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Service|<p>-</p>|`Zabbix agent`|service_state[{#INSTANCES}]<p>Update: 30</p>|
|{#INSTANCES} Memory Manager Total Server Memory (KB)|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Memory Manager\Total Server Memory (KB)",300]<p>Update: 30</p>|
|{#INSTANCES} Locks _Total Number of Deadlocks/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Locks(_Total)\Number of Deadlocks/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Locks _Total Lock Waits/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Locks(_Total)\Lock Waits/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Latches Total Latch Wait Time (ms)|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Latches\Total Latch Wait Time (ms)",300]<p>Update: 30</p>|
|{#INSTANCES} Latches Latch Waits/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Latches\Latch Waits/sec",300]<p>Update: 30</p>|
|{#INSTANCES} General Statistics User Connections|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:General Statistics\User Connections",300]<p>Update: 30</p>|
|{#INSTANCES} General Statistics Logouts/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:General Statistics\Logouts/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Databases _Total Transactions/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Databases(_Total)\Transactions/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Access Methods Full Scans/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Access Methods\Full Scans/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Databases _Total Log Flushes/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Databases(_Total)\Log Flushes/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Buffer Manager Page writes/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Buffer Manager\Page writes/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Buffer Manager Page reads/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Buffer Manager\Page reads/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Buffer Manager Page lookups/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Buffer Manager\Page lookups/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Buffer Manager Page Life Expectancy|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Buffer Manager\Page Life Expectancy",300]<p>Update: 30</p>|
|{#INSTANCES} Buffer Manager Lazy Writes/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Buffer Manager\Lazy Writes/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Buffer Manager Free list stalls/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Buffer Manager\Free list stalls/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Buffer Manager Buffer cache hit ratio|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Buffer Manager\Buffer cache hit ratio",300]<p>Update: 30</p>|
|{#INSTANCES} Access Methods Table Lock Escalations|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Access Methods\Table Lock Escalations/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Access Methods Page Splits/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Access Methods\Page Splits/sec",300]<p>Update: 30</p>|
|{#INSTANCES} Access Methods Index Searches/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:Access Methods\Index Searches/sec",300]<p>Update: 30</p>|
|{#INSTANCES} SQL Statistics SQL Re-Compilations/sec|<p>-</p>|`Zabbix agent`|perf_counter["\{#INSTANCES}:SQL Statistics\SQL Re-Compilations/sec",300]<p>Update: 30</p>|
## Triggers

|Name|Description|Priority|
|----|-----------|----|
|{#INSTANCES}:Access Methods Forwarded Records/sec|<p>-</p>|warning|
|{#INSTANCES}:Access Methods Full Scans/sec|<p>This counter monitors the number of full scans on base tables or indexes. Values greater than 1 or 2 indicate that we are having table / Index page scans. If we see high CPU then we need to investigate this counter, otherwise if the full scans are on small tables we can ignore this counter. A few of the main causes of high Full Scans/sec are • Missing indexes • Too many rows requested Queries with missing indexes or too many rows requested will have a large number of logical reads and an increased CPU time.</p>|warning|
|{#INSTANCES}:Access Methods Page Splits/sec|<p>Number of page splits per second that occur as the result of overflowing index pages. Interesting counter that can lead us to our table / index design. This value needs to be low as possible. If you find out that the number of page splits is high, consider increasing the fillfactor of your indexes. An increased fillfactor helps to reduce page splits because there is more room in data pages before it fills up and a page split has to occur. Note that this counter also includes the new page allocations as well and doesn’t necessarily pose a problem. The other place we can confirm the page splits that involve data or index rows moves are the fragmented indexes on page splits.</p>|warning|
|{#INSTANCES}:Buffer Manager Buffer cache hit ratio|<p>This counter indicates how often SQL Server goes to the buffer, not the hard disk, to get data. The higher this ratio, the less often SQL Server has to go to the hard disk to fetch data, and performance overall is boosted. Unlike many of the other counters available for monitoring SQL Server, this counter averages the Buffer Cache Hit Ratio from the time the last instance of SQL Server was restarted. In other words, this counter is not a real-time measurement, but an average of all the days since SQL Server was last restarted. In OLTP applications, this ratio should exceed 90-95%. If it doesn't, then you need to add more RAM to your server to increase performance. In OLAP applications, the ratio could be much less because of the nature of how OLAP works. In any case, more RAM should increase the performance of SQL Server OLAP activity.</p>|warning|
|{#INSTANCES}:Buffer Manager Free list stalls/sec|<p>Free list stalls/sec is the frequency with which requests for available database pages are suspended because no buffers are available. Free list stall rates of 3 or 4 per second indicate too little SQL memory available.</p>|warning|
|{#INSTANCES}:Buffer Manager Lazy Writes/Sec|<p>-</p>|warning|
|{#INSTANCES}:Buffer Manager Page Life Expectancy|<p>-</p>|warning|
|{#INSTANCES}:Buffer Manager Page lookups/sec|<p>Number of requests to find a page in the buffer pool. When the ratio of page lookups to batch requests is much greater than 100, this is an indication that while query plans are looking up data in the buffer pool, these plans are inefficient. Identify queries with the highest amount of logical I/O's and tune them.</p>|warning|
|{#INSTANCES}:Buffer Manager Page reads/sec|<p>Number of physical database page reads issued. 80 – 90 per second is normal, anything that is above indicates indexing or memory constraint.</p>|warning|
|{#INSTANCES}:Buffer Manager Page writes/sec|<p>Number of physical database page reads issued. 80 – 90 per second is normal, anything that is above indicates indexing or memory constraint.</p>|warning|
|{#INSTANCES}:General Statistics Logins/sec|<p>> 2 per second indicates that the application is not correctly using connection pooling.</p>|warning|
|{#INSTANCES}:General Statistics Logouts/sec|<p>> 2 per second indicates that the application is not correctly using connection pooling.</p>|warning|
|{#INSTANCES}:Latches Total Latch Wait Time (ms)|<p>Total wait time (milliseconds) for locks in the last second. Note: For “Lock Wait Time” it is recommended to look beyond the Avg value. Look for any peaks that are close (or exceeds) to a wait of 60 sec. Though this counter counts how many total milliseconds SQL Server is waiting on locks during the last second, but the counter actually records at the end of locking event. So most probably the peaks represent one huge locking event. If those events exceeds more than 60seconds then they may have extended blocking and could be an issue. In such cases, thoroughly analyze the blocking script output. Some applications are written for timing out after 60 seconds and that’s not acceptable response for those applications.</p>|warning|
|{#INSTANCES}:Latches\Latch Waits/sec|<p>-</p>|warning|
|{#INSTANCES}:Locks _Total Lock Waits/sec|<p>This counter reports how many times users waited to acquire a lock over the past second. Note that while you are actually waiting on the lock that this is not reflected in this counter—it gets incremented only when you “wake up” after waiting on the lock. If this value is nonzero then it is an indication that there is at least some level of blocking occurring. If you combine this with the Lock Wait Time counter, you can get some idea of how long the blocking lasted. A zero value for this counter can definitively prove out blocking as a potential cause; a nonzero value will require looking at other information to determine whether it is significant.</p>|warning|
|{#INSTANCES}:Locks_Total Number of Deadlocks/sec|<p>The number of lock requests that resulted in a deadlock.</p>|warning|
|{#INSTANCES}:SQL Statistics SQL Compilations/sec|<p>The number of times per second that SQL Server compilations have occurred. This value needs to be as low as possible. If you see a high value such as over 100, then it’s an indication that there are lots of adhoc queries that are running, might cause CPU usage, solution is to re-write these adhoc as stored procedure or use sp_executeSQL.</p>|warning|
|{#INSTANCES}:SQL Statistics SQL Re-Compilations/sec|<p>The number of times per second that SQL Server recompilations have occurred. This value needs to be as low as possible. If you see a high value such as over 100, then it’s an indication that there are lots of adhoc queries that are running, might cause CPU usage, solution is to re-write these adhoc as stored procedure or use sp_executeSQL.</p>|warning|
