#!/bin/bash
apk add vim 
apk add nginx
apk add openrc
rc-status
mkdir -p /var/www/html
mv tst.html /var/www/html
mv default.conf /etc/nginx/conf.d
touch /run/openrc/softlevel
# echo "daemon off;" >> /etc/nginx/nginx.conf
