## Apply env variables and secrets
kubectl apply -f ./env/aws-secret.yaml
kubectl apply -f ./env/env-secret.yaml
kubectl apply -f ./env/env-configmap.yaml

## Deployments - Double check the Dockerhub image name and version in the deployment files

kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-feed-service.yaml
kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-user-service.yaml 
kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml



kubectl apply -f frontend-deployment.yaml 
kubectl apply -f frontend-service.yaml 

kubectl get deployment

kubectl expose deployment frontend --type=LoadBalancer --name=public-frontend
kubectl expose deployment reverseproxy --type=LoadBalancer --name=public-reverseproxy --port=8080

kubectl get services
kubectl get pods

kubectl autoscale deployment backend-user --cpu-percent=70 --min=3 --max=5