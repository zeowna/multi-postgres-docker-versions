#!/bin/bash

params=$*

~/docker/postgres/run.sh 'psql' -it "$params"
