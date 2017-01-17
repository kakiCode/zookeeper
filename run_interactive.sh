#!/bin/sh
. ./VARS.sh

docker run --name $CONTAINER -it $IMAGE:$IMAGE_VERSION /bin/bash