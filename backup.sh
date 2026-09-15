#!/bin/bash

read -s -p $'\e[32menter your root pass :\e[0m' rootpass
echo ""
docker compose exec -T database mysqldump -u root -p$rootpass database > backup.sql
