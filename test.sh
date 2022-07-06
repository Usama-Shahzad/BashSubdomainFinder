#!/usr/bin/bash 
 
while read subdomain; do 
	if host "$subdomain.example.com" &> /dev/null; then 
		echo "$subdomain.example.com" ;
	fi 
done < subdomain.txt

