#/bin/bash

kubectl delete deployment backend
kubectl delete deployment mysql
kubectl delete service backend
kubectl delete pvc app-pv-claim
