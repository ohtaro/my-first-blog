#!/bin/bash
# Exit on any error
set -e
envsubst < ./k8s/base/kustomization.yaml > "./overlays/development/kustomization.yaml"

gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/sample:$CIRCLE_SHA1

kubectl kustomize "./overlays/development" | kubectl apply -f -
