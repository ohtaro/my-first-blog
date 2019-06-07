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

Deny All

```
$ gcloud compute security-policies rules update 2147483647 \
    --security-policy blog-security-policy \
    --action "deny-403"
```

Create Cloud Armer Security Policy Rule

```
$ gcloud beta compute security-policies rules create 1000 \
    --security-policy blog-security-policy \
    --description "Allow traffic from 153.156.44.170/32." \
    --src-ip-ranges "153.156.44.170/32" \
    --action "allow"
```

Deploy k8s resources on production k8s
```
$ skaffold run -p prod
```
