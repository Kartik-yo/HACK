#!/bin/bash

# debug.sh - Script to debug the microservice deployment

# Variables
NAMESPACE="default"
POD_NAME=$(kubectl get pods -n $NAMESPACE -l app=my-sample-service -o jsonpath="{.items[0].metadata.name}")

# Display the pod status
echo "Checking pod status..."
kubectl get pods -n $NAMESPACE -l app=my-sample-service

# Display the logs of the microservice pod
echo "Displaying logs of the pod: $POD_NAME"
kubectl logs $POD_NAME -n $NAMESPACE

# Describe the deployment for more details
echo "Describing the deployment for more information..."
kubectl describe deployment my-sample-service -n $NAMESPACE

echo "Debugging completed!"
