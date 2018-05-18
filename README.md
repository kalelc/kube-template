# Kube-Templates

This is a project using existent docker's images to run through Kubernetes. It uses the same images that https://github.com/kalelc/dockerize-rails-projects.

## Build Application

`sh deploy.sh`

## Delete Deployments, services and pvc

`sh remove.sh`

### Configure to use on production

For uses in production is necesary:

- Change puma's image using tag `production` in `deploments/backend.yaml`
- Create db on puma's container, Example: `kubectl exec -it backend-xxxx-yyyy -c puma bundle exec rake db:create db:migrate`
- Precompile assets on puma's container, Example: `kubectl exec -it backend-xxxx-yyyy -c puma bundle exec rake assets:precompile`


## Access

`http://localhost`
