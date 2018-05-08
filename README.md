# Kube-Templates

This is a project using existent docker's images to run through Kubernetes. It uses the same images that https://github.com/kalelc/dockerize-rails-projects.

## Build Application

### With separate files

`kubectl apply -f deployments/backend.yaml`: Create backend's deployment.

`kubectl apply -f services/backend.yaml`: Expose backend using service.

`kubectl apply -f deployments/mysql.yaml`: Create mysql's deployment.

`kubectl apply -f services/mysql.yaml`: Expose mysql using service.

`kubectl apply -f volumes/mysql.yaml`: Create volume to persist mysql data.

### With Script

`sh deploy.sh`

## Access

`http://localhost`
