#!/bin/sh
. ./VARS.sh
docker build -t $IMAGE:$IMAGE_VERSION  .