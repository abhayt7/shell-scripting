#!/bin/bash

BACKUP="/backup"

DATE=$(date +%F)

sudo mkdir -p $BACKUP

sudo tar -czf $backup/website-$DATE.tar.gz /var/www

echo "Backup completed."
