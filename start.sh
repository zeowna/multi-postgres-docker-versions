PORT="5432"

if [ ! -z $POSTGRES_PORT ]; then
  PORT="$POSTGRES_PORT"
fi

docker run \
  -e "POSTGRES_USER=postgres" \
  -e "POSTGRES_PASSWORD=root" \
  -e "POSTGRES_HOST_AUTH_METHOD=trust" \
  -e "POSTGRES_PORT=$PORT" \
  -p $PORT:$PORT \
  -d \
  -v /Users/ze/docker/postgres/dumps:/Users/ze/docker/postgres/dumps \
  -v ~/docker/postgres/data/$POSTGRES_VERSION:/var/lib/postgresql/data \
  --name postgres-docker-$POSTGRES_VERSION-$PORT \
  postgres-docker-$POSTGRES_VERSION -p $PORT

