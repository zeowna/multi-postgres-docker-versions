#!/bin/bash

VERSION=$1
PORT=$2

if [ -z $PORT ]; then
  PORT="5432"
fi

container_id=$(docker ps -aqf "name=postgres-docker-$VERSION-$PORT")

export DOCKER_POSTGRES_VERSION=$VERSION DOCKER_POSTGRES_PORT=$PORT

echo $container_id

if [ -z $container_id  ]; then
  shift
  shift
  params=$@

  dpg_build $VERSION
  dpg_start $params
fi


