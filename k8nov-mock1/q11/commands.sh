# Create the namespace if it doesn't exist
kubectl create ns database

# Apply the deployment
kubectl apply -f db-deployment.yaml

# Get the pods in the database namespace
kubectl get pods -n database

# Get the logs of the db pod (replace <pod-name> with the actual pod name)
# kubectl logs <pod-name> -n database