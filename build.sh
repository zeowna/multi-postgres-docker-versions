#!/bin/bash

version=$1
arch=$(arch)
image_prefix=''

if [ $arch == 'arm64' ] || [ $arch == 'aarch64' ]; then
  image_prefix='arm64v8/'
fi

docker build -f ~/docker/postgres/Dockerfile \
  --build-arg IMAGE_PREFIX=$image_prefix \
  --build-arg DOCKER_POSTGRES_VERSION=$version \
  -t postgres-docker-${version}:latest .