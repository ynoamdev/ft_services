FROM alpine
RUN apk update\
    && apk add openrc\
    && apk add mysql mysql-client\
    && rc-status\
    && touch /run/openrc/softlevel\
    && /etc/init.d/mariadb setup
CMD mysqld_safe