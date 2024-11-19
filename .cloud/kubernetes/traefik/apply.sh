kubectl apply \
-f traefik.account.yaml \
-f traefik.deployment.yaml \
-f traefik.namespace.yaml \
-f traefik.role.yaml \
-f traefik.role-binding.yaml \
-f dashboard/traefik-dashboard.ingress.yaml \
-f dashboard/traefik-dashboard.service.yaml