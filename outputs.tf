output "vpc_cidr_block" {
  value = data.aws_vpc.selected.cidr_block
  description = "Cidr block of the VPC"
}

output "vpc_subnet_arns" {
   value =  [for s in data.aws_subnet.selected : s.arn ]
   description = "List of subnet arns that match the Subnet IDs input variable"
}

output "vpc_subnet_ids" {
  value = [for s in data.aws_subnet.selected : s.id ]
  description = "List of subnet IDs that match the Subnet IDs input variable"
}

output "vpc_random_subnet" {
  value = random_shuffle.random_subnet.result.0
  description = "Random single subnet selected from the list of subnet IDs that match the Subnet IDs input variable, useful for assigning EC2s to."
}