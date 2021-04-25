#!/bin/bash
#minikube start --vm-driver=virtualbox
#eval $(minikube -p minikube docker-env)

# metallb
minikube addons enable metallb

# mysql 
docker build -t mysql srcs/mysql/

# phpmyadmin
docker build -t phpmyadmin srcs/phpmyadmin/

# wordpress
docker build -t wordpress srcs/wordpress/

#nginx
docker build -t nginx srcs/nginx/

# grafan
docker build -t grafana srcs/grafana/

# influxdb
docker build -t influxdb srcs/influxdb/

# ftps
docker build -t ftps srcs/ftps

# deploy
kubectl apply -f srcs/yamls/