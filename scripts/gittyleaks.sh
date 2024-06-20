#!/bin/bash
set -xe

docker run -v $1:/src mario21ic/gittyleaks:v1 gittyleaks --search-only-head
