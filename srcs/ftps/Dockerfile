FROM alpine:3.12.1
EXPOSE 21
RUN apk update
RUN apk add openrc vsftpd
RUN rc-status
RUN touch /run/openrc/softlevel
RUN wget http://dl-cdn.alpinelinux.org/alpine/v3.13/community/x86_64/telegraf-1.17.0-r0.apk
RUN apk add telegraf-1.17.0-r0.apk
COPY telegraf.conf /
COPY vsftpd.conf /etc/vsftpd/
COPY example.key /
COPY example.crt /
COPY config.sh /
RUN sh config.sh
CMD tail -f /dev/null  