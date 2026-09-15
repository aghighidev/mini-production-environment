#!/bin/bash

read -s -p $'\e[32menter your root pass\e[0m' rootpass

docker compose exec -T database mysqldump -u root -p$rootpass devops_test > backup.sql
