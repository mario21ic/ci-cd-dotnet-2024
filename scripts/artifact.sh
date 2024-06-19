#!/bin/bash
set -xe

BUILD_NUMBER=$1
zip $BUILD_NUMBER.zip MyApi/bin/Debug/net6.0/MyApi
