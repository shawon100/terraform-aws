#create a ec2 instance with existing vpc subnet
resource "aws_instance" "dev-instance" {
  ami           = "ami-002068ed284fb165b"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.dev-public-subnet.id
  vpc_security_group_ids = [ aws_security_group.dev-pub-sg.id ]
  key_name = "dev-server"
  tags = {
    Name = "dev-instance"
  }
  connection {    
      type     = "ssh"    
       user     = "ec2-user"    
       private_key = file("./dev-server.pem")    
       host     = self.public_ip  
  }
  provisioner "remote-exec" {    
    inline = [      
      "sudo amazon-linux-extras enable nginx1", 
      "sudo yum install -y nginx",
      "sudo service nginx restart", 
      "sudo service nginx status",
      ]  
  }
}

#terraform destroy -target RESOURCE_TYPE.NAME