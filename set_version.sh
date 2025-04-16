VERSION=$1
PORT=$2

if [ -z $PORT ]; then
  PORT="5432"
fi

container_id=$(docker ps -aqf "name=postgres-docker-$VERSION-$PORT")

export POSTGRES_VERSION=$VERSION POSTGRES_PORT=$PORT

echo $container_id

if [ -z $container_id  ]; then
  pg_build $VERSION
  pg_start
fi


