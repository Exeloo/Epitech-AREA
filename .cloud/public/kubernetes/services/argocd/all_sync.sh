#!/bin/sh

APPS="aether-api aether-provider-discord aether-provider-twitch aether-webapp aether-mobile"

for APP in $APPS; do
  kubectl rollout restart deployment $APP -n deployment
  argocd app sync $APP --prune
done

sleep 100
kubectl get rs -n deployment --no-headers | awk '$2 == 0 {print $1}' | xargs kubectl delete rs -n deployment