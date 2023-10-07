#!/bin/sh

echo "\n📦 Apply nginx-ingress object to EdgeService...\n"
cd ./edge-service
kubectl apply -f k8s/nginx
kubectl get ingress

echo "\n📦 Exposing Edge Service as localhost: 127.0.0.1 !!...\n"

minikube tunnel --profile polar

echo "\n📦 Change directory to project base directory, finally...\n"

cd ..
