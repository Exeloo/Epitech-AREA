#!/bin/sh

# Create Secret Kubernetes
htpasswd -Bbn $DOCKER_REGISTRY_USER $DOCKER_REGISTRY_PASSWORD > /tmp/auth
kubectl create secret generic docker-registry-secret --from-file=htpasswd=/tmp/auth --namespace=deployment


# Apply Docker registry
kubectl apply -f /tmp/kubernetes/services/registry/registry.yml

# Connect the master to registry
sleep 15
echo $DOCKER_REGISTRY_PASSWORD | sudo docker login registry.tech.aether-area.fr --username $DOCKER_REGISTRY_USER --password-stdin

# Create Secret for argocd
kubectl create secret docker-registry regcred --docker-server=registry.tech.aether-area.fr --docker-username=$DOCKER_REGISTRY_USER --docker-password=$DOCKER_REGISTRY_PASSWORD -n deployment