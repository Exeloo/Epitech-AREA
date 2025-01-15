---
outline: deep

prev:
  text: Kubernetes
  link: '/devops/kubernetes'
---

# Explanation Guide - Templates

## Explanation of Templates


Helm templates are dynamic YAML files used to generate customized Kubernetes configurations. They use variables and simplified syntax to adapt deployments to different environments.


## Context


For this project, Helms templates are used to deploy and configure the various apps on our website from ArgoCD using our images in the Docker Registry.


## Architecture


Helm templates architecture consists of the following components :

- **`Chart.yaml` file** : The file contains the description of a `Helm chart` (name, version, description, dependencies, etc.) and is used to identify and manage chart versions for deploying applications on Kubernetes.

- **`values.yaml` file** : The file contains the default configuration parameters for a `Helm chart`. It allows you to customize deployments by defining values that are injected into templates.

- **`templates` folder** : Contains the template files that generate Kubernetes manifests (such as `Deployment`, `Service`, etc.). These files use variables and instructions from the `values.yaml` file to create dynamic configurations tailored to each deployment.


## Applications


### Ingress :

- Ingress template to redirect the **URL** of the site's **API** and **Frontend** to their respective services.
- Contains a `ingress.yaml` file.

### Mobile :

- Mobile template for building the **APK** and the volume shared with the **WebAPP** to retrieve it.
- Contains a `deployment.yaml` file for the build, a `PersistentVolume.yaml` and a `PersistentVolumeClaim.yaml` file for volume.

### Providers :

- Providers template lets you deploy the various providers (**Google**, **Microsoft**, etc.) and their services to access them.
- Contains a `deployment.yaml` file for deployment and a `service.yaml` file for access.

### Server :

- Server template is used to deploy and access the **API**.
- Contains a `deployment.yaml` file for deployment and a `service.yaml` file for access.

### Web :

- Web template is used to deploy and access the **Website Frontend**.
- Contains a `deployment.yaml` file for deployment and a `service.yaml` file for access.