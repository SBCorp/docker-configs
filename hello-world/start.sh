#!/bin/bash
# Copyright 2015 AT&T Intellectual Properties
##############################################################################
#       Script to initialize the hello-world application
#		Requires a local docker engine
##############################################################################
# Take the config
. ./sub-scripts/check-params.sh
IMAGE_NAME=ecomp/hello-world
#Check params
test_params

# Pull the image
echo "Logging docker engine $DOCKER_ADDRESS in to $REGISTRY_ADDRESS"
echo $DOCKER_PASSWORD| sudo -S docker login -u=$REGISTRY_LOGIN -p=$REGISTRY_PASSWORD https://$REGISTRY_ADDRESS

echo "Pulling the image named $REGISTRY_ADDRESS/$IMAGE_NAME:$IMAGE_VERSION from docker engine $DOCKER_ADDRESS "
docker -H $DOCKER_ADDRESS pull $REGISTRY_ADDRESS/$IMAGE_NAME:$IMAGE_VERSION

echo "Starting image $REGISTRY_ADDRESS/$IMAGE_NAME on Docker engine $DOCKER_ADDRESS"
docker -H $DOCKER_ADDRESS run --rm --name hello-world-demo --hostname hello-world-demo -p 18080:8080 -v `pwd`/conf/image/:hello-world/conf $REGISTRY_ADDRESS/$IMAGE_NAME:$IMAGE_VERSION