#!/bin/sh

APPS="aether-api aether-provider-discord aether-provider-twitch aether-provider-google aether-provider-github aether-provider-microsoft aether-provider-bluesky aether-provider-christmas aether-provider-linkedin aether-provider-patreon aether-provider-riot aether-provider-trackergg aether-provider-visualcrossing aether-provider-cron aether-provider-impactco2 aether-webapp aether-mobile"

argocd login argocd.tech.aether-area.fr --username admin --password admin1234

for APP in $APPS; do
  kubectl delete deployment $APP -n deployment
  argocd app sync $APP --prune
done