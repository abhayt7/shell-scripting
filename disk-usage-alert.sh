#!/bin/bash

USAGE=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

if [ "$USAGE" -gt 80]
then
	echo "WARNING: Disk usage is ${USAGE}%"
else
	echo "Disk usage is normal (${USAGE}%)"
fi
