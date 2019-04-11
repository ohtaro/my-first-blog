#!/bin/bash
# Exit on any error
set -e
#envsubst < ./k8s/kustomization-template.yaml > "./k8s/base/kustomization.yaml"

kubectl apply -k ./k8s/base
