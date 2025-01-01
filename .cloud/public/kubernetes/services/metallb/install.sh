#!/bin/sh

# Install MetalLB
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/main/config/manifests/metallb-native.yaml

# Get Machine IP
MACHINE_IP=$(hostname -I | awk '{print $1}')

# Configure MetalLB
cat <<EOF > /tmp/metallb.yml
apiVersion: metallb.io/v1beta1
kind: IPAddressPool
metadata:
  name: my-ip-pool
  namespace: metallb-system
spec:
  addresses:
    - ${MACHINE_IP}-${MACHINE_IP}
---
apiVersion: metallb.io/v1beta1
kind: L2Advertisement
metadata:
  name: my-l2-advertisement
  namespace: metallb-system
EOF

# Apply Config
sleep 30
sudo kubectl apply -f /tmp/metallb.yml