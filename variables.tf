variable "vpc_id" {
  type = string
  description = "VPC that will be used by terraform, this VPC is called via data module, terraform will not attempt to manage the existence of the VPC"
}

variable "subnet_tags" {
  type = list(string)
  description = "List of Subnet Name tags, these subnets should exist in the provided VPC and there need to be a minimum of two in different availability zones."
}