#!/bin/bash

echo "PROJECT: $PROJECT"
echo "CLUSTER_NAME: $CLUSTER_NAME"
echo "ZONE: $ZONE"

echo $CREDENTIAL_GCLOUD | base64 -d > credential_gcloud.json
gcloud auth activate-service-account --key-file=credential_gcloud.json
gcloud config set project $PROJECT
# save credentials for kubectl (~/.kube/config)
gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE

helm repo add --username sebczu --password $CREDENTIAL_GITHUB helm-charts 'https://raw.githubusercontent.com/sebczu/helm-charts/master/'
