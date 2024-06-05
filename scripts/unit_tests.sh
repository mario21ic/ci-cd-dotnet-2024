#!/bin/bash


BUILD=$1
echo "Running unit tests: "$BUILD

cd MyApp.tests/ && dotnet test
