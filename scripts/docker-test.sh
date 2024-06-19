#!/bin/bash
set -xe

docker run --name demo1 --rm -d -p 8080:80 mario21ic/dotnet-api:v$1
sleep 3

curl http://localhost:8080/weatherforecast

docker rm -f demo1
