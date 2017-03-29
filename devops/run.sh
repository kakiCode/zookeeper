#!/bin/sh

devops_folder=$(dirname $(readlink -f $0))
base_folder=$(dirname $devops_folder)

. $devops_folder/VARS.sh

docker network create --driver bridge $NETWORK

docker stop $CONTAINER
docker rm $CONTAINER

#docker run -d -h $HOST --name $CONTAINER  -p $ZK_CL_PORT:$ZK_CL_PORT -p $ZK_FO_PORT:$ZK_FO_PORT -p $ZK_EL_PORT:$ZK_EL_PORT $IMAGE:$IMAGE_VERSION
docker run -d --name $CONTAINER -P $IMAGE:$IMAGE_VERSION
docker logs -f $CONTAINER