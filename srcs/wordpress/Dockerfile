FROM alpine
EXPOSE 5050
RUN  apk update
COPY . / 
RUN apk add vim       
RUN apk add nginx
RUN apk add openrc
RUN apk add tmux
RUN rc-status
RUN touch /run/openrc/softlevel
RUN mv default.conf /etc/nginx/conf.d/default.conf
RUN apk add php-mbstring php-session php7-common php7-iconv php7-json php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom php7-fpm
RUN wget http://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz
RUN mv wp-config.php /wordpress
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD	service php-fpm7 restart && service nginx restart 