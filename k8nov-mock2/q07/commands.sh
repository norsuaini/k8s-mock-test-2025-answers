kubectl create namespace prod
kubectl apply -f deployment.yaml
kubectl get svc app01-svc -n prod