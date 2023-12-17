#!/bin/bash

source /var/lib/jenkins/.env

cd /var/lib/jenkins/kubernetes/terraform
terraform init
terraform import -var-file=variables.tfvars google_container_cluster.whanos-cluster $REGION/whanos-cluster
mv /var/lib/jenkins/kubernetes/terraformFiles/helm.tf /var/lib/jenkins/kubernetes/terraform/helm.tf
