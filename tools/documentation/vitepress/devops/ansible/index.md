# Explanation Guide - Ansible

## Explanation of Ansible


Ansible is an automation tool for managing IT tasks such as installing and configuring software on multiple machines simultaneously.

## Context


In this project, Ansible will be used to install and configure a Kubernetes cluster to deploy the technologies used to host our website.

**Here are the various installations required:**

- **Docker**
- **Helm**
- **Outils Kubernetes** (kubeadm, kubelet, kubectl)


## Architecture


The Ansible architecture consists of the following components :

- **`production` file** : Contains information about the machines to be managed (IP, users, path to private keys for SSH).

- **`playbook.yml` file** : This is the main Ansible file that defines roles and tasks.

- **`group_vars` folder** : Contains configuration files for common variables used during installation.

- **`roles` folder** : Contains the different roles for each type of machine (base, master), each with specific tasks.


## Roles details


### Role **Base**

The **base** role tasks are performed on all machines. They include updating and installing the necessary software, as well as configuring settings for Kubernetes.

#### Tasks :
- **Initialize the machine** :
  `Update`, `upgrade` and `install` the necessary tools, and become user `root`.
- **Kernel for Kubernetes** :
  Setup a network configuration for Kubernetes using kernel.
- **Configuring containerd** :
  install and configure `containerd` to manage and use Kubernetes pods.
- **Install Docker dependencies** :
  Install the `Docker` tool and setup its use.
- **Install Kubernetes dependencies** :
  Installation of Kubernetes technical tools such as `Helm`, `kubectl`, `kubeadm` and `kubelet`.



### Role **Master**

The **master** role is intended for machines that will be master nodes in the Kubernetes cluster. These nodes manage the entire cluster and its components.

#### Tasks :
- **Kubernetes cluster initialization** :
  Initialization and launch of the Kubernetes cluster and configuration of its use for the machine user.
- **Scripts configuration and deployment** :
  Launch of the various scripts used to configure and install the tools used to deploy our website.

For more details about the kubernetes tools used, I recommend you look at this : [Kubernetes Documentation](./../kubernetes/index.md)