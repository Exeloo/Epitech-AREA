#!/bin/sh

# Add the nginx repository
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm install ingress-nginx ingress-nginx/ingress-nginx --namespace deployment --create-namespace

# Apply MetalLB
/tmp/kubernetes/services/metallb/install.sh