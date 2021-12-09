# Devops challenge architecture
We have 3 folders that contains different technologies to run different applications

- ci_cd

- kubernetes

- terraform

## Docker section

To run the Jenkins application you only have to run this command:
```bash
docker-compose up or docker-compose up -d (detached mode)
```

The docker-compose makes a build from the Dockerfile with all the requirements and starts functional container with jenkins and all plugins required installed.


## Kubernetes

To create a new kubernetes cluster we have the folder "kubernetes" on are all the required manifests.
You can start to create the cluster just runing all the manifests with :

```bash
kubectl apply -f "manifest-template.yml"
```

## terraform

I created this folder just for fun, to try other technologies and ways to create a new k8s cluster.
You can avoid this part if you want :) 

To run the cluster with terraform you only have to run these commands:

```bash
touch terraform/terraform.tfstate
docker-compose run --rm terraform init
docker-compose run --rm terraform apply
```
Why we are using terraform dockerized? Simple just to use everyone the same version of terraform and avoid incompatibilities.