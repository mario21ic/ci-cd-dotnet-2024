#!/bin/bash
set -xe

export DOCKER_IMAGE=$1
envsubst '${DOCKER_IMAGE}' < stack.yaml.template > stack.yaml
#sed -i "s|latest|${DOCKER_IMAGE}|g" stack.yaml

rm -rf artifact.zip
zip -r artifact.zip scripts/ appspec.yml stack.yaml
