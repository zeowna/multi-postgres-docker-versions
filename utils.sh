
get_ports() {
  local ports="5432"

  if [ ! -z $POSTGRES_PORT ]; then
    ports="-p $POSTGRES_PORT:5432"
  fi

  echo $ports
}