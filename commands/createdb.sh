#!/bin/bash

params=$*

~/docker/postgres/run.sh 'createdb' -i "$params"
