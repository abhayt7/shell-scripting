#!/bin/bash

SERVICE=nginx

if systemctl is-active --quiet $SERVICE
then
	echo "$SERVICE is running"

else
	echo "$SERVICE is stopped"
	sudo systemctl start $SERVICE
	echo "$SERVICE is started successfully"
fi
