# terraform-aws-select-vpc-subnets

Terraform module that returns data about a VPC, this data can be used to build out other aws@emory modules.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| subnet\_tags | List of Subnet Name tags, these subnets should exist in the provided VPC and there need to be a minimum of two in different availability zones. | `list(string)` | n/a | yes |
| vpc\_id | VPC that will be used by terraform, this VPC is called via data module, terraform will not attempt to manage the existence of the VPC | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| vpc\_cidr\_block | Cidr block of the VPC |
| vpc\_random\_subnet | Random single subnet selected from the list of subnet IDs that match the Subnet IDs input variable, useful for assigning EC2s to. |
| vpc\_subnet\_arns | List of subnet arns that match the Subnet IDs input variable |
| vpc\_subnet\_ids | List of subnet IDs that match the Subnet IDs input variable |
