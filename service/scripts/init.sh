#!/bin/bash
echo "STARTED"

COMMAND=$1
echo "COMMAND: $COMMAND"

set -e

cd /scripts

echo $CREDENTIAL | base64 -d > credential.json

gcloud auth activate-service-account --key-file=credential.json
gcloud version

gcloud $COMMAND

echo "FINISHED"