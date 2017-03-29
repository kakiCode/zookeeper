# zookeeper
zookeeper service

hostname: zookeeper 
container name: zookeeper 
ports:
	2181 - client
	2888, 3888 - follower and election

usage:
	devops/build_images.sh - build docker image
	devops/run.sh - run in local docker engine
	devops/deploy.sh - run in bluemix

