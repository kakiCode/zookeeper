#!/bin/sh
. ./VARS.sh

docker run -d -h $HOST --name $CONTAINER -p $ZOOKEEPER_PORT:$ZOOKEEPER_PORT $IMAGE:$IMAGE_VERSION