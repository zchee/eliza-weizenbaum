#!/bin/bash

eval $(docker-machine env machine-vmware-system)
docker-compose stop
docker-compose build
docker-compose up
