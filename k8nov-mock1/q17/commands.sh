# Apply the pgAdmin deployment and service
kubectl apply -f pgadmin-deployment.yaml

# Port forward to access pgAdmin (optional, for local access)
# kubectl port-forward svc/pgadmin-service 8080:80