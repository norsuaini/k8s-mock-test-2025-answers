# Create the namespace if it doesn't exist
kubectl create ns programming

# Apply the deployment and service
kubectl apply -f python-deployment.yaml