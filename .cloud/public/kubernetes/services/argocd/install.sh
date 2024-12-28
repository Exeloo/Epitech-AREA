#!/bin/sh

# Install Argo-CD
kubectl apply -n deployment -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Add permissions
sleep 30
kubectl apply -f /tmp/kubernetes/services/argocd/clusterrole.yml
kubectl apply -f /tmp/kubernetes/services/argocd/clusterrolebinding.yml