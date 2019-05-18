## prodcution

### Stpes
* Create Static IP
* Create DNS Record
* Create Cloud Armer Security Policy
* Create Cooud Armer Security Policy Rule
* Deploy Apps on GKE

### How to

Create global static IP

```
$ gcloud compute addresses create blog --global
```

Create DNS records

```
$ gcloud dns ...
```

Create Cloud Armer Security Policy

```
$ gcloud beta compute security-policies create blog-security-policy \
    --description "policy for Cloud Armor"
```

Create Cloud Armer Security Policy Rule

```
$ gcloud beta compute security-policies rules create 1000 \
    --security-policy blog-security-policy \
    --description "Deny traffic from 122.249.136.225/32." \
    --src-ip-ranges "122.249.136.225/32" \
    --action "deny-404"
```

Deploy k8s resources on production k8s
```
$ skaffold run -p prod
```
