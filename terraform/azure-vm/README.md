# Azure VM CostGraph Test

This Terraform sample models a small non-GPU Azure Linux VM so the CostGraph GitHub Action can estimate cost from a Terraform plan before anything is deployed.

The starting SKU is `Standard_B2s` in `uksouth`. To test a cost delta, open a pull request that changes `vm_size` in `variables.tf`, for example to `Standard_D2s_v5`.

The intended workflow is plan-only:

```bash
terraform init
terraform fmt -check
terraform validate
terraform plan -out=tfplan
terraform show -json tfplan > plan.json
```

Do not run `terraform apply` for the first CostGraph test unless you explicitly want to create Azure resources.
