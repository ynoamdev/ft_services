FROM		alpine
EXPOSE 5050
RUN         apk upgrade
COPY        srcs/*  /
RUN         sh /config.sh
#CMD			sh /run.sh