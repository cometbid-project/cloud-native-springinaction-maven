#!/bin/sh

echo "\n📦 Stop all container services...\n"

cd ./polar-deployment/docker
docker-compose down

echo "\n📦 Change directory to project base directory...\n"
cd ..
cd ..