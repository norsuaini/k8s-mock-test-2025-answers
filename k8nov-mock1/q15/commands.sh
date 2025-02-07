# Create the namespace if it doesn't exist
kubectl create ns qq3

# Apply the initial deployment
kubectl apply -f apache-deployment.yaml

# Update the deployment to use the httpd:bookworm image
kubectl set image deployment/apache-deployment apache=httpd:bookworm -n qq3

# Print the change
kubectl describe deployment/apache-deployment -n qq3