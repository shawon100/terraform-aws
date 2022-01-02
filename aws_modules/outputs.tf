output "vpc_id" {
    value = aws_vpc.vpc.id
}

output "subnet_id" {
    value = aws_subnet.subnet.id
}


output "ec2_instance_id" {
    value = aws_instance.ec2_instance.id
}