#!/bin/sh
. ./VARS.sh

docker run -d -h $HOST --name $CONTAINER -p $ZK_CL_PORT:$ZK_CL_PORT -p $ZK_FO_PORT:$ZK_FO_PORT -p $ZK_EL_PORT:$ZK_EL_PORT $IMAGE:$IMAGE_VERSION

