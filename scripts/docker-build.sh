#!/bin/bash
set -xe

DOCKER_IMAGE=$1
docker build --platform=linux/amd64 -t $DOCKER_IMAGE -f Dockerfile ./
