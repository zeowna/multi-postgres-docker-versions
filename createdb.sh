container_id=$(docker ps -aqf "name=postgres-docker-$POSTGRES_VERSION-$POSTGRES_PORT")

docker exec -i $container_id createdb $@
