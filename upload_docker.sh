#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Step 1:
# Create dockerpath
DOCKERUSER=lukasriegerdev
TAG=pricepredictor
DOCKERPATH=$DOCKERUSER/$TAG

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $DOCKERPATH"

# Step 3:
# Push image to a docker repository
docker login --username=$DOCKERUSER
docker tag $TAG $DOCKERPATH
docker push $DOCKERPATH
