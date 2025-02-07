kubectl apply -f apache-deployment.yaml
kubectl set image deployment/apache-deployment apache=httpd:bookworm -n qq3
kubectl rollout undo deployment/apache-deployment -n qq3