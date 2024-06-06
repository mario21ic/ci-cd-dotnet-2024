#!/bin/bash
set -xe

BUILD_NUMBER=$1
zip $BUILD_NUMBER.zip MyApp/bin/Debug/net6.0/MyApp
