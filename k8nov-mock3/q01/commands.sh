
kubectl config set-credentials dev-user --token=<token>
kubectl config set-context dev-user-context --cluster=<cluster-name> --namespace=development --user=dev-user
kubectl config use-context dev-user-context

kubectl get pods

kubectl run test-pod --image=nginx