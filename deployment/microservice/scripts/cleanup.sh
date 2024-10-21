#!/bin/bash

# cleanup.sh - Script to clean up the microservice deployment and resources

# Variables
NAMESPACE="default"
RELEASE_NAME="my-sample-service"

# Delete the Helm release
echo "Deleting the Helm release..."
helm uninstall $RELEASE_NAME --namespace $NAMESPACE

# Delete the namespace (optional)
# Uncomment the following line if you want to delete the entire namespace
# kubectl delete namespace $NAMESPACE

# Clean up any remaining resources
echo "Cleaning up any remaining resources..."
kubectl delete all -l app=my-sample-service -n $NAMESPACE

echo "Cleanup completed successfully!"
