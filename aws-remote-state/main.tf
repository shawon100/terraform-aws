#create_a_vpc
resource "aws_vpc" "test-vpc" {
  cidr_block       = "10.8.0.0/16"
  instance_tenancy = "default"
  enable_dns_hostnames = "true"
  tags = {
    Name = "test-vpc-tf"
  }
}

output "vpc_id" {
    value = aws_vpc.test-vpc.id
}

#create a private subnet for aws using the vpc_id
resource "aws_subnet" "test-subnet" {
  vpc_id            = aws_vpc.test-vpc.id
  cidr_block        = "10.8.0.0/20"
  availability_zone = "us-east-2a"
  tags = {
    Name = "test-subnet-1"
  }
}

output "subnet_id" {
    value = aws_subnet.test-subnet.id
}
