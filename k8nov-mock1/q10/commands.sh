# Get the pods in the busybox namespace
kubectl get pods -n busybox

# Get the logs of the busybox pod (replace <pod-name> with the actual pod name)
kubectl logs <pod-name> -n busybox