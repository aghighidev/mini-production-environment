#!/bin/bash

read -s -p $'\e[32menter your root pass :\e[0m' rootpass
echo ""
date=$(date +"%Y-%m-%d_%H-%M-%S")
docker compose exec -T database mysqldump -u root -p"$rootpass" database > backups/backup_$date.sql
if [[ $? -eq 0 ]]; then
	echo -e "\e[32mbackup succesfull : backups/backup_$date.sql"
else
	echo -e "\e[31mbackup failed :(\e[0m"
fi
