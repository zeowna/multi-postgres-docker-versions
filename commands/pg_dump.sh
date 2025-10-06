#!/bin/bash

params=$*

~/docker/postgres/run.sh 'pg_dump' -i "$params"
