FROM alpine
EXPOSE 3306
RUN apk update
RUN apk add openrc
RUN apk add mysql mysql-client
RUN rc-status
RUN touch /run/openrc/softlevel
RUN /etc/init.d/mariadb setup
COPY mariadb-server.cnf /etc/my.cnf.d/
CMD service mariadb start && mysql -e "create database wordpress;"\
    && mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'ynoam'@'%' IDENTIFIED BY 'ynoam';"\
    # && service mariadb restart\
    && tail -f /dev/null