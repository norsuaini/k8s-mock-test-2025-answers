# Create the namespace if it doesn't exist
kubectl create ns ca2

# Apply the deployment and service
kubectl apply -f cloud-app01-deployment.yaml

# Test HTTP connectivity through the new service
kubectl run -n ca2 -i --tty --restart=Never --rm netutil --image cloudacademydevops/networkutils:v2 -- curl -I cloud-app-svc