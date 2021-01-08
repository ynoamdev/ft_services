FROM		alpine

RUN         apk update
RUN			apk add vim nginx openrc
RUN 		rc-status
RUN 		touch /run/openrc/softlevel
RUN 		mkdir /run/nginx

COPY		srcs/* /run/nginx/nginx.pid
CMD			["nginx", "-g", "daemon off;"]
