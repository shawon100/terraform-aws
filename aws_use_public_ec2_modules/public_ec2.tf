module "aws_public_ec2_modules" {
    source = "../aws_public_ec2_modules"
    vpc_cidr = "10.0.0.0/16"
    subnet_cidr = "10.0.0.0/24"
    ec2_type = "t2.micro"
    key_name = "dev-server"
    key_path = "./dev-server.pem"
    sg_name = "stage-pub-sg"
    ec2_user = "ec2-user"
    subnet_az ="us-east-2a"
    gateway_tag = {
        Name = "stage-gateway"
    }
    vpc_tag = {
        Name = "stage-vpc"
    }
    subnet_tag = {
        Name = "stage-public-subnet"
    }
    ec2_tag={
       Name = "stage-ec2"
    }
    sg_tag = {
        Name = "stage-sg"
    }


}
