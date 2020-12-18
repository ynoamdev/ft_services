FROM		alpine
RUN         apk upgrade
COPY        srcs/*  /
RUN         sh /nginx.sh
CMD			sh /when-runing.sh
