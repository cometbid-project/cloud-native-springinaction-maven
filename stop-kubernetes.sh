#!/bin/sh

echo "\n📦 Undeploying Micro-services on Kubernetes and deleting pods...\n"

cd ./polar-deployment/kubernetes/applications/development
tilt down

echo "\n📦 Deploying Backing services and Kubernetes cluster...\n"

cd ..
cd ..

cd ./platform/development
chmod +x destroy-cluster.sh
sh destroy-cluster.sh

echo "\n📦 Change directory to project base directory...\n"
cd ..
cd ..
cd ..
cd ..




