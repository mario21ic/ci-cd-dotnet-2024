#!/bin/bash
# syntax: ./scripts/artifact_cd.sh mario21ic/dotnet-api:v2 123.zip
set -xe

export DOCKER_IMAGE=$1
FILENAME=$2

envsubst '${DOCKER_IMAGE}' < stack.yaml.template > stack.yaml
#sed -i "s|latest|${DOCKER_IMAGE}|g" stack.yaml

rm -rf $FILENAME
zip -r $FILENAME scripts/ appspec.yml stack.yaml
