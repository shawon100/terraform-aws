#create a module
module "vpc_ec2" {
    source = "../aws_modules/vpc_ec2"
    subnet_cidr = "10.0.0.0/20"
    ec2_type = "t2.micro"
    vpc_tag = {
        Name = "stage-vpc"
    }
    subnet_tag = {
        Name = "stage-subnet"
    }
    ec2_tag={
       Name = "stage-ec2"
   }
}
