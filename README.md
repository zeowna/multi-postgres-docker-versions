# Multiple Postgres-Docker versions

1. Copy and paste the **aliases** file content into your **.bashrc**, you can change **$DOCKER_POSTGRES_VERSION** if needed;
2. Reload your shell context;

## dpg_build

The command dpg_build will build a new docker image based on postgres official dockerhub image with **"$version-alpine"** tag:

```sh
dpg_build $version
```
Will build the image **postgres-docker-17**;

```sh
dpg_build 17 
```

## dpg_start

The command dpg_start starts a new docker container based on the ENV variables **$DOCKER_POSTGRES_VERSION** and **$DOCKER_POSTGRES_PORT**:

```sh
  dpg_start
```

Will run the container **postgres-docker-17-5432**:

```sh
DOCKER_POSTGRES_VERSION=17
DOCKER_POSTGRES_PORT=5432
dpg_start 
```

## dpg_stop

The command dpg_stop stops a docker container based on the parameters **$version** and **$port**:

```sh
dpg_stop $version $port
```
Will stop the container **postgres-docker-17-5432**:

```sh
dpg_stop 17 5432 

```

## dpg_stop_all

The command dpg_stop_all will stop all docker **postgres-docker-** containers:

```sh
dpg_stop_all
```

## dpg_set_version

The command dpg_set_version sets the ENV variables **$DOCKER_POSTGRES_VERSION** and **$DOCKER_POSTGRES_PORT** for the current context, then runs **dpg_build** and **dpg_start** based on the parameters **$version** and **$port**:

```sh
dpg_set_version $version $port
```
Will build the image **postgres-docker-17** and run the container **postgres-docker-17-5432**:

```sh
dpg_set_version 17 5432 

```

## dpg_versions

The command dpg_versions shows all postgres-docker-* images:

```sh
dpg_versions
```

## dpg_running

The command dpg_running shows all postgres-docker-* containers:

```sh
dpg_running
```
# createdb, createuser, pg_dump, pg_restore, psql and etc

These commands will work based on the ENV variables **$DOCKER_POSTGRES_VERSION** and **$DOCKER_POSTGRES_PORT**.
