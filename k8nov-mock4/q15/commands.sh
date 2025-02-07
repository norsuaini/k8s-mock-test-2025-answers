kubectl create namespace production --dry-run=client -o yaml | kubectl apply -f -
kubectl apply -f 15.yaml