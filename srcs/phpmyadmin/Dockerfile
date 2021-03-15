FROM		alpine:3.12.1
EXPOSE      5000
RUN         apk upgrade
COPY        default.conf /
RUN         apk add nginx
RUN         apk add openrc
RUN         rc-status
RUN         touch /run/openrc/softlevel
RUN         mv default.conf /etc/nginx/conf.d
RUN         wget http://dl-cdn.alpinelinux.org/alpine/v3.13/community/x86_64/telegraf-1.17.0-r0.apk
RUN         apk add telegraf-1.17.0-r0.apk

#
## Install phpmyadmin and php tools
#
RUN         wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.zip
RUN         unzip phpMyAdmin-5.0.4-all-languages.zip
RUN         mv phpMyAdmin-5.0.4-all-languages phpmyadmin
RUN         apk add php-mbstring php-session php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7-fpm
COPY        config.inc.php /phpmyadmin
COPY        telegraf.conf /
COPY        run.sh /
CMD			sh run.sh