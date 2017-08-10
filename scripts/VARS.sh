
#NETWORK=kaki
NAME=zookeeper
IMAGE=kaki-$NAME
IMAGE_VERSION=latest
CONTAINER=$NAME
HOST=$CONTAINER

# zookeeper client, follower and election ports
ZK_CL_PORT=2181
ZK_FO_PORT=2888
ZK_EL_PORT=3888

BLUEMIX_CONTAINER_MEMORY=128
REGISTRY=registry.ng.bluemix.net/mynodeappbue
BLUEMIX_IMG=$REGISTRY/$IMAGE

DOCKER_HUB_IMG=kakicode/$NAME