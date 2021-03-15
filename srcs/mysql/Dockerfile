FROM alpine:3.12.1
EXPOSE 3306
RUN apk update
RUN apk add openrc
RUN apk add mysql mysql-client
RUN rc-status
RUN touch /run/openrc/softlevel
RUN wget http://dl-cdn.alpinelinux.org/alpine/v3.13/community/x86_64/telegraf-1.17.0-r0.apk
RUN apk add telegraf-1.17.0-r0.apk
RUN /etc/init.d/mariadb setup
COPY mariadb-server.cnf /etc/my.cnf.d/
COPY wordpress.sql /
COPY run.sh /
COPY telegraf.conf /
CMD sh run.sh