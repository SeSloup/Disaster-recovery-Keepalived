#/bin/bash

ls /var/www/html/ | grep "index" -q
P1=$?

nmap 192.168.2.15 | grep "8888" -q
P2=$?

#echo $P1 $P2

P=$(( $P1 + $P2 ))

if [ $P -eq 0 ]
    then 
        exit 0 
    else 
        exit 1
    fi
