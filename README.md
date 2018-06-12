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

## Using AWS

### Creating volumes

- Create EBS on AWS:

`aws ec2 create-volume --availability-zone=eu-west-1a --size=10 --volume-type=gp2`

Example EBS created:

```
{
    "AvailabilityZone": "us-west-2a",
    "Tags": [],
    "Encrypted": false,
    "VolumeType": "gp2",
    "VolumeId": "vol-f8ec976ec67",
    "State": "creating",
    "Iops": 100,
    "SnapshotId": "",
    "CreateTime": "2018-06-12T13:06:14.000Z",
    "Size": 10
}
```


- Create Persistent Volume EBS Resource

`apply -f volume/aws/app-pv1.yaml`

- Create App Volume with `StorageClass` using Elastic Block Storage(EBS).

`apply -f volumes/aws/app-pvc.yaml`


### Getting StorageClass Volume

`kubectl get storageclass`
