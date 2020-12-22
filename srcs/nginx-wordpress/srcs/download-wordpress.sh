#!/bin/bash
 apk add php7-fpm
 apk add php7 php7-fpm php7-opcache
# rc-update add php-fpm7 default
 apk add php7-gd php7-mysqli php7-zlib php7-curl
 wget http://wordpress.org/latest.tar.gz
 tar -xvf latest.tar.gz
 mv wordpress /var/www/localhost/htdocs/
 mv /var/www/localhost/htdocs/wordpress/wp-config-sample.php /var/www/localhost/htdocs/wordpress/wp-config.php
# chown -R www-data:www-data /var/www/html/wordpress
# chmod 755 -R /var/www/html/wordpress
