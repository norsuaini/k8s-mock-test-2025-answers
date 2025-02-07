kubectl scale statefulset mysql-statefulset --replicas=6 -n datastorage

kubectl get statefulset mysql-statefulset -n datastorage

kubectl get pods -n datastorage -l app=mysql