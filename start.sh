#!/bin/bash

port="5432"

if [ ! -z $DOCKER_POSTGRES_PORT ]; then
  port="$DOCKER_POSTGRES_PORT"
fi

docker run \
  --shm-size 1gb \
  -e "POSTGRES_USER=postgres" \
  -e "POSTGRES_PASSWORD=root" \
  -e "POSTGRES_HOST_AUTH_METHOD=trust" \
  -p $port:$port \
  -d \
  -v ~/docker/postgres/dumps:$HOME/docker/postgres/dumps \
  -v ~/docker/postgres/data/postgres-$DOCKER_POSTGRES_VERSION:/var/lib/postgresql/data \
  --name postgres-docker-$DOCKER_POSTGRES_VERSION-$port \
  postgres-docker-$DOCKER_POSTGRES_VERSION -p $port

