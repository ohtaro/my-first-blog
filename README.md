## prodcution
Create global static IP
```
$ gcloud compute addresses create my-first-blog --global
```

Deploy k8s resources on production k8s
```
$ skaffold run -p prod
```
