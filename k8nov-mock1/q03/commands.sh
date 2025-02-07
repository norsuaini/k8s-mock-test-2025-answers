# Create the namespace if it doesn't exist
kubectl create ns qq3

# Apply the initial deployment
kubectl apply -f nginx-deployment.yaml

# Update the deployment to use the nginx:alpine image
kubectl set image deployment/nginx-deployment nginx=nginx:alpine -n qq3