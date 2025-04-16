VERSION=$1
PORT=$2

if [ -z $PORT ]; then
  PORT="5432"
fi

container_id=$(docker ps -aqf "name=postgres-docker-$VERSION-$PORT")

if [ ! -z $container_id ]; then
  docker rm -f $container_id
fi