kubectl apply -f 14.yaml

kubectl get pods -n production -l app=web-app
kubectl get svc -n production web-service

kubectl port-forward svc/web-service 8080:80 -n production