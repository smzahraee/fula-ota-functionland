#!/bin/bash

git clone -b $GO_FULA_BRANCH https://github.com/functionland/go-fula
cd go-fula && git pull
cd ..

docker buildx build --platform $ARCH_SUPPORT -t $GO_FULA_IMAGE:$GO_FULA_DOCKER_TAG --push .
