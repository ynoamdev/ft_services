FROM alpine:3.12.1
EXPOSE 80
EXPOSE 443
EXPOSE 22
RUN apk update
COPY default.conf /
RUN apk add openrc
RUN rc-status
RUN touch /run/openrc/softlevel
RUN apk add nginx
RUN mv default.conf /etc/nginx/conf.d
RUN mkdir /nginx
COPY example.crt /nginx/
COPY example.key /nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD service nginx start