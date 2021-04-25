FROM alpine:3.12.1
EXPOSE 3000
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/grafana/bin
RUN apk update
RUN apk add openrc
RUN rc-status
RUN touch /run/openrc/softlevel

RUN wget http://dl-cdn.alpinelinux.org/alpine/v3.13/community/x86_64/telegraf-1.17.0-r0.apk
RUN apk add telegraf-1.17.0-r0.apk

RUN wget https://dl.grafana.com/oss/release/grafana-7.3.6.linux-amd64.tar.gz
RUN tar -zxvf grafana-7.3.6.linux-amd64.tar.gz
RUN mv grafana-7.3.6 grafana

RUN wget http://dl-cdn.alpinelinux.org/alpine/v3.13/community/x86_64/grafana-7.3.6-r0.apk
RUN apk add grafana-7.3.6-r0.apk 

COPY telegraf.conf /
COPY run.sh /
CMD sh run.sh