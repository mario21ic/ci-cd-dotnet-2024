#!/bin/bash


BUILD=$1
echo "Running unit tests: "$BUILD

docker run --rm -u 0:0 -v $PWD/MyApp.tests/:/src/ -w /src/ mcr.microsoft.com/dotnet/sdk:6.0 dotnet test
