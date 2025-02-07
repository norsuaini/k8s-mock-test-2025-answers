# Create the namespace qq6 if it doesn't exist
kubectl create namespace qq6 --dry-run=client -o yaml | kubectl apply -f -

# Apply the deployment configuration
kubectl apply -f 11.yaml