#!/bin/bash
# Exit on any error
set -e
envsubst < ./k8s/kustomization-template.yaml > "./k8s/base/kustomization.yaml"

gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/${IMAGE_NAME}:$CIRCLE_SHA1

kubectl kustomize "./k8s/base" | kubectl apply -f -
