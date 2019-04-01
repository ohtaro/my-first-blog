#!/bin/bash
# Exit on any error
set -e
envsubst < kustomization.yaml > "./overlay/generated-kustomization.yaml"

gcloud docker -- push asia.gcr.io/${PROJECT_NAME}/sample:$CIRCLE_SHA1

kubectl kustomize "./overlay" | kubectl apply -f -
