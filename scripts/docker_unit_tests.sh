#!/bin/bash
set -xe

BUILD=$1
echo "Running unit tests in Docker: "$BUILD

docker run --rm -u 0:0 -v $PWD/:/src/ -w /src/ mcr.microsoft.com/dotnet/sdk:6.0 ./scripts/unit_tests.sh $BUILD
