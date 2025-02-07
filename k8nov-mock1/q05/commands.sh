# Create the namespace if it doesn't exist
kubectl create ns qq3

# Apply the pod configuration
kubectl apply -f limit-pod.yaml