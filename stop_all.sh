#!/bin/bash

container_id=$(docker ps -aqf "name=postgres-docker-*")

docker rm -f $container_id
