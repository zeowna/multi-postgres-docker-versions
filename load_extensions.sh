#!/bin/bash

set -e

psql -v ON_ERROR_STOP=1 --username "root" --dbname "$POSTGRES_DB" <<-EOSQL
# must quote extension names or else symbolic error will be thrown.
  create extension if not exists "pg_trgm";
  create extension if not exists "uuid-ossp";
  select * FROM pg_extension;
EOSQL