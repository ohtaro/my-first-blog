## prodcution
Create global static IP & certificates for ingress on gke
```
$ gcloud compute addresses create my-first-blog --global
$ gcloud beta compute ssl-certificates create my-first-blog --domains my-first-blog.dev.3kami.com
```

Deploy k8s resources on production k8s
```
$ skaffold run -p prod
```
