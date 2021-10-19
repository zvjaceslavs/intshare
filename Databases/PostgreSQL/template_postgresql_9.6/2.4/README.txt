+-------------------------+
| Tested on:              |
| CentOS 7.3 / RedHat 7.3 |
| Zabbix 2.4.8 / 3.0 LTS  |
| PostgreSQL 9.6          |
+-------------------------+

Hello. Andre here. I'm not very good at PostgreSQL. If I did something wrong, please help me fix it.

This template is based on pgCayenne by Lesovsky Alexey, but I've updated it to work on PostgreSQL 9.6 and added some new itens.

You can find original pgCayenne here:
https://github.com/lesovsky/zabbix-extensions/tree/master/files/postgresql


+------------+
| HOW TO USE |
+------------+

1) Install the requirements:
You will need the "contrib" package.
  # yum install postgresql96-contrib.x86_64

The following modules will be installed by the contrib package:
- pg_buffercache
- pg_stat_statements

2) Create the extensions:
Buffers:
  On Postgres terminal, create the "pg_buffercache" extension:
  postgres=# CREATE EXTENSION pg_buffercache;
  CREATE EXTENSION
  Note: You should create the extension for you own database. Example:
  postgres=# \c zabbix
  You are now connected to database "zabbix" as user "postgres".
  zabbix=# create extension pg_buffercache;
  CREATE EXTENSION
  zabbix=# 

Statements:
  On Postgres terminal, create the "pg_stat_statements" extension:
  postgres=# create extension pg_stat_statements;
  CREATE EXTENSION
  postgres=# \c zabbix
  You are now connected to database "zabbix" as user "postgres".
  zabbix=# create extension pg_stat_statements;
  CREATE EXTENSION

3) Enable pg_stat_statements library:
# vi  postgresql.conf
  shared_preload_libraries = 'pg_stat_statements'
  pg_stat_statements.max = 10000
  pg_stat_statements.track = all

4) Allow local trust access to PostgreSQL:
  # vi /data/postgresql/data/pg_hba.conf
  host    all             postgres        127.0.0.1/32            trust

5) Restart the services for the changes to take effect:
  # systemctl restart postgresql-9.6.service

6) Check if you can get some data:
  # zabbix_get -s 172.16.240.9 -k pgsql.ping['-h 127.0.0.1 -p 5432 -U postgres -d postgres']
    Note: Change the IP "172.16.240.9" for the Zabbix Proxy that will query.
    Or
  # zabbix_get -s 127.0.0.1 -k pgsql.ping['-h 127.0.0.1 -p 5432 -U postgres -d zabbix']

Note: The localhost IP must be allowed on Zabbix Agent. Example:
  Server=myzabbixserver.mydomain.com,127.0.0.1
  ServerActive=myzabbixserver.mydomain.com,127.0.0.1

7) Place the file "userparameter_postgres.conf" on your "/etc/zabbix/zabbix.d directory" and restart the Agent.
  # cp userparameter_postgres.conf /etc/zabbix/zabbix.d/
  # systemctl restart zabbix-agent

8) Import the template on your Zabbix Server

9) Associate the template "Postgres Simple Monitor" to the monitored host.

10) Define the Host Macros:
{$PG_CACHE_HIT_RATIO} = 90
{$PG_CHECKPOINTS_REQ_THRESHOLD} = 5
{$PG_CONFLICTS_THRESHOLD} = 0
{$PG_CONNINFO} = -h 127.0.0.1 -p 5432 -U postgres -d zabbix
{$PG_CONNINFO_STANDBY} = -p 5432 -U postgres -d zabbix
{$PG_CONN_IDLE_IN_TRANSACTION} = 3
{$PG_CONN_TOTAL_PCT} = 90
{$PG_CONN_WAITING} = 0
{$PG_DATABASE_SIZE_THRESHOLD} = 100000000000
{$PG_DEADLOCKS_THRESHOLD} = 0
{$PG_LONG_QUERY_THRESHOLD} = 30
{$PG_PING_THRESHOLD_MS} = 1000
{$PG_PROCESS_NAME} = postgres
{$PG_SR_LAG_BYTE} = 50000000
{$PG_SR_LAG_SEC} = 600
{$PG_SR_PACKET_LOSS} = 10
{$PG_UPTIME_THRESHOLD} = 600

Items description:
PG_CONNINFO_STANDBY: Connection settings for zabbix agent connections to the postgres service on standby servers, required for streaming replication lag monitoring;
PG_CACHE_HIT_RATIO: Shared buffers cache ratio;
PG_CONN_TOTAL_PCT: The percentage of the total number of connections to the maximum allowed (max_connections);

Threshold Definitions:
PG_CHECKPOINTS_REQ_THRESHOLD: Threshold for checkpoints which occured by demand;
PG_CONFLICTS_THRESHOLD: Threshold for recovery conflicts trigger;
PG_CONN_IDLE_IN_TRANSACTION: Threshold for connections which is idle in transaction state;
PG_CONN_WAITING: Threshold for connections which is in waiting state;
PG_DATABASE_SIZE_THRESHOLD: Threshold for database size;
PG_DEADLOCKS_THRESHOLD: Threshold for deadlock conflicts trigger;
PG_LONG_QUERY_THRESHOLD: Threshold for long transactions trigger;
PG_PING_THRESHOLD_MS: Threshold for postgres service response;
PG_SR_LAG_BYTE: Threshold in bytes for streaming replication lag between server and discovered standby servers;
PG_SR_LAG_SEC: Threshold in seconds for streaming replication lag between server and discovered standby servers;
PG_UPTIME_THRESHOLD: Threshold for service uptime.

11) Wait a few minutes and the data will pop up. Some items requires an extra hour.


+-----------------+
| MONITORED ITENS |
+-----------------+

Background Writer (10 Items)
•	buffers allocated
•	buffers written by the bgwriter
•	buffers written directly by a backend
•	buffers written during checkpoints
•	checkpoints by timeout
•	max written
•	required checkpoints
•	sync time
•	times a backend had to execute its own fsync
•	write time

Buffers & Caches (5 Items)
•	cache hit ratio
•	clear buffers
•	dirty buffers
•	total buffers
•	used buffers

Configuration (3 Items)
•	fsync
•	full_page_writes
•	synchronous_commit

Connections (8 Items)
•	number of active connections
•	number of idle connections
•	number of idle in transaction connections
•	number of prepared connections
•	number of waiting connections
•	ping
•	total connections
•	total connections (%)

Databases (1 Item)
•	database zabbix size

Database Status (13 Items)
•	blocks hit per second
•	blocks read per second
•	commits per second
•	registered conflicts
•	registered deadlocks
•	rollbacks per second
•	temp_bytes written
•	temp_files created
•	tuples deleted per second
•	tuples fetched per second
•	tuples inserted per second
•	tuples returned per second
•	tuples updated per second

General Information (3 Items)
•	number of running processes postmaster
•	postgresql version
•	service uptime

Operations (1 Item)
•	pg_stat_statements: average query time

Streaming Replication (2 Items)
•	recovery state
•	stand-by count

Table Info (25 Items)
•	table public.sessions indexes size
•	table public.sessions rows count
•	table public.sessions size
•	table public.sessions stat: analyzes
•	table public.sessions stat: autoanalyzes
•	table public.sessions stat: autovacuums
•	table public.sessions stat: cache blocks hits per second
•	table public.sessions stat: cache blocks read per second
•	table public.sessions stat: dead rows
•	table public.sessions stat: disk blocks hits per second from TOAST
•	table public.sessions stat: disk blocks hits per second from TOAST indexes
•	table public.sessions stat: disk blocks read per second from TOAST
•	table public.sessions stat: disk blocks read per second from TOAST indexes
•	table public.sessions stat: index blocks hit per second
•	table public.sessions stat: index blocks read per second
•	table public.sessions stat: index scans
•	table public.sessions stat: live rows
•	table public.sessions stat: rows deleted per second
•	table public.sessions stat: rows HOT updated per second
•	table public.sessions stat: rows inserted per second
•	table public.sessions stat: rows updated per second
•	table public.sessions stat: sequential scans
•	table public.sessions stat: tuples read per second by index scans
•	table public.sessions stat: tuples read per second by sequential scans
•	table public.sessions stat: vacuums

Transactions (4 Items)
•	current max active transaction time
•	current max idle transaction time
•	current max prepared transaction time
•	current max waiting transaction time

Write-Ahead Logging (2 Items)
•	WAL segments count
•	WAL write



Bonus:

+--------------------------+
| Useful commands/packages |
+--------------------------+

CPU and Disk Access:
pg_stat_kcache96.x86_64

Performance:
pg_activity.noarch
pgcenter.x86_64
pgcluu.noarch
pg_top.x86_64
pg_top96.x86_64

Statistics:
pg_qualstats96.x86_64

Backup:
pgbackman.noarch
pgbackrest.noarch

Tunning:
pgtune.noarch

Info:
pg_view.noarch