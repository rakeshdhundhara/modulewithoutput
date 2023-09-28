# resource "aws_vpc" "main" {
#   cidr_block= "172.31.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "rakesh"
#   }
# }
# resource "aws_subnet" "main" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "172.31.0.0/24"
#   availability_zone = "ap-south-1a"
  
#   tags = {
#     Name = "Main"
#   }
# }
 resource "aws_vpc" "main" {

 cidr_block = "172.31.0.0/16"

 tags = var.tags

#  tags = {

#    Name = "Project VPC"

#  }

}

resource "aws_subnet" "private_subnets" {

 count             = length(var.private_subnet_cidrs)

 vpc_id            = aws_vpc.main.id

 cidr_block        = element(var.private_subnet_cidrs, count.index)

 availability_zone = element(var.azs, count.index)

 

#  tags = {

#    Name = "Private Subnet ${count.index + 1}"

#  }
tags = var.tags
}