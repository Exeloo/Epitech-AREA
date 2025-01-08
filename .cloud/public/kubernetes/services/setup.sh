#!/bin/sh

# Create "deployment" namespace
kubectl create namespace deployment

# Add the official Helm repository
helm repo add stable https://charts.helm.sh/stable
helm repo update

# Import Environment variables
export $(cat /tmp/kubernetes/.env | xargs)

# Launch pods from the node master
kubectl taint nodes $NODE_NAME node-role.kubernetes.io/control-plane:NoSchedule-

# Install all services
/tmp/kubernetes/services/certificate/install.sh
/tmp/kubernetes/services/registry/install.sh
/tmp/kubernetes/services/mariadb/install.sh
/tmp/kubernetes/services/phpmyadmin/install.sh
/tmp/kubernetes/services/argocd/install.sh
/tmp/kubernetes/services/ingress/install.sh
/tmp/kubernetes/services/argocd/install_argocd_cli.sh