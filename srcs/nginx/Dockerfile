FROM		alpine
RUN         apk upgrade
COPY        nginx.sh /
RUN         sh nginx.sh
CMD			sh $(service nginx start)
CMD			top
