kubectl apply -f 16.yaml

kubectl get pods -n storage-test -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{range .spec.containers[*].volumeMounts[*]}{.mountPath}{"\n"}{end}{end}'