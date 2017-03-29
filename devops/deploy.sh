#!/bin/sh

devops_folder=$(dirname $(readlink -f $0))
base_folder=$(dirname $devops_folder)

. $devops_folder/VARS.sh

IMAGE_ID=`docker images | grep -E "^$IMAGE*" | awk -e '{print $3}'`

docker tag $IMAGE_ID $BLUEMIX_IMG
docker push $BLUEMIX_IMG

cf ic network create --driver bridge $NETWORK

cf ic stop $CONTAINER
cf ic rm $CONTAINER
sleep 24
cf ic run -d --name $CONTAINER -p $ZK_CL_PORT -p $ZK_FO_PORT -p $ZK_EL_PORT -m $BLUEMIX_CONTAINER_MEMORY $BLUEMIX_IMG
sleep 24
cf ic logs -f $CONTAINER
