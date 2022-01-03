#create a ec2 instance with existing vpc subnet
resource "aws_instance" "instance_ec2" {
  ami           = "ami-002068ed284fb165b"
  instance_type = var.ec2_type
  subnet_id     = aws_subnet.public-subnet.id
  vpc_security_group_ids = [ aws_security_group.pub-sg.id ]
  key_name = var.key_name
  tags = var.ec2_tag
  connection {    
      type     = "ssh"    
       user     = var.ec2_user    
       private_key = file("${var.key_path}")    
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