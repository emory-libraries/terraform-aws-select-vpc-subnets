output "vpc_cidr_block" {
  value = data.aws_vpc.selected.cidr_block
}

output "vpc_subnet_arns" {
   value =  [for s in data.aws_subnet.selected : s.arn ]
}