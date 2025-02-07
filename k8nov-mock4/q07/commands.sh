# Label the worker node
kubectl label nodes <worker-node-name> team=devops

# Create the namespace qq2 if it doesn't exist
kubectl create namespace qq2 --dry-run=client -o yaml | kubectl apply -f -

# Apply the deployment configuration
kubectl apply -f 7.yaml