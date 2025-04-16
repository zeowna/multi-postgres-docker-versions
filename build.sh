POSTGRES_VERSION=$1
ARCH=$(arch)
IMAGE_PREFIX=''

if [ $ARCH == 'arm64' ] || [ $ARCH == 'aarch64' ]; then
  IMAGE_PREFIX='arm64v8/'
fi

docker build -f ~/docker/postgres/Dockerfile \
  --build-arg IMAGE_PREFIX=$IMAGE_PREFIX \
  --build-arg POSTGRES_VERSION=$POSTGRES_VERSION \
  -t postgres-docker-$POSTGRES_VERSION .