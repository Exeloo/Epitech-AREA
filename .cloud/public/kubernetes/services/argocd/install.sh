#!/bin/sh

# Install Argo-CD
helm repo add argo-cd https://argoproj.github.io/argo-hel
helm dep update /tmp/kubernetes/services/argocd/charts/argo-cd/

helm install argo-cd /tmp/kubernetes/services/argocd/charts/argo-cd/

cp /tmp/kubernetes/services/argocd/all_sync.sh ~/
