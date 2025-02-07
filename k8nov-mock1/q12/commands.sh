# Create the namespace if it doesn't exist
kubectl create ns qq3

# Apply the pod and service
kubectl apply -f nginx-pod-service.yaml