# zookeeper

## zookeeper docker image

hostname: zookeeper 
container name: zookeeper 
ports:
	2181 - client
	2888, 3888 - follower and election

### usage:

- edit VARS.sh accordingly:
  ```
  NAME=zookeeper
  IMAGE=kaki-$NAME
  IMAGE_VERSION=latest
  CONTAINER=$NAME
  HOST=$CONTAINER
  
  #zookeeper client, follower and election ports
  ZK_CL_PORT=2181
  ZK_FO_PORT=2888
  ZK_EL_PORT=3888
  
  BLUEMIX_CONTAINER_MEMORY=128
  REGISTRY=registry.ng.bluemix.net/mynodeappbue
  BLUEMIX_IMG=$REGISTRY/$IMAGE
  DOCKER_HUB_IMG=kakicode/$NAME
  ```
- scripts/buildAndPushImage.sh - build docker image and push it to dockerHub (/kakicode/zookeeper) and private bluemix registry (registry.ng.bluemix.net/mynodeappbue/zookeeper)
- scripts/runLocal.sh - run on local docker engine
- scripts/runOnBluemix.sh - run on bluemix
- scripts/attachOnBluemix.sh - attach to bluemix bash process

