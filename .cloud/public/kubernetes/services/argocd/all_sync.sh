#!/bin/sh

APPS="aether-api aether-provider-discord aether-provider-twitch aether-webapp aether-mobile"

for APP in $APPS; do
  kubectl rollout restart deployment $APP -n deployment
  argocd app sync $APP --prune
done