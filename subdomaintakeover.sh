#!/usr/bin/bash

echo "Enter Target / Hostname"
read  a;
while read subdomain; do
	CNAME=$(host -t CNAME $subdomain.$a  | grep -e "an alias" | awk '{print $NF}' )
        if [ -z "$CNAME" ]; then
		continue 
	fi
	if ! host "$CNAME" &> /dev/null; then
                echo "$CNAME did not resolve ($subdomain.$a)" ;
        fi

done < subdomain.txt


