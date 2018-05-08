# Kube-Templates

This is a project using existent docker's images to run through Kubernetes. It uses the same images that https://github.com/kalelc/dockerize-rails-projects.

## Build Application

### With separate files

`kubectl apply -f volumes/app.yaml`: Create volume to persist logs and other stuff about app.

`kubectl apply -f deployments/backend.yaml`: Create backend's deployment.

`kubectl apply -f services/backend.yaml`: Expose backend using service.

`kubectl apply -f deployments/mysql.yaml`: Create mysql's deployment.

`kubectl apply -f services/mysql.yaml`: Expose mysql using service.

`kubectl apply -f volumes/mysql.yaml`: Create volume to persist mysql data.

### With Script

`sh deploy.sh`

### Configure to use on production

For uses in production is necesary:

- Change puma's image using tag `production` in `deploments/backend.yaml`
- Create db on puma's container, Example: `kubectl exec -it backend-xxxx-yyyy -c puma bundle exec rake db:create db:migrate`
- Precompile assets on puma's container, Example: `kubectl exec -it backend-xxxx-yyyy -c puma bundle exec rake assets:precompile`


## Access

`http://localhost`
