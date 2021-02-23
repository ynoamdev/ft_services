#!/bin/bash
minikube start --vm-driver=virtualbox
eval $(minikube -p minikube docker-env)

# metallb
minikube addons enable metallb
kubectl apply -f srcs/metallb.yaml

# mysql 
docker build -t mysql srcs/mysql/
kubectl apply -f srcs/mysql/mysql.yaml 

# phpmyadmin
docker build -t phpmyadmin srcs/phpmyadmin/
kubectl apply -f srcs/phpmyadmin/phpmyadmin.yaml

# wordpress
docker build -t wordpress srcs/wordpress/
kubectl apply -f srcs/wordpress/wordpress.yaml

#nginx
docker build -t nginx srcs/nginx/
kubectl apply -f srcs/nginx/nginx.yaml 
