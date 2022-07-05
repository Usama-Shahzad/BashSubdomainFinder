#!/bin/bash

while read subdomain; do 
	if host "$subdomain.google.com" &> /dev/null; then 
		echo "$subdomain.google.com" ;
	fi 
done < subdomain.txt

