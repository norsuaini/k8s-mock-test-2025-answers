kubectl apply -f nginx-deployment.yaml


kubectl set image deployment/nginx-deployment nginx=nginx:alpine -n qq3