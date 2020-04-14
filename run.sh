#!/bin/bash
source .env
docker run -d --name monyog -v $PWD/MONyog:/usr/local/MONyog --restart always -p $MONYOG_PORT:5555 devxops/monyog:latest
