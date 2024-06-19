#!/bin/bash
set -xe

docker build -t mario21ic/dotnet-api:v$1 .
