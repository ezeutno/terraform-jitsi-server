# Terraform Jitsi Server
This is for creating a server via terraform.
It use DigitalOcean & Cloudflare as it's provider.

## It uses
- https://github.com/jitsi/docker-jitsi-meet
- https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs
- https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs

## How to start it
### Applying terraform
1. Setup tfvars
```
cp terraform.tfvars.example terraform.tfvars
```
2. Initilized the terraform
```
terraform init
```
3. Plan terraform
```
terraform plan
```
4. Applying terraform
```
terraform apply
```

### Destroying terraform
```
terraform destroy
```

## Things to be done
1. Generate a key
```
ssh-keygen
```
2. Upload public key to digital ocean

## Architecture Design
- Docker (Install docker, docker-compose & any docker related)
- Clone the Jitsi Docker Meet from Jitsi Repo

## Why this design exist
It is to create a serverless design based on request.
</br>So, I could reduce the cost of server when it not use.
</br>I only need a rasberry pie / a small computer that connected on a home network to apply it automaticly.