# Setup k3s

## Install k3s
```shell
curl -sfL https://get.k3s.io | sh -s - --disable=traefik
```

## Change config path and read permissions
```shell
export KUBECONFIG=~/.kube/config
mkdir -p ~/.kube
sudo cp /etc/rancher/k3s/k3s.yaml ~/.kube/config
sudo chmod 644 ~/.kube/config
```

## Run server
```shell
k3s kubectl get node
```

## Install kubernetes dashboard
```shell
helm repo add kubernetes-dashboard https://kubernetes.github.io/dashboard/
helm upgrade --install kubernetes-dashboard kubernetes-dashboard/kubernetes-dashboard --create-namespace --namespace kubernetes-dashboard
```