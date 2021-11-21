#!/bin/bash

echo $CREDENTIAL | base64 -d > credential.json
gcloud auth activate-service-account --key-file=credential.json
# save credentials for kubectl
gcloud container clusters get-credentials template-gke-cluster --zone europe-central2-a --project personal-331119
