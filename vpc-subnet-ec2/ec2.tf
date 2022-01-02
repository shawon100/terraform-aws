
#create a ec2 instance with existing vpc subnet
resource "aws_instance" "dev-instance" {
  ami           = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.dev-subnet.id
  tags = {
    Name = "dev-instance"
  }
}
