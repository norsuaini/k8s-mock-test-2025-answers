kubectl apply -f 17.yaml


kubectl get pods -n staging -l app=nodeport-demo
kubectl get svc nodeport-service -n staging
curl http://<Node-IP>:30000