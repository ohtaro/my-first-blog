#!/bin/bash
# Exit on any error
set -e
envsubst < ./k8s/base/kustomization.yaml > "./k8s/overlays/development/kustomization.yaml"

gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/${IMAGE_NAME}:$CIRCLE_SHA1

kubectl kustomize "./k8s/overlays/development" | kubectl apply -f -
