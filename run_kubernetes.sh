#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=dongpv/udacity-p4:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f k8s.yml

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
# kubectl port-forward pod/app $PORT
kubectl port-forward pod/udacity-p4 8000:80