#!/bin/bash
set -xe

rm -rf artifact.zip
zip -r artifact.zip scripts/ appspec.yml stack.yaml
