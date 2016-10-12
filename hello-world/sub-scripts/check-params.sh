#!/bin/bash
# Copyright 2015 AT&T Intellectual Properties
##############################################################################
#       Functions to test the params
#		
##############################################################################
# Take the config
test_params () {
	# Pull the image and test the var
	if [ -z "$IMAGE_VERSION" ]]
	then
		echo "IMAGE_VERSION is not set in ./conf/control-scripts/docker-config" 
		exit 1
	fi
	if [ -z "$DOCKER_ADDRESS" ]]
	then
		echo "DOCKER_ADDRESS is not set in ./conf/control-scripts/docker-config" 
		exit 1
	fi
	if [ -z "$REGISTRY_ADDRESS" ]]
	then
		echo "REGISTRY_ADDRESS is not set in ./conf/control-scripts/docker-config" 
		exit 1
	fi
	if [ -z "$REGISTRY_LOGIN" ]]
	then
		echo "REGISTRY_LOGIN is not set in ./conf/control-scripts/docker-config" 
		exit 1
	fi
	if [ -z "$REGISTRY_PASSWORD" ]]
	then
		echo "REGISTRY_PASSWORD is not set in ./conf/control-scripts/docker-config" 
		exit 1
	fi
}