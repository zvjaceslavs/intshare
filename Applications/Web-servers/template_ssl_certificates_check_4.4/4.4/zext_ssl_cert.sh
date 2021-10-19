#! /bin/sh
#------------------------------------------------------------
# zext_ssl_cert.sh
# Script checks for number of days until certificate expires or the issuing authority
# depending on switch passed on command line.
#
# Based on script from aperto.fr (http://aperto.fr/cms/en/blog/15-blog-en/15-ssl-certificate-expiration-monitoring-with-zabbix.html)
# with additions by racooper@tamu.edu
#------------------------------------------------------------

DEBUG=0
if [ $DEBUG -gt 0 ]
then
    exec 2>>/tmp/sslcheckscript.log
    set -x
fi

f=$1
host=$2
port=$3
proto=$4

if [ -n "$proto" ]
then
    starttls="-starttls $proto"
fi

if [ -z "$port" ]
then
    port="443"
else
    port=$3
fi

case $f in
-d)
end_date=`openssl s_client -servername $host -host $host -port $port -showcerts $starttls -prexit </dev/null 2>/dev/null |
          sed -n '/BEGIN CERTIFICATE/,/END CERT/p' |
          openssl x509 -text 2>/dev/null |
          sed -n 's/ *Not After : *//p'`

if [ -n "$end_date" ]
then
    end_date_seconds=`date '+%s' --date "$end_date"`
    now_seconds=`date '+%s'`
    printf "%.0f\n" $(echo "scale=2; ( $end_date_seconds - $now_seconds )/(60*60*24)" | bc)
fi
;;

-i)
issue_dn=`openssl s_client -servername $host -host $host -port $port -showcerts $starttls -prexit </dev/null 2>/dev/null |
          sed -n '/BEGIN CERTIFICATE/,/END CERT/p' |
          openssl x509 -text 2>/dev/null |
          sed -n 's/ *Issuer: *//p'`

if [ -n "$issue_dn" ]
then
    issuer=`echo $issue_dn | sed -n 's/.*CN = *//p'`
    echo ${issuer}
else
    echo "Certificate Issuer not found..."
fi
;;
*)
echo "usage: $0 [-i|-d] hostname (port) (proto)"
echo "    -i Show Issuer"
echo "    -d Show valid days remaining"
;;
esac
