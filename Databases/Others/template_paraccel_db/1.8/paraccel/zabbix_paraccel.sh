#!/bin/bash

export PATH=/home/paraccel/padb/rel/bin/:$PATH
Q1="psql -h 127.0.0.1 -p 5439 padb_harvest --username=paraccel -A -t -c"
LOG=/tmp/zabbix_paraccel_sum.tmp
echo > $LOG

SEL="select sum(numbackends::numeric) from pg_stat_database"
RES=`$Q1 "$SEL"`
echo "sum_numbackends:$RES"

SEL="select sum(xact_commit::numeric) from pg_stat_database"
RES=`$Q1 "$SEL"`
echo "sum_xact_commit:$RES"

SEL="select sum(xact_rollback::numeric) from pg_stat_database"
RES=`$Q1 "$SEL"`
echo "sum_xact_rollback:$RES"

SEL="select sum(blks_read::numeric) from pg_stat_database"
RES=`$Q1 "$SEL"`
echo "sum_blks_read:$RES"

SEL="select sum(blks_hit::numeric) from pg_stat_database"
RES=`$Q1 "$SEL"`
echo "sum_blks_hit:$RES"

SEL="select count(*) from stv_sessions"
RES=`$Q1 "$SEL"`
echo "sum_sessions:$RES"

SEL="select count(*) from stv_transactions"
RES=`$Q1 "$SEL"`
echo "sum_transactions:$RES"

SEL="select count(*) from stv_wlm_query_state"
RES=`$Q1 "$SEL"`
echo "sum_queries:$RES"

SEL="select count(*) from stv_nodes"
RES=`$Q1 "$SEL"`
echo "sum_nodes:$RES"

SEL="select sum(used::numeric)*(select current_setting('block_size')) from stv_partitions"
RES=`$Q1 "$SEL"`
echo "sum_partitions_used:$RES"

SEL="select sum(capacity::numeric)*(select current_setting('block_size')) from stv_partitions"
RES=`$Q1 "$SEL"`
echo "sum_partitions_capacity:$RES"

SEL="select sum(reads::numeric) from stv_partitions"
RES=`$Q1 "$SEL"`
echo "sum_partitions_reads:$RES"

SEL="select sum(writes::numeric) from stv_partitions"
RES=`$Q1 "$SEL"`
echo "sum_partitions_writes:$RES"

SEL="select sum(failed::numeric) from stv_partitions"
RES=`$Q1 "$SEL"`
echo "sum_partitions_failed:$RES"

SEL="select sum(user_allocated::numeric) from stv_allocator"
RES=`$Q1 "$SEL"`
echo "sum_user_allocated:$RES"

SEL="select sum(size_allocated::numeric) from stv_allocator"
RES=`$Q1 "$SEL"`
echo "sum_size_allocated:$RES"

SEL="select sum(max_user_allocated::numeric) from stv_allocator"
RES=`$Q1 "$SEL"`
echo "sum_max_user_allocated:$RES"

SEL="select sum(max_size_allocated::numeric) from stv_allocator"
RES=`$Q1 "$SEL"`
echo "sum_max_size_allocated:$RES"

SEL="select sum(num_allocated::numeric) from stv_allocator"
RES=`$Q1 "$SEL"`
echo "sum_num_allocated:$RES"

SEL="select sum(max_num_allocated::numeric) from stv_allocator"
RES=`$Q1 "$SEL"`
echo "sum_max_num_allocated:$RES"


SEL="select sum(frag_pct)/count(1) from STV_FRAGMENTATION"
RES=`$Q1 "$SEL"`
echo "avg_disks_frag_pct:$RES"

