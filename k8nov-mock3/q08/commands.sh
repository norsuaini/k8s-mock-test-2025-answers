kubectl apply -f 8.yaml


kubectl get pv pv-data
kubectl get pvc pvc-data

kubectl get pods -l app=web-stateful

kubectl describe pod web-stateful-0
kubectl describe pod web-stateful-1
kubectl describe pod web-stateful-2