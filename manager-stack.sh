#!/bin/bash

# define the base path to mount volumes inside docker-compose
POC_BASE_DIR=`pwd`
export POC_BASE_DIR="${POC_BASE_DIR}"

# manage stack startup and shutdown
if [[ "up" = "$1" || "down" = "$1" ]];then
    P="${1}"
    if [[ "up" = "$1" ]];then
        P="${P} -d"
    fi
    docker-compose -f docker-compose.yaml ${P}
else
    echo "Accepted values for managing the stack are: up or down"
fi