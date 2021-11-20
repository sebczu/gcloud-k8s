#!/bin/bash

echo $CREDENTIAL | base64 -d > credential.json
gcloud auth activate-service-account --key-file=credential.json
