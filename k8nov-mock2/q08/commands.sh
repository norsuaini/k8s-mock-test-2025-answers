kubectl create namespace ca2

kubectl apply -f deployment.yaml

kubectl run -n ca2 -i --tty --restart=Never --rm netutil --image cloudacademydevops/networkutils:v2 -- curl -I cloud-app-svc