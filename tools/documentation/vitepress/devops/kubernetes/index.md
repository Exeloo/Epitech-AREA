---
outline: deep

prev:
  text: Ansible
  link: '/devops/ansible'

next:
  text: Templates
  link: '/devops/templates'
---

# Explanation Guide - Kubernetes

## Explanation of Kubernetes


Kubernetes is a tool for managing and scaling applications in containers. It automates deployment and ensures apps run reliably on multiple machines.

## Context


For this project, Kubernetes is used to deploy and host our website thanks to its numerous tools.


## Architecture


The Kubernetes architecture consists of the following components :

- **`.env` file** : Containing passwords or variables that you don't want to leave raw on the machine, and which will be added to the machine's environment when scripts are run.

- **`setup.sh` file** : This is the script that adds variables from the `.env` file to the machine's env, allows the node master to launch pods and launches all the scripts in each category below.


- **`argocd` folder** : Contains scripts for installing `ArgoCD` and `ArgoCD CLI`, as well as the script that restarts all deployed apps.

- **`certificate` folder** : Contains the script for using `Let's Encrypt` to generate `TLS` certificates for each of our DNS.

- **`ingress` folder** : Contains scripts for installing `NGINX` and using `Ingress` to redirect DNS to Kubernetes services.

- **`mariadb` folder** : Contains the script for installing `MariaDB` and initializing databases with a sql file.

- **`metallb` folder** : Contains the script for installing `MetalLB`, which exposes our `IP` address externally, enabling a connection to the outside of the cluster.

- **`phpmyadmin` folder** : Contains the script for installing `PHPMyAdmin`, which adds a graphical interface for managing our `MariaDB` databases.

- **`registry` folder** : Contains the script for installing the `Docker Registry`, which is a server that stores docker images, in this case those of our project, and can then be retrieved and used, like `Docker Hub` but privately.


## Automatic deployment

This part is managed in the `ArgoCD GUI` and enables automatic deployment of different kubernetes technologies.

For further explanations, please refer to this section: [Templates Documentation](./../templates/index.md)