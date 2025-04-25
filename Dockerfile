ARG DOCKER_POSTGRES_VERSION=17
ARG IMAGE_PREFIX=

FROM ${IMAGE_PREFIX}postgres:${DOCKER_POSTGRES_VERSION}-alpine

# Add extra config here 
# Copy in the load-extensions script
# COPY load_extensions.sh /docker-entrypoint-initdb.d/
# COPY startup.sql /docker-entrypoint-initdb.d/