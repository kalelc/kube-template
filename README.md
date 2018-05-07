# Kube-Templates

This is a project using existent docker's images to run through Kubernetes. It uses the same images that https://github.com/kalelc/dockerize-rails-projects.

### Build deployments

Nginx: `kubectl apply -f deployments/frontend.yaml`

App: `kubectl apply -f deployments/backend-socket.yaml`

### Build Volumes

App: `kubectl apply -f volumes/app.yaml`

### Build Services

Frontend: `kubectl apply -f services/frontend.yaml`

### Access

`http://localhost`
