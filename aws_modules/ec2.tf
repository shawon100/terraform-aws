resource "aws_instance" "ec2_instance" {
  ami           = "ami-002068ed284fb165b"
  instance_type = var.ec2_type
  subnet_id     = aws_subnet.subnet.id
  tags = var.ec2_tag
}