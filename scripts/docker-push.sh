#!/bin/bash
set -xe

DOCKER_IMAGE=$1
docker push $DOCKER_IMAGE
