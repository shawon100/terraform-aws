
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
    default = "10.0.0.0/20"
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

variable "key_path" {
  default = "./server.pem"
  description = "Path to the SSH key to use for the instance"
  type = string
}
  
variable "ec2_tag" {
    default = {
        Name="dev-ec2"
    }
    description = "Tag to apply to the instance"
    type = map(string)
  
}

variable "key_name" {
    default = "server"
    description = "Name of an existing EC2 KeyPair to enable SSH access to the instance"
    type = string
}

variable "sg_name" {
    default = "dev-pub-sg"
    description = "Name of an existing EC2 Security Group to allow SSH access to the instance"
    type = string
}

variable "sg_tag" {
    default = {
        Name="dev-pub-sg"
    }
    description = "Tag to apply to the instance"
    type = map(string)
  
}

variable "ec2_user" {
    default = "ec2user"
    type = string
    description = "user name for ec2 instance"
}

variable "gateway_tag" {
    default = {
        Name="gateway"
    }
    description = "Tag to apply to the internet gateway"
    type = map(string)
  
}

variable "route_tag" {
    default = {
        Name="route-table"
    }
    description = "Tag to apply to the route table"
    type = map(string)
  
}