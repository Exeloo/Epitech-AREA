#!/bin/sh

# Install Argo-CD
kubectl apply -n deployment -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# Add permissions
#kubectl create clusterrole metallb-reader --verb=get,list,watch --resource=l2advertisements.metallb.io
#kubectl create clusterrolebinding argocd-metallb-reader --clusterrole=metallb-reader --serviceaccount=deployment:argocd-application-controller