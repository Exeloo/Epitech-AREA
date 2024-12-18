#!/bin/sh

helm repo add Aste88 https://aste88.github.io/helm-charts/
helm repo update
helm install wireguard Aste88/wireguard
