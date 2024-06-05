#!/bin/bash
set -xe

BUILD=$1
echo  "BUILD: "$BUILD

docker run --rm -u 0:0 -v $PWD/MyApp/:/src/ -w /src/ mcr.microsoft.com/dotnet/sdk:6.0 dotnet build
