#!/bin/bash

params=$*

~/docker/postgres/run.sh 'createuser' -i "$params"
