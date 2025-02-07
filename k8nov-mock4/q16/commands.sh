# Create the namespace qq9 if it doesn't exist
kubectl create namespace qq9 --dry-run=client -o yaml | kubectl apply -f -

# Apply the pod configuration
kubectl apply -f 16.yaml

# Verify the pod is running and take a screenshot
kubectl get pods -n qq9
kubectl logs -f alpine -n qq9