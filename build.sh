#!/bin/sh

CURRENT_VERSION=1.0

docker build -t ruszh/openjdk-coq-alpine:latest -t ruszh/openjdk-coq-alpine:$CURRENT_VERSION .
docker push ruszh/openjdk-coq-alpine