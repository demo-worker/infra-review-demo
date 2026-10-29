# demo-app infrastructure

Terraform for the demo-app production environment on AWS.

## Layout

| File | Purpose |
|---|---|
| `versions.tf` | Terraform and provider versions |
| `providers.tf` | AWS provider and default tags |
| `variables.tf` | Shared inputs |
| `logs.tf` | Access-log bucket |

## Usage

```
terraform init
terraform plan
```

All changes go through a pull request and need one approving review before `terraform apply`.
