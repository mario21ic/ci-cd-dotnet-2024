#!/bin/bash
set -xe

docker build --platform=linux/amd64 -t mario21ic/dotnet-api:v$1 .
