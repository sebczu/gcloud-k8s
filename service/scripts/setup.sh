#!/bin/bash

echo "PROJECT: $PROJECT"
echo "CLUSTER_NAME: $CLUSTER_NAME"
echo "ZONE: $ZONE"

echo $CREDENTIAL | base64 -d > credential.json
gcloud auth activate-service-account --key-file=credential.json
gcloud config set project $PROJECT
# save credentials for kubectl (~/.kube/config)
gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE
