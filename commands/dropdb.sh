#!/bin/bash

params=$*

~/docker/postgres/run.sh 'dropdb' -i "$params"
