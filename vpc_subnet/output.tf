# output "vpc_id" {
#   description = "ID of the VPC"
#   value       = aws_vpc.my_vpc.id
# }

# output "subnet_id" {
#   description = "ID of the subnet"
#   value    = aws_subnet.main.id
# }
output "subnet_id" {
  description = "ID of the subnet"
  value    =aws_subnet.private_subnets[0].id
}