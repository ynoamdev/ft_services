FROM alpine
EXPOSE 80
EXPOSE 443
COPY default.conf /
RUN apk update
RUN apk add nginx openrc
RUN mv /default.conf /etc/nginx/conf.d
RUN rc-status
RUN touch /run/openrc/softlevel
RUN mkdir /run/nginx
RUN echo 154 >  /run/nginx/nginx.pid

CMD nginx -g "daemon off;"