#!/bin/bash
apk add vim 
apk add nginx
apk add openrc
apk add tmux
rc-status
touch /run/openrc/softlevel
mv default.conf /etc/nginx/conf.d

#
## Install phpmyadmin and php tools
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
unzip phpMyAdmin-5.0.4-all-languages.zip
mv phpMyAdmin-5.0.4-all-languages phpmyadmin
apk add php-mbstring php-session php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7-fpm

echo "daemon off;" >> /etc/nginx/nginx.conf
