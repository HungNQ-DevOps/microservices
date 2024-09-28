kubectl delete deployment frontend
kubectl delete service frontend
kubectl delete service public-frontend

kubectl delete deployment backend-user
kubectl delete services backend-user

kubectl delete deployment backend-feed
kubectl delete services backend-feed

kubectl delete deployment reverseproxy
kubectl delete services reverseproxy
kubectl delete services public-reverseproxy

kubectl delete hpa backend-user