#!/bin/bash
echo "STARTED"

set -e

cd /scripts

source setup.sh

gcloud version
kubectl version

COMMAND=$1
echo "COMMAND: $COMMAND"
kubectl $COMMAND

echo "FINISHED"