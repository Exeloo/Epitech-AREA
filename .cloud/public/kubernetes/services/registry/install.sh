#!/bin/sh

# Create Secret Kubernetes
htpasswd -Bbn $DOCKER_REGISTRY_USER $DOCKER_REGISTRY_PASSWORD > /tmp/auth
kubectl create secret generic docker-registry-secret --from-file=htpasswd=/tmp/auth

# Apply Docker registry
kubectl apply -f /tmp/kubernetes/services/registry/registry.yaml

# Connect the master to registry
sleep 15
MACHINE_IP=$(hostname -I | awk '{print $1}')
echo $DOCKER_REGISTRY_PASSWORD | sudo docker login ${MACHINE_IP}:30001 --username $DOCKER_REGISTRY_USER --password-stdin
