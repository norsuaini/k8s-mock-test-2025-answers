# Create the namespace qq5 if it doesn't exist
kubectl create namespace qq5 --dry-run=client -o yaml | kubectl apply -f -

# Apply the deployment and service configurations
kubectl apply -f 10.yaml