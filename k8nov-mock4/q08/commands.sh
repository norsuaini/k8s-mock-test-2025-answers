# Create the namespace examinee if it doesn't exist
kubectl create namespace examinee --dry-run=client -o yaml | kubectl apply -f -

# Apply the Role, RoleBinding, and Deployment
kubectl apply -f 8.yaml
