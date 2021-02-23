FROM alpine:3.12.1
EXPOSE 3306
RUN apk update
RUN apk add openrc
RUN apk add mysql mysql-client
RUN rc-status
RUN touch /run/openrc/softlevel
RUN /etc/init.d/mariadb setup
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY wordpress.sql /
CMD service mariadb start && mysql -e "create database wordpress;"\
    && mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'ynoam'@'%' IDENTIFIED BY 'ynoam';"\
    && mysql wordpress < /wordpress.sql \
    && tail -f /dev/null