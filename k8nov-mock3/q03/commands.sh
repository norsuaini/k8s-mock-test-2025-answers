# Create the qq3 namespace
kubectl create namespace qq3

# Apply the deployment manifest
kubectl apply -f 3.yaml

# Perform a rolling update to change the image to nginx:alpine
kubectl set image deployment/nginx-deployment nginx=nginx:alpine -n qq3