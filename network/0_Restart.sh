#!/bin/bash -u
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images dev-* -q)
rm -rf orgs data
docker-compose -f $LOCAL_ROOT_PATH/compose/docker-compose.yaml up -d council.davifn.net