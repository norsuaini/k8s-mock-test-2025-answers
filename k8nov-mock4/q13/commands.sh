kubectl create namespace qq7 --dry-run=client -o yaml | kubectl apply -f -

kubectl apply -f 13.yaml

kubectl get pods -n qq7
kubectl describe pod <pod-name> -n qq7
kubectl logs <pod-name> -n qq7