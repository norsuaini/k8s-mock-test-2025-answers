# Create the namespace if it doesn't exist
kubectl create ns prod

# Apply the deployment and service
kubectl apply -f app01-deployment.yaml

# Get the details of the service to find the NodePort
kubectl get svc app01-svc -n prod