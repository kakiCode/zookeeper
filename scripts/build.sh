#!/bin/sh

# -------------------------------
#   build docker image 
#   and push it to docker hub
#   ... don't forget to do `docker login`
#    to connect to docker hub
# -------------------------------

scripts_folder=$(dirname $(readlink -f $0))
base_folder=$(dirname $scripts_folder)
docker_folder=$base_folder/docker

. $scripts_folder/VARS.sh

echo "going to build image $IMAGE"
_pwd=`pwd`
cd $docker_folder

docker rmi $IMAGE:$IMAGE_VERSION
docker build -t $IMAGE:$IMAGE_VERSION .

echo "going to push it to docker hub..."

docker tag $IMAGE $DOCKER_HUB_IMG
docker push $DOCKER_HUB_IMG

cd $_pwd

echo "... done."