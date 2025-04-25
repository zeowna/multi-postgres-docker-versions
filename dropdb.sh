#!/bin/sh

container_id=$(docker ps -aqf "name=postgres-docker-$DOCKER_POSTGRES_VERSION-$DOCKER_POSTGRES_PORT")

docker exec -i $container_id dropdb $@
