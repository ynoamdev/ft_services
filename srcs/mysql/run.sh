#!/bin/sh
service mariadb start
mysql -e "create database wordpress;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'ynoam'@'%' IDENTIFIED BY 'ynoam';"
#&& mysql wordpress < /wordpress.sql
telegraf --config telegraf.conf 