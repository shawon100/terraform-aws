
#create_a_vpc
resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
  tags = var.vpc_tag
}

output "vpc_id" {
    value = aws_vpc.vpc.id
}

#create a public subnet
resource "aws_subnet" "public-subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = var.subnet_cidr
  availability_zone = var.subnet_az
  map_public_ip_on_launch = true
  tags = var.subnet_tag
}

output "public_subnet_id" {
    value = aws_subnet.public-subnet.id
}
