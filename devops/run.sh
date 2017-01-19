#!/bin/sh

devops_folder=$(dirname $(readlink -f $0))
base_folder=$(dirname $devops_folder)

. $devops_folder/VARS.sh

docker run -d -h $HOST --name $CONTAINER  -p $ZK_CL_PORT:$ZK_CL_PORT -p $ZK_FO_PORT:$ZK_FO_PORT -p $ZK_EL_PORT:$ZK_EL_PORT $IMAGE:$IMAGE_VERSION
