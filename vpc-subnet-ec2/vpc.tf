provider "aws" {
    region  = var.aws_region
    access_key = "your-iam-user-access-key"
    secret_key = "your-iam-user-secret-key"
}

#create_a_vpc
resource "aws_vpc" "dev-vpc" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
  tags = {
    Name = "dev-vpc"
  }
}

output "vpc_id" {
    value = aws_vpc.dev-vpc.id
}

#create a private subnet for aws using the vpc_id
resource "aws_subnet" "dev-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "192.168.0.0/20"
  availability_zone = "us-east-2a"
  tags = {
    Name = "dev-subnet-1"
  }
}

output "subnet_id" {
    value = aws_subnet.dev-subnet.id
}
