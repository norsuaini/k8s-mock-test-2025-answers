kubectl create ns qq2
kubectl apply -f 2.yaml
kubectl scale deployment lab-deployment --replicas=4 -n qq2