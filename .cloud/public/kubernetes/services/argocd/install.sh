#!/bin/sh

# Install Argo-CD
kubectl apply -n deployment -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml