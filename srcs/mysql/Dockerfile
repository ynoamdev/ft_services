FROM alpine
RUN apk update
RUN apk add openrc
RUN apk add mysql mysql-client
RUN rc-status
RUN touch /run/openrc/softlevel
RUN /etc/init.d/mariadb setup
EXPOSE 3306
#CMD service mariadb start && mysql -e "create database wordpress;" && tail -f /dev/null