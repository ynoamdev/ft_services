#!/bin/bash
minikube start --vm-driver=virtualbox
eval $(minikube -p minikube docker-env)

# metallb
minikube addons enable metallb
kubectl apply -f srcs/yamls/metallb.yaml

# mysql 
docker build -t mysql srcs/mysql/
kubectl apply -f srcs/yamls/mysql.yaml 

# phpmyadmin
docker build -t phpmyadmin srcs/phpmyadmin/
kubectl apply -f srcs/yamls/phpmyadmin.yaml

# wordpress
docker build -t wordpress srcs/wordpress/
kubectl apply -f srcs/yamls/wordpress.yaml

#nginx
docker build -t nginx srcs/nginx/
kubectl apply -f srcs/yamls/nginx.yaml

#grafan
docker build -t nginx srcs/grafana
kubectl apply -f srcs/yamls/grafana.yaml