#!/bin/bash
set -xe

BUILD=$1
echo "Running unit tests: "$BUILD

cd MyApi.Tests/ && dotnet test
