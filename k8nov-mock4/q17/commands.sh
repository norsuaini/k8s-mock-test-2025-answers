# Create the namespace qq10 if it doesn't exist
kubectl create namespace qq10 --dry-run=client -o yaml | kubectl apply -f -

# Apply the deployment and service configurations
kubectl apply -f 17.yaml