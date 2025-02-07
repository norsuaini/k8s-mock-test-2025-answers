# Create the namespace qq8 if it doesn't exist
kubectl create namespace qq8 --dry-run=client -o yaml | kubectl apply -f -

# Apply the deployment and service configurations
kubectl apply -f 14.yaml