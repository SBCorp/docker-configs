#!/bin/bash
# Copyright 2015 AT&T Intellectual Properties
##############################################################################
#       Script to initialize the hello-world application
#		Requires a local docker engine
##############################################################################
# Take the config
source ./sub-scripts/check-params.sh
source ./conf/control-scripts/docker-config

#Check params
test_params

# Pull the image
echo "Stopping the container hello-world-demo"
docker -H $DOCKER_ADDRESS stop hello-world-demo