kubectl apply -f 13.yaml

kubectl get pods -n kube-system | grep etcd

ETCD_POD=$(kubectl get pods -n kube-system -l component=etcd -o jsonpath="{.items[0].metadata.name}")
kubectl exec -n kube-system $ETCD_POD -- etcdctl snapshot save /tmp/snapshot.db
kubectl cp kube-system/$ETCD_POD:/tmp/snapshot.db ./snapshot.db

kubectl delete deployment nginx -n default

kubectl cp ./snapshot.db kube-system/$ETCD_POD:/tmp/snapshot.db

kubectl exec -n kube-system $ETCD_POD -- etcdctl snapshot restore /tmp/snapshot.db --data-dir /var/lib/etcd

kubectl delete pod $ETCD_POD -n kube-system