#!/bin/sh

echo "\n📦 Building image of Config Service...\n"

cd ./config-service 
mvn spring-boot:build-image

echo "\n📦 Building image of Edge Service...\n"

cd ..
cd ./edge-service 
mvn spring-boot:build-image

echo "\n📦 Building image of Order Service...\n"

cd ..
cd ./order-service 
mvn spring-boot:build-image

echo "\n📦 Building image of Catalog Service...\n"

cd ..
cd ./catalog-service
mvn spring-boot:build-image

echo "\n📦 Run docker-compose to start the containers...\n"

cd ..
cd ./polar-deployment/docker
docker-compose up -d

echo "\n📦 Change directory to project base directory...\n"
cd ..
cd ..