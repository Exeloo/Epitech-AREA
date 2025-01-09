#!/bin/sh

# Install ArgoCD CLI
sudo curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo chmod +x /usr/local/bin/argocd

# Change admin password
sleep 100
ARGOCD_INITIAL_PASSWORD=$(kubectl get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)
argocd login argocd.tech.aether-area.fr --username admin --password $ARGOCD_INITIAL_PASSWORD
argocd account update-password --current-password $ARGOCD_INITIAL_PASSWORD --new-password $ARGOCD_PASSWORD
argocd login argocd.tech.aether-area.fr --username admin --password $ARGOCD_PASSWORD