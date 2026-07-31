#!/bin/bash

echo "............SERVER HEALTH REPORT................."

echo "Hostname: $(hostname)"

echo "Date: $(date)"

while true
do

echo "CPU Load:"
uptime



echo "Memory:"
free -h



echo "Disk:"
df -h
        sleep 60

done



if systemctl is-active --quiet nginx
then
    echo "Nginx: Running"
else
    echo "Nginx: Stopped"
fi
