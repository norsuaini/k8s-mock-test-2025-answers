# Create the namespace qq4 if it doesn't exist
kubectl create namespace qq4 --dry-run=client -o yaml | kubectl apply -f -

# Apply the deployment configuration
kubectl apply -f 9.yaml

# Update the image to httpd:bookworm
kubectl set image deployment/frontend frontend=httpd:bookworm -n qq4

# Create a backup in etcd
ETCDCTL_API=3 etcdctl snapshot save /path/to/backup.db --endpoints=<etcd-endpoint> --cacert=<ca-cert> --cert=<cert> --key=<key>

# Roll back the deployment to httpd:latest
kubectl rollout undo deployment/frontend -n qq4

# Restore the etcd backup to return to httpd:bookworm
ETCDCTL_API=3 etcdctl snapshot restore /path/to/backup.db --data-dir=/path/to/data-dir