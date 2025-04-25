#!/bin/sh

PORT="5432"

if [ ! -z $DOCKER_POSTGRES_PORT ]; then
  PORT="$DOCKER_POSTGRES_PORT"
fi

docker run \
  -e "POSTGRES_USER=postgres" \
  -e "POSTGRES_PASSWORD=root" \
  -e "POSTGRES_HOST_AUTH_METHOD=trust" \
  -e "DOCKER_POSTGRES_PORT=$PORT" \
  -p $PORT:$PORT \
  -d \
  -v ~/docker/postgres/dumps:$HOME/docker/postgres/dumps \
  -v ~/docker/postgres/data/$DOCKER_POSTGRES_VERSION:/var/lib/postgresql/data \
  --name postgres-docker-$DOCKER_POSTGRES_VERSION-$PORT \
  postgres-docker-$DOCKER_POSTGRES_VERSION -p $PORT

