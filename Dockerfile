ARG POSTGRES_VERSION=14
ARG IMAGE_PREFIX=

FROM ${IMAGE_PREFIX}postgres:${POSTGRES_VERSION}-alpine

# Add extra config here 
# Copy in the load-extensions script
# COPY load_extensions.sh /docker-entrypoint-initdb.d/
# COPY startup.sql /docker-entrypoint-initdb.d/