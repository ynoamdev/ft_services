FROM alpine

RUN apk update
RUN apk add nginx openrc
RUN rc-status
RUN touch /run/openrc/softlevel
RUN mkdir /run/nginx
RUN echo 154 >  /run/nginx/nginx.pid

CMD ["nginx", "-g", "daemon off;"] 