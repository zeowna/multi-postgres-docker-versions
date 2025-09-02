#!/bin/bash

command=$1
interactive_mode_flag=$2
shift
shift
params=$@

container_id=$(docker ps -aqf "name=postgres-docker-$DOCKER_POSTGRES_VERSION-$DOCKER_POSTGRES_PORT")

docker exec $interactive_mode_flag $container_id $command $params
