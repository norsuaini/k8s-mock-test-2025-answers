
# Create the namespace qq3 if it doesn't exist
kubectl create namespace qq3 --dry-run=client -o yaml | kubectl apply -f -

# Apply the pod configuration
kubectl apply -f 6.yaml