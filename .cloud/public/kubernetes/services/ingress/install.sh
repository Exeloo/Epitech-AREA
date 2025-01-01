#!/bin/sh

# Apply External names
kubectl apply -f /tmp/kubernetes/services/ingress/extern_name.yml

# Apply ingress
sudo kubectl apply -f /tmp/kubernetes/services/ingress/ingress.yml
