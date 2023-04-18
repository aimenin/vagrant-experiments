#!/bin/bash

# обновляем apt
sudo apt update
# устанавливаем node.js
sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs
# устанавливаем postgressql
sudo apt install postgresql postgresql-contrib
# Создаем базу данных и пользователя в PostgreSQL
sudo -u postgres psql -c "CREATE USER vagrant WITH PASSWORD 'password';"
sudo -u postgres psql -c "CREATE DATABASE vagrant OWNER vagrant;"
# устанавливаем make
sudo apt install make