kubectl apply -f 7.yaml
kubectl get svc app01-svc -n prod

curl http://<Node-IP>:<NodePort>