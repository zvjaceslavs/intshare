#!/bin/bash
#check server SSL Expire date.

DIR=/etc/httpd/ssl

function run() {
	EXPIRE=$(openssl x509 -enddate -noout -in $1 | cut -f2 -d "=" | awk '{print$1,$2,$4}')
	ARRAY=($EXPIRE)
	YEAR=${ARRAY[2]}
	MONTH=${ARRAY[0]}
	DAY=${ARRAY[1]}
	T_MONTH=$(date --date="$(printf "01 %s"  $MONTH $YEAR)" +"%Y-%m" | cut -f2 -d"-")
	E_DATE="	$YEAR-$T_MONTH-$DAY"
	TODATE=$(date -d $E_DATE +"%Y/%m/%d")  # = 20130718
	NOW=$(date +"%Y%m%d")    # = 20130715
	
	DATS=$(echo $(expr '(' $(date -d $TODATE  +%s) - $(date +%s) + 86399 ')' / 86400))
	
	if [ $DATS -le 31 ]; then
		RESULT="$DATS $RESULT"
	fi
}

for i in $(ls -1 $DIR/*.{crt,ca})
	do
	run $i
	done


if [ -n  "$RESULT"  ]; then
	echo  $RESULT
else 
	echo "1"
fi
