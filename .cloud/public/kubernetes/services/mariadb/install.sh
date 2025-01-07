#!/bin/sh

# Create secrets for mariadb
kubectl create secret generic mariadb-password --from-literal=mariadb-root-password=$MARIADB_PASSWORD

kubectl create secret generic db-password --from-literal=database_password=$DATABASE_PASSWORD -n deployment

# Create a ConfigMap for init mariadb
kubectl create configmap mariadb-init-sql --from-file=/tmp/kubernetes/services/mariadb/init.sql

# Apply mariadb with helm
helm repo add groundhog2k https://groundhog2k.github.io/helm-charts/
helm install mariadb groundhog2k/mariadb -f /tmp/kubernetes/services/mariadb/config_mariadb.yml
