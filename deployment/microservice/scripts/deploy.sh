#!/bin/bash

# deploy.sh - Script to deploy the microservice using Helm

# Variables
NAMESPACE="default"
RELEASE_NAME="my-sample-service"
CHART_PATH="../microservice-deployment/charts/my-sample-service"
VALUES_FILE="../microservice-deployment/charts/my-sample-service/values.yaml"

# Check if the namespace exists; if not, create it
kubectl get namespace $NAMESPACE >/dev/null 2>&1 || kubectl create namespace $NAMESPACE

# Deploy the microservice using Helm
echo "Deploying the microservice using Helm..."
helm upgrade --install $RELEASE_NAME $CHART_PATH -f $VALUES_FILE --namespace $NAMESPACE

# Check the status of the deployment
echo "Checking the status of the deployment..."
kubectl rollout status deployment/$RELEASE_NAME --namespace $NAMESPACE

echo "Deployment completed successfully!"
