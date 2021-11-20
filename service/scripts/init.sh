#!/bin/bash
echo "STARTED"

set -e

cd /scripts

source setup.sh

gcloud version

COMMAND=$1
echo "COMMAND: $COMMAND"
gcloud $COMMAND

echo "FINISHED"