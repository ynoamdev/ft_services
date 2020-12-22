#!/bin/bash
 wget http://wordpress.org/latest.tar.gz
 tar -xvf latest.tar.gz
 mkdir -p /var/www/html/
 mv wordpress /var/www/html/
# mv wp-config.php /var/www/html/wordpress
# chown -R www-data:www-data /var/www/html/wordpress
 chmod 755 -R /var/www/html/wordpress
