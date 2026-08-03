#!/bin/bash

SERVERS=("google.com","amazon.com","github.com")

for SERVER in "${SERVER[@]}"
do
	if ping -c 2 $SERVER >/dev/null
	then
		echo "$SERVER is reachable"
	else
		echo "$SERVER is NOT reachable"
	fi
done
