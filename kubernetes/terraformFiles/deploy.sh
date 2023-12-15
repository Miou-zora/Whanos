#!/bin/bash

PROJECT_NAME=$1
IMAGE_NAME=$2
WHANOS_FILE_PATH=$3

cp $WHANOS_FILE_PATH /var/lib/jenkins/kubernetes/terraform/values.yaml

sed -i "s/^nameOverride:.*/nameOverride: $PROJECT_NAME/" /var/lib/jenkins/kubernetes/terraform/setup.yaml
sed -i "s/^resource \"helm_release\".*/resource \"helm_release\" \"$PROJECT_NAME\" {/" /var/lib/jenkins/kubernetes/terraform/helm.tf
sed -i "s/^  name       = .*/  name       = \"$PROJECT_NAME\"/" /var/lib/jenkins/kubernetes/terraform/helm.tf

cd /var/lib/jenkins/kubernetes/terraform
terraform apply -var-file="variables.tfvars" -target=helm_release.$PROJECT_NAME -auto-approve
