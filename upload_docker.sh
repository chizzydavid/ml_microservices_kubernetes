#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath='chizzydavid/app'

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u 'chizzydavid'
docker tag app:latest $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
