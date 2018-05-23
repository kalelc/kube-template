#/bin/bash

kubectl delete deployment puma
kubectl delete deployment mysql
kubectl delete service puma
kubectl delete pvc app-pv-claim
