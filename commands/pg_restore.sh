#!/bin/bash

params=$*

~/docker/postgres/run.sh 'pg_restore' -i "$params"
