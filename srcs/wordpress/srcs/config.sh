#!/bin/bash
apk add vim 
apk add nginx
apk add openrc
apk add tmux
rc-status
touch /run/openrc/softlevel
mv default.conf /etc/nginx/conf.d/default.conf
sh download-wordpress.sh
echo "daemon off;" >> /etc/nginx/nginx.conf