#!/bin/bash
set -xe

FILE=$1
docker compose -f $FILE config
