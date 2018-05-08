#/bin/bash

kubectl apply -f volumes/app.yaml

kubectl apply -f deployments/backend.yaml
kubectl apply -f services/backend.yaml

kubectl apply -f deployments/mysql.yaml
kubectl apply -f services/mysql.yaml
kubectl apply -f volumes/mysql.yaml
