# terraform-docker-demo

Simple deploy mysql on docker by terraform

# How To

1. init terraform
```bash
terraform init
```
2. plan
```
terrafrom plan
```
3. apply terraform
```
terraform apply
```
4. show container and db info
```
terraform output --json
```

# Environment Variables
```TF_VAR_DB_NAME```

export to set the database name

[@dwsclass](https://github.com/dwsclass/) dws-ops-002-terraform
