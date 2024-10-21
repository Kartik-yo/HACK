#!/bin/bash

# deploy.sh - Script to deploy the microservice using Helm

# Variables
NAMESPACE="default"
RELEASE_NAME="my-sample-service"
CHART_PATH="../microservice-deployment/charts/my-sample-service"
VALUES_FILE="../microservice-deployment/charts/my-sample-service/values.yaml"
LOG_FILE="../logs/deployment-logs.log"

# Ensure the /logs directory exists
mkdir -p ../logs

# Check if the log file exists, if not, create it
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
fi

# Deploy the microservice using Helm and log the output
echo "Deploying the microservice using Helm..." | tee -a $LOG_FILE
helm upgrade --install $RELEASE_NAME $CHART_PATH -f $VALUES_FILE --namespace $NAMESPACE 2>&1 | tee -a $LOG_FILE

# Check the status of the deployment
echo "Checking the status of the deployment..." | tee -a $LOG_FILE
kubectl rollout status deployment/$RELEASE_NAME --namespace $NAMESPACE 2>&1 | tee -a $LOG_FILE

echo "Deployment completed successfully!" | tee -a $LOG_FILE
