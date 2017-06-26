#!/bin/bash

BASEPATH=~/MARCELO/SEGUIMIENTO/
POSTGRESQL_USER=postgres
POSTGRESQL_PASS=Developer

function is_frontend {
    _is_frontend=false
    if [[ $1 == *"frontend"* ]]; then
        _is_frontend=true
    fi
}

function is_python {
    if [[ -d $1/bin ]]; then
        _basename=`basename "$1"`
        _window_root=$1/$_basename
    else
        _window_root=$1
    fi
}

