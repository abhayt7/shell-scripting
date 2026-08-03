#!/bin/bash

SERVICE=apache2

if ! systemctl is-active --quiet $SERVICE
then
	systemctl restart $SERVICE
	echo "Apache restarted"
else
	echo "apache is already running"
fi
