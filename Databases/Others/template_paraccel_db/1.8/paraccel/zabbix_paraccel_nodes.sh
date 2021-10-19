#!/bin/bash

export PATH=/home/paraccel/padb/rel/bin/:$PATH
Q1="psql -h 127.0.0.1 -p 5439 padb_harvest --username=paraccel -A -c"

SEL="select ip,duty, case is_pingable when 'y' then 1 else 0 end as is_pingable from stv_nodes"
RES=`$Q1 "$SEL"`
echo "$RES"

