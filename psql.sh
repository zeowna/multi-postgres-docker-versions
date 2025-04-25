#!/bin/sh

container_id=$(docker ps -aqf "name=postgres-docker-$DOCKER_POSTGRES_VERSION-$DOCKER_POSTGRES_PORT")

docker exec -it $container_id psql -p $DOCKER_POSTGRES_PORT $@
