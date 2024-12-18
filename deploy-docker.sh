#!/bin/bash

#docker buildx create --name multiarch --driver docker-container --use
#./deploy-docker.sh --no-cache

REGISTRY="sgtcoder"
PROJECT_NAME="sail-coder"
PROJECT_TAG="8.3"

docker buildx build --push --platform linux/amd64,linux/arm64 --build-arg WWWGROUP=1000 $1 -t $REGISTRY/$PROJECT_NAME:$PROJECT_TAG -t $REGISTRY/$PROJECT_NAME:latest . || exit 1

#docker push --all-tags $REGISTRY/$PROJECT_NAME
