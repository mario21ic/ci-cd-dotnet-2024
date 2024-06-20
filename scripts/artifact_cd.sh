#!/bin/bash
set -xe

zip -r artifact.zip scripts/ appspec.yml stack.yaml
