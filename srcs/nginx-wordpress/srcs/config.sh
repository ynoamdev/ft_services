#!/bin/bash
apk add vim 
apk add nginx
apk add openrc
rc-status
touch /run/openrc/softlevel
echo "daemon off;" >> /etc/nginx/nginx.conf
