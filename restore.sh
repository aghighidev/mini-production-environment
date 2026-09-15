#!/bin/bash


read -s -p $'\e[32menter your password :\e[0m' rootpass
echo ""
docker compose exec -T database mysql -u root -p$rootpass database < backup.sql
