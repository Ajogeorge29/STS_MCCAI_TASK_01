#!/bin/bash
# Build the Docker image for STSR Task 2

IMAGE_NAME="dicemed"

echo "Building Docker image: $IMAGE_NAME ..."
docker build -t $IMAGE_NAME .
