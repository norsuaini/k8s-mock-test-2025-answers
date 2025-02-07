# Create the namespace if it doesn't exist
kubectl create ns ca1

# Apply the deployment and service
kubectl apply -f web-deployment.yaml