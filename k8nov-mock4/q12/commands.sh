# Create the namespace shared if it doesn't exist
kubectl create namespace shared --dry-run=client -o yaml | kubectl apply -f -

# Apply the PersistentVolume and PersistentVolumeClaim
kubectl apply -f 12.yaml