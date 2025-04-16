
get_ports() {
  local ports="5432"

  if [ ! -z $DOCKER_POSTGRES_PORT ]; then
    ports="-p $DOCKER_POSTGRES_PORT:5432"
  fi

  echo $ports
}