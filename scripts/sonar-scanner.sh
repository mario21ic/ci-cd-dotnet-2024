#!/bin/bash
set -xe

docker run \
    --network host --rm \
    -e SONAR_HOST_URL="http://localhost:9001" \
    -e SONAR_TOKEN="xxxx"  \
    -v "$PWD:/usr/src" \
    sonarsource/sonar-scanner-cli
