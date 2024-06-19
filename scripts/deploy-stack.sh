#!/bin/bash

docker stack deploy -c stack.yaml my-stack
# curl http://<ip-server>:8081/weatherforecast
