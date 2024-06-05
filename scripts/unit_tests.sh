#!/bin/bash
set -xe

BUILD=$1
echo "Running unit tests: "$BUILD

cd MyApp.tests/ && dotnet test
