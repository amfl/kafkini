#!/bin/sh
docker run --rm -it \
    -v $PWD:/tmp/workdir \
    -w /tmp/workdir \
    -p 8080:8080 \
    --entrypoint=bash \
    node:lts-slim
