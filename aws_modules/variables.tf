
variable "vpc_cidr" {
    default = "10.0.0.0/16" 
    description = "CIDR block for VPC"
    type = string 
}

variable "vpc_tag" {
    default = {
        Name="dev-vpc"
    }
    description = "Tag for VPC"
    type = map(string)
}

variable "subnet_cidr" {
    default = "10.0.0.0/24"
    description = "CIDR block for VPC subnet"
    type = string
  
}

variable "subnet_az" {
    default = "us-east-2a"
    description = "AZ for VPC subnet"
    type = string
  
}

variable "subnet_tag" {
    default = {
        Name="dev-subnet"
    }
    description = "Tag for VPC subnet"
    type = map(string)
  
}

variable "ec2_type" {
  default = "t2.micro"
  description = "EC2 instance type to use for the instance"
  type = string
} 

variable "ec2_tag" {
    default = {
        Name="dev-ec2"
    }
    description = "Tag to apply to the instance"
    type = map(string)
  
}