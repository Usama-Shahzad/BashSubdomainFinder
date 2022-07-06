#!/usr/bin/bash

echo "Enter Target / Hostname"
read  a;
while read subdomain; do
        if host "$subdomain.$a" &> /dev/null; then
                echo "$subdomain.$a" ;
        fi

done < subdomain.txt


