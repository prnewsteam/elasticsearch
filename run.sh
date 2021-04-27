#!/usr/bin/env bash

CURRENT_ENV=$1

if [ "${CURRENT_ENV}" == "" ]; then
    printf "\nWarning: No server specified\n"
    printf "Enter the configuration: [dev | prod]\n\n"
    exit 0
fi

cp .env.${CURRENT_ENV} .env
mkdir data/01 data/02 data/03
sudo chmod 777 data/01 data/02 data/03

docker-compose up -d
