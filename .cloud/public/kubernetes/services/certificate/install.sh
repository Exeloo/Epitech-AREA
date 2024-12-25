#!/bin/sh

# Install ingress
/tmp/kubernetes/services/ingress/ingress_install.sh

# Create a TLS
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.16.2/cert-manager.yaml
sleep 15
kubectl apply -f /tmp/kubernetes/services/certificate/clusterissuer.yml
kubectl apply -f /tmp/kubernetes/services/certificate/cert.yml