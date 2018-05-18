#/bin/bash

kubectl delete deployment backend
kubectl delete deployment mysql
kubectl delete service nginx
kubectl delete pvc app-pv-claim
