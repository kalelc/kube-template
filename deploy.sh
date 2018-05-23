#/bin/bash

kubectl apply -f volumes/app.yaml

kubectl apply -f deployments/puma.yaml
kubectl apply -f services/puma.yaml

kubectl apply -f deployments/mysql.yaml
kubectl apply -f services/mysql.yaml
kubectl apply -f volumes/mysql.yaml
