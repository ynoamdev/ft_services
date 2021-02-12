FROM		alpine
RUN         apk upgrade
COPY        srcs/*  /
RUN         sh /config.sh
CMD			sh /run.sh
