#!/bin/sh

echo "\n📦 Deploying Backing services and Kubernetes cluster...\n"

cd ./polar-deployment/kubernetes/platform/development
chmod +x create-cluster.sh
sh create-cluster.sh

echo "\n📦 Deploying Micro-services to Kubernetes and creating pods...\n"
cd ..
cd ..
cd ./applications/development
tilt up

echo "\n📦 Change directory back to project base directory...\n"
cd ..
cd ..
