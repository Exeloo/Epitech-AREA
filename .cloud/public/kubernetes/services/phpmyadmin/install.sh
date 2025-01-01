#!/bin/sh

# Download phpmyadmin repo
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install phpmyadmin bitnami/phpmyadmin \
  --set db.port=3306 \
  --set db.host=mariadb \
  --set service.type=ClusterIP