
#NETWORK=kaki
IMAGE=kaki-zookeeper
IMAGE_VERSION=latest
CONTAINER=zookeeper
HOST=$CONTAINER

# zookeeper client, follower and election ports
ZK_CL_PORT=2181
ZK_FO_PORT=2888
ZK_EL_PORT=3888

BLUEMIX_CONTAINER_MEMORY=128
REGISTRY=registry.ng.bluemix.net/mynodeappbue
BLUEMIX_IMG=$REGISTRY/$IMAGE